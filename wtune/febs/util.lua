-- timing
local _posix_time = require("posix.time")

function _timing_start(_out)
    local _start = _posix_time.clock_gettime(1)
    _out[1] = _start.tv_sec
    _out[2] = _start.tv_nsec
end

function _timing_end(_start)
    local _end = _posix_time.clock_gettime(1)
    -- last field is for id, an optimization that pre-allocate space
    return { _end.tv_sec - _start[1], _end.tv_nsec - _start[2], -1 }
end

-- common
function table.isempty(t)
    if next(t) == nil then
        return true
    end
    return false
end

-- related to random
local _datetime_format = "'%d-%02d-%02d %02d.%02d.%02d.%d'"

function _datetime_to_str(_datetime)
    return string.format(_datetime_format, _datetime[1], _datetime[2], _datetime[3], _datetime[4], _datetime[5], _datetime[6], _datetime[7])
end

function _datetime_to_int(_datetime)
    return os.time({ year = _datetime[1], month = _datetime[2], day = _datetime[3], hour = _datetime[4], min = _datetime[5], sec = _datetime[6] })
end

function _int_to_datetime(_i)
    local _date = os.date("*t", _i)
    return { _date.year, _date.month, _date.day, _date.hour, _date.min, _date.sec, 0 }
end

function _add_seconds(_datetime, _sec)
    return _int_to_datetime(_datetime_to_int(_datetime) + _sec)
end

function _range_of(_type, _width, _precision)
    if _type == "bit" then
        return { 0, bit.lshift(1, _width - 1) }
    elseif _type == "tinyint" then
        return { 0, 127 }
    elseif _type == "smallint" then
        return { 0, 32767 }
    elseif _type == "mediumint" then
        return { 0, 8388607 }
    elseif _type == "int" or _type == "integer" or _type == "bigint" then
        return { 0, 2147483647 }
    elseif _type == "float" or _type == "decimal" or _type == "double" or _type == "numeric" then
        _width = math.min(_width - _precision, 8)
        local _limit = math.pow(10, _width) - 1
        return { 0, _limit }
    else
        return { 0, 0 }
    end
end

-- related to runtime
function _log(content)
    if sysbench.opt.verbosity ~= 0 then
        io.write(content)
    end
end

function _begin(_con, _is_multi_stmt)
    _con:query("begin")
end

function _commit(_con, _is_multi_stmt)
    _con:query("commit")
end

function _get_col_list(_table_desc)
    local _cols = {}
    for _k in pairs(_table_desc) do
        table.insert(_cols, _k)
    end
    return table.concat(_cols, ", ")
end

local _commit_f = _commit
local _begin_f = _begin
local _log_f = _log

function _loop_with_log(_con, _table, _table_size, _callback)
    _log_f("populating: " .. _table .. "\n")
    _begin_f(_con)
    for i = 1, _table_size do
        if i % 2000 == 0 and i % 10000 ~= 0 then
            _log_f(".")
        end

        if i % 10000 == 0 then
            _log_f(i)
            _commit_f(_con)
            _begin_f(_con)
        end

        _callback(i)
    end
    _commit_f(_con)
    _log_f("\ndone: " .. _table .. "\n")
end
