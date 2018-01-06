--[[
	Script for calculating bitmasks from numerical values in Lua
	For more information refer to readme.txt
	--healLV
]]--

--BYTE or char in C++
function bitmask8(value, returnType)
	local bits = {}
	local bitsString = ""
	if value ~= 0 and type(value) == "number" and value < 2^8 then
		for i=7,0,-1 do
			local val = 0
			val = value - 2 ^ i
			if returnType == "1" then
				if val == 0 then
					table.insert(bits , 2 ^ i)
					break
				elseif val > 0 then
					table.insert(bits , 2 ^ i)
					value = val
				end
			elseif returnType == "2" then
				if val == 0 then
					bitsString = bitsString .. 2 ^ i .. "|"
					break
				elseif val > 0 then
					bitsString = bitsString .. 2 ^ i .. "|"
					value = val
				end
			else
				if val == 0 then
					bits[2 ^ i] = true
					value = val
				elseif val > 0 then
					bits[2 ^ i] = true
					value = val
				elseif val < 0 then
					bits[2 ^ i] = false
				end
			end
		end
		if returnType == "2" then
			return bitsString
		else
			return bits
		end
	elseif value ~= nil and type(value) ~= "number" then
		return "VALUE_NOT_NUMBER"
	elseif value == 0 then
		return "VALUE_ZERO"
	elseif value == nil then
		return "VALUE_NIL"
	elseif value >= 2^8 then
		return "VALUE_TOO_BIG"
	else
		return "UNKNOWN_ERROR"
	end
end

--WORD or short in C++
function bitmask16(value, returnType)
	local bits = {}
	local bitsString = ""
	if value ~= 0 and type(value) == "number" and value < 2^15+1 then
		for i=14,0,-1 do
			local val = 0
			val = value - 2 ^ i
			if returnType == "1" then
				if val == 0 then
					table.insert(bits , 2 ^ i)
					break
				elseif val > 0 then
					table.insert(bits , 2 ^ i)
					value = val
				end
			elseif returnType == "2" then
				if val == 0 then
					bitsString = bitsString .. 2 ^ i .. "|"
					break
				elseif val > 0 then
					bitsString = bitsString .. 2 ^ i .. "|"
					value = val
				end
			else
				if val == 0 then
					bits[2 ^ i] = true
					value = val
				elseif val > 0 then
					bits[2 ^ i] = true
					value = val
				elseif val < 0 then
					bits[2 ^ i] = false
				end
			end
		end
		if returnType == "2" then
			return bitsString
		else
			return bits
		end
	elseif value ~= nil and type(value) ~= "number" then
		return "VALUE_NOT_NUMBER"
	elseif value == 0 then
		return "VALUE_ZERO"
	elseif value == nil then
		return "VALUE_NIL"
	elseif value >= 2^16 then
		return "VALUE_TOO_BIG"
	else
		return "UNKNOWN_ERROR"
	end
end

--DWORD or int in C++
function bitmask32(value, returnType)
	local bits = {}
	local bitsString = ""
	if value ~= 0 and type(value) == "number" and value < 2^31+1 then
		for i=30,0,-1 do
			local val = 0
			val = value - 2 ^ i
			if returnType == "1" then
				if val == 0 then
					table.insert(bits , 2 ^ i)
					break
				elseif val > 0 then
					table.insert(bits , 2 ^ i)
					value = val
				end
			elseif returnType == "2" then
				if val == 0 then
					bitsString = bitsString .. 2 ^ i .. "|"
					break
				elseif val > 0 then
					bitsString = bitsString .. 2 ^ i .. "|"
					value = val
				end
			else
				if val == 0 then
					bits[2 ^ i] = true
					value = val
				elseif val > 0 then
					bits[2 ^ i] = true
					value = val
				elseif val < 0 then
					bits[2 ^ i] = false
				end
			end
		end
		if returnType == "2" then
			return bitsString
		else
			return bits
		end
	elseif value ~= nil and type(value) ~= "number" then
		return "VALUE_NOT_NUMBER"
	elseif value == 0 then
		return "VALUE_ZERO"
	elseif value == nil then
		return "VALUE_NIL"
	elseif value >= 2^32 then
		return "VALUE_TOO_BIG"
	else
		return "UNKNOWN_ERROR"
	end
end

--QWORD or _int64 in C++
--nonworking(atleast on my system) maybe you can get it working
--theoretically works but idk about 64bit Lua
--[[
function bitmask64(value, returnType)
	local bits = {}
	local bitsString = ""
	if value ~= 0 and type(value) == "number" and value < 2^64 then
		for i=63,0,-1 do
			local val = 0
			val = value - 2 ^ i
			if returnType == "1" then
				if val == 0 then
					table.insert(bits , 2 ^ i)
					break
				elseif val > 0 then
					table.insert(bits , 2 ^ i)
					value = val
				end
			elseif returnType == "2" then
				if val == 0 then
					bitsString = bitsString .. 2 ^ i .. "|"
					break
				elseif val > 0 then
					bitsString = bitsString .. 2 ^ i .. "|"
					value = val
				end
			else
				if val == 0 then
					bits[2 ^ i] = true
					value = val
				elseif val > 0 then
					bits[2 ^ i] = true
					value = val
				elseif val < 0 then
					bits[2 ^ i] = false
				end
			end
		end
		if returnType == "2" then
			return bitsString
		else
			return bits
		end
	elseif value ~= nil and type(value) ~= "number" then
		return "VALUE_NOT_NUMBER"
	elseif value == 0 then
		return "VALUE_ZERO"
	elseif value == nil then
		return "VALUE_NIL"
	elseif value >= 2^64 then
		return "VALUE_TOO_BIG"
	else
		return "UNKNOWN_ERROR"
	end
end
]]--
