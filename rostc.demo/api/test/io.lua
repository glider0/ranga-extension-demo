ranga.proto.prepare()
ranga.proto.header("code", "0")
ranga.proto.content()

local f = ranga.openfile("rostc.demo/api/test/io.lua")
local blob = f:read("*a")

local tmp = ranga.tmpfile("rostc.demo.tmp1", "w")
tmp:write(blob)
tmp:flush()

print("The content of this file, and the content write to a tmp file")
print(blob)

tmp:close()
ranga.tmpfree("rostc.demo.tmp1")
