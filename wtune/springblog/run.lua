require("util")
require("schema")
require("config")
require("workload")
require("runtime")
local _inspect = require("inspect")

-- cache global to local
local _gen_value_f = gen_value
local _rand_uniform = sysbench.rand.uniform
local _traces_dist_t = _traces_dist

local _picked_traces = {}
local _drv
local _con

local function _init_conn()
    _drv = sysbench.sql.driver()
    _con = _drv:connect()
    _con:query("SET FOREIGN_KEY_CHECKS=0")
end

local function _init_picked_apis()
    for _, _trace in ipairs(_traces_dist_t) do
        if _trace[2] ~= -1 then
            table.insert(_picked_traces, _trace)
        end
    end

    if sysbench.opt.verbosity ~= 0 then
        print("picked apis: ")
        for i = 1, #_picked_traces do
            print(_picked_traces[i][1] .. ":" .. _picked_traces[i][2])
        end
    end
end

local function _gen_row_data(_table_name, _table_desc, _line_num)
    local _row = {}
    for _col_name, _col_desc in pairs(_table_desc) do
        local _value = _gen_value_f(_table_name, _col_name, _col_desc, _line_num)

        table.insert(_row, _value)
    end
    return table.concat(_row, ", ")
end

local function _populate_table(_table_name, _table_desc, _table_size)
    local _insert_sql = string.format("INSERT INTO %s (%s) VALUES ",
            _table_name,
            _get_col_list(_table_desc))

    local _gen = function(_line_num)
        local _sql = _insert_sql .. "(" .. _gen_row_data(_table_name, _table_desc, _line_num) .. ")"
        _con:query(_sql)
    end

    _loop_with_log(_con, _table_name, _table_size, _gen)
end

local function _populate_tables()
    for _table_name, _table_desc in pairs(tables) do
        local _table_size = get_table_size(_table_name)
        _populate_table(_table_name, _table_desc, _table_size)
    end
end

local function cmd_prepare()
    _init_conn()
    _populate_tables()
end

function init()
    os.execute("rm -rf .records.old > /dev/null")
    os.execute("mv .records .records.old > /dev/null")
    os.execute("mkdir .records > /dev/null")
end

function thread_init()
    _init_conn()
    _init_picked_apis()
    _init_runtime_info(tables, get_table_size)
end

function event()
    local _func
    local _rand = _rand_uniform(1, 100)
    for i = 1, #_picked_traces do
        local _dist = _picked_traces[i][2]
        if _rand <= _dist then
            _func = _picked_traces[i][1]
        end
        _rand = _rand - _dist
    end

    if _func == nil then
        repeat
            _rand = _rand_uniform(1, #_traces_dist_t)
            if _traces_dist_t[_rand][2] == -1 then
                _func = _traces_dist_t[_rand][1]
            end
        until _func ~= nil
    end

    _G[_func](_con)
end

function thread_done(_thread_id)
    _dump_records(_thread_id)
end

function sysbench.hooks.report_cumulative(stat)
    sysbench.report_default(stat)

    os.execute("cat .records/stmt.* > stmt.timing")
    --os.execute("cat .records/stmt.* | python3 collect_records.py > stmt.timing")
    --os.execute("cat .records/txn.* | python3 collect_records.py > txn.timing")
end

function sql_error_ignorable(_err)
    _log("SQL error occurs: ", _inspect(_err))
    return true -- mutable all errors
end

sysbench.cmdline.commands = {
    prepare = { cmd_prepare }
}
