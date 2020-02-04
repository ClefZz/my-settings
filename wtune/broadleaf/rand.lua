require("util")
require("runtime")

-- cache global to local
local _datetime_to_int_f = _datetime_to_int
local _datetime_to_str_f = _datetime_to_str
local _int_to_datetime_f = _int_to_datetime
local _add_seconds_f = _add_seconds
local _range_of_f = _range_of
local _uniform_rand_f = sysbench.rand.uniform
local _estimate_table_size_t = _estimate_table_size
local _tid = sysbench.tid

local _datetime_start = { 2010, 1, 1, 0, 0, 0, 0 }
local _datetime_end = { 2030, 12, 31, 23, 59, 59, 999 }
local _values_of_limit = { 0, 2000, 4000, 8000 }

local function _gen_rand_datetime(_start, _end)
    local _start_time = _datetime_to_int_f(_start)
    local _end_time = _datetime_to_int_f(_end)
    local _ret = _int_to_datetime_f(_uniform_rand_f(_start_time, _end_time - 1))
    _ret[7] = _uniform_rand_f(0, 999)
    return _ret
end

local function _gen_rand_datetime_str()
    return _datetime_to_str_f(_gen_rand_datetime(_datetime_start, _datetime_end))
end

local function _gen_rand_value(_data_type)
    local _category = _data_type[1]
    local _type = _data_type[2]
    local _width = _data_type[3]
    local _precision = _data_type[4]

    if _category == "integral" then
        return _uniform_rand_f(unpack(_range_of_f(_type, _width, _precision)))
    elseif _category == "float" then
        return _uniform_rand_f(unpack(_range_of_f(_type, _width, _precision))) / 100.0
    elseif _category == "string_like" then
        if _width == -1 then
            _width = 500
        elseif _width > 1000 then
            _width = bit.rshift(_width, 1)
        end
        return "'" .. string.rep("#", _uniform_rand_f(1, _width)) .. "'"
    elseif _category == "datetime_like" then
        return _gen_rand_datetime_str()
    elseif _category == "lob" then
        return string.format("0x%x", _uniform_rand_f(1, 65536))
    else
        print("warning: unknown value type", _category, _type)
        return "NULL"
    end
end

local function _gen_line_num_dependent_value(_data_type, _line_num)
    local _category = _data_type[1]

    if _category == "integral" then
        return _line_num
    elseif _category == "float" then
        return _line_num + 0.0
    elseif _category == "string_like" then
        local _width = _data_type[3]
        local _line_num_str = "" .. _line_num
        local _rest_len = _width - _line_num_str:len()
        if _rest_len < 0 then
            return "'" .. string.rep("#", _width) .. "'"
        else
            return "'" .. string.rep("#", _line_num % _rest_len) .. _line_num_str .. "'"
        end
    elseif _category == "datetime_like" then
        return _datetime_to_str_f(_add_seconds_f(_datetime_start, _line_num))
    elseif _category == "lob" then
        return string.format("0x%x", _line_num)
    else
        print("warning: unknown value type", _category, _data_type[2])
        return "NULL"
    end
end

local function _is_line_number_dependent(_col_desc)
    return _col_desc.is_unique or _col_desc.is_primary_key or _col_desc.data_type[1] == "string_like" or not table.isempty(_col_desc.refers_to)
end

-- default generation for data population
function _gen_default_value(_table_name, _col_name, _col_desc, _line_num)
    if _col_desc.is_auto_increment then
        return "NULL"
    end

    local _data_type = _col_desc.data_type

    -- sloppy handling for foreign key
    if not table.isempty(_col_desc.refers_to) and not _col_desc.is_primary_key and not _col_desc.is_unique then
        if _line_num == 1 then
            if _col_desc.is_not_null then
                return 1
            else
                return "NULL"
            end
        end
        return _gen_line_num_dependent_value(_data_type, _line_num - 1)
    end

    if _is_line_number_dependent(_col_desc) then
        return _gen_line_num_dependent_value(_data_type, _line_num)
    else
        return _gen_rand_value(_data_type)
    end
end

-- default generation for parameter
function _gen_default_parameter(_table_name, _col_name, _col_desc, _param_desc, _guessed_data_type)
    local _sql_type = _param_desc[1]
    local _sql_clause = _param_desc[2]
    local _position = _param_desc[3]

    if _sql_clause == "limit" then
        return _values_of_limit[_uniform_rand_f(1, #_values_of_limit)]
        -- hard to determine the range, since it's based on the size of result set
    end

    if _col_desc == nil then
        return _gen_rand_value(_guessed_data_type)
    end

    if _col_desc.is_auto_increment and _sql_type == "insert" then
        return "NULL"
    end

    if not _is_line_number_dependent(_col_desc) then
        return _gen_rand_value(_col_desc.data_type)
    end

    if _sql_type == "insert" then
        -- assert _sql_clause == "values" and _position == "values"
        return _gen_line_num_dependent_value(_col_desc.data_type, _estimate_table_size_t[_table_name] + _tid + 1)
    elseif _sql_type == "update" then
        return _col_name
    else
        return _gen_line_num_dependent_value(_col_desc.data_type, _uniform_rand_f(1, _estimate_table_size_t[_table_name]))
    end
end
