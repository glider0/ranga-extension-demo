ranga.proto.prepare()
ranga.proto.header("code", "0")
ranga.proto.content()

local http = require "socket.http"
local ltn12 = require "ltn12"

headers = {
	["Connection"] = "close",
	["User-Agent"] = "demo/0.1 (test) luasocket"
}

local respbody = {}
local x, code = http.request {
	method = "GET",
	url = "http://127.0.0.1",
	headers = headers,
	sink = ltn12.sink.table(respbody)
}

if x ~= 1 or code ~= 200 then
	print("failed")
end

respbody = table.concat(respbody)
print(respbody)
