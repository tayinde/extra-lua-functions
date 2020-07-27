local _ =
{
	reverseList = function (list)
		local newList = {}
		for i = 1, #list do
			newList[i] = list[#list - i + 1]
		end
		return newList
	end,

	sum = function (list)
		local sum = 0
		for i = 1, #list do sum = sum + list[i] end
		return sum
	end,

	stringToCharList = function (str)
		local chars = {}
		for i = 1, string.len(str) do chars[i] = string:sub(i, i) end
		return chars
	end,

	listToString = function (list)
		local finalString = ""
		for i = 1, #list do finalString = finalString .. list[i] end
		return finalString
	end,

	indexOf = function (list, string)
		local index = -1
		for i = 1, #list do
			if (list[i] == string) then
				index = i
				break
			end
		end
		return index
	end,

	count = function (list, value)
		local count = 0
		for i = 1, #list do
			if (list[i] == value) then
				count = count + 1
			end
		end
		return count
	end
}
function _.charSplit(str, separator)
	local splittedList = {}
	local length = 1
	local i = 1
	while i < string.len(str) + 1 do
		if (str:sub(i, i + string.len(separator) - 1) == separator) then
			length = length + 1
			i = i + string.len(separator) - 1
		else
			splittedList[length] = (splittedList[length] or "") .. str:sub(i, i)
		end
		i = i + 1
	end
	return splittedList
end