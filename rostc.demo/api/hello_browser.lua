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
<pre>
]])

ranga.luaload("ranga.ext.base/utils/cgiutils.lua")
ranga.luaload("rostc.demo/lib/table.lua")

query = cgiutils.parsequery(os.getenv('QUERY_STRING'))
printTable(query)

print([[
</pre>
</body>
</html>
]])
