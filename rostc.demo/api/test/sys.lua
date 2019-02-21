ranga.luaload("ranga.ext.base/utils/sys.lua")
ranga.luaload("rostc.demo/lib/table.lua")

ranga.proto.prepare()
ranga.proto.header("code", "0")
ranga.proto.content()

local header = {}
local payload = ''

print("\n=> Test sys.query network")
header, payload = sys.query("network")
printTable(header)
print("==PAYLOAD==\n" .. payload)

print("\n=> Test sys.config interface get netkeeper type")
header, payload = sys.config("interface", {"get", "netkeeper", "type"})
printTable(header)
print("==PAYLOAD==\n" .. payload)

io.flush()
