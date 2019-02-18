ranga.luaload("ranga.ext.base/utils/sys.lua")

local printTable = function(table)
	for k, v in pairs(table) do
		print(k .. ": " .. v)
	end
end

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
