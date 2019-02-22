ranga.proto.prepare()
ranga.proto.header("code", "0")
ranga.proto.content()

while true do
	arg = io.read("*l")
	if not arg then break end
	print("ARG: " .. arg)
end
