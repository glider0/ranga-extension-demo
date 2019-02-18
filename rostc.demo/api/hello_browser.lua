-- Do not use them:

--ranga.proto.prepare()
--ranga.proto.header("code", "0")
--ranga.proto.content()

io.write("Content-type: text/html; charset=utf-8\n")
io.write("\n")

print([[
<html>
<body>
<h1>Hello, world</h1>
A demo do not use Ranga proto
</body>
</html>
]])
