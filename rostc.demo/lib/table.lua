printTable = function(table)
	if not table then return end
	for k, v in pairs(table) do
		print(k .. ": " .. v)
	end
end
