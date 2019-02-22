ranga.proto.prepare()
ranga.proto.header("code", "1")

arg = io.read("*l")
if arg == "luaError" then
	noSuchFunction(1234)
end
