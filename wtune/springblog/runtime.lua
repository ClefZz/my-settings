_estimate_table_size = {}
local _estimate_table_size_t = _estimate_table_size
local _sysbench_t = sysbench

local function _update_estimate_table_size(_table_name, _original, _increment)
    local _new_size = _original + (_increment * _sysbench_t.opt.threads)
    if _new_size < 0 then
        return 0
    else
        return _new_size
    end
end

function _init_runtime_info(_tables, _get_table_size)
    for _table_name in pairs(_tables) do
        _estimate_table_size_t[_table_name] = _get_table_size(_table_name)
    end
end

function _line_inserted(_table_name, _count)
    local _original = _estimate_table_size_t[_table_name]
    _estimate_table_size_t[_table_name] = _update_estimate_table_size(_table_name, _original, _count)
end

_stmt_timing = {}
_txn_timing = {}
_stmt_params = {}
_stmt_rows = {}

local _stmt_timing_t = _stmt_timing
local _txn_timing_t = _txn_timing
local _stmt_params_t = _stmt_params
local _stmt_rows_t = _stmt_rows

function _record_timing(_type, _id, _record)
    -- potential enhancement: sampling; periodically flushing to file
    local _timing

    if _type == 0 then
        _timing = _stmt_timing_t
    elseif _type == 1 then
        _timing = _txn_timing_t
    else
        return
    end

    _record[3] = _id

    table.insert(_timing, _record)
end

function _record_params_and_result(_params, _res)
    table.insert(_stmt_params_t, _params)
    if _res ~= nil then
        table.insert(_stmt_rows_t, _res.nrows)
    else
        table.insert(_stmt_rows_t, -1)
    end
end

function _dump_records(_thread_id)
    local _file

    _file = io.open(".records/stmt." .. _thread_id, "a")
    for _idx, _rec in ipairs(_stmt_timing_t) do
        local _params = _stmt_params_t[_idx]
        local _num_rows = _stmt_rows_t[_idx]
        _file:write(string.format("%d %d %d %d %s\n", _rec[3], _rec[1], _rec[2], _num_rows, table.concat(_params, ",")))
    end
    _file:close()

    --_file = io.open(".records/txn." .. _thread_id, "a")
    --for _, _rec in ipairs(_txn_timing_t) do
    --    _file:write(string.format("%d %d %d\n", _rec[3], _rec[1], _rec[2]))
    --end
    --_file:close()
end
