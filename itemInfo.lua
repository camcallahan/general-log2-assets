--[[
These three scripts will create a database of information
inside an items gameEffect string and allow it to be easily 
manipulated. Lines of information can be added and removed.
The calls then, after adding or removing information, rebuild
the gameEffect string of that item with a new line character
after each information string. The function can also search 
through the database of information and replace lines with
new or updated information and rebuild the gameEffect string
in the same order. I hope this can be useful to display 
non-standard and uncommon item information in an easy and 
simple way.
--]]
complexEffects = { }

function geAddInformation(item, information, otherInformation)
	if not complexEffects[item] then
		complexEffects[item] = { item.item:getGameEffect() }
	end	
	if type(information) == "number" then
		table.insert(complexEffects[item], information, otherInformation)
		return true
	end
	if complexEffects[item][1] == nil then 
		complexEffects[item][1] = information 
	else
		table.insert(complexEffects[item], #complexEffects[item]+1, information)	
	end
	local newGameEffect = ""
	for i = 1, #complexEffects[item] do
		local spacing = ""
		if i >= 2 then spacing = "\n" end
		newGameEffect = newGameEffect..spacing..complexEffects[item][i]
	end
	item.item:setGameEffect(newGameEffect)
	return true
end

function geRemoveInformation(item, information)
	if not complexEffects[item] then return false end
	if type(information) == "number" then
		table.remove(complexEffects[item], information)
		return true
	end
	for i = 1, #complexEffects[item] do
		if string.find(complexEffects[item][i], information) then
			table.remove(complexEffects[item], i)
			break
		end
	end
	local newGameEffect = ""
	for i = 1, #complexEffects[item] do
		local spacing = ""
		if i >= 2 then spacing = "\n" end
		newGameEffect = newGameEffect..spacing..complexEffects[item][i]
	end
	item.item:setGameEffect(newGameEffect)
	return true
end

function geReplaceInformation(item, information, newInformation)
	if not complexEffects[item] then return false end
	if type(information) == "number" then
		complexEffects[item][information] = newInformation
		return true
	end
	for i = 1, #complexEffects[item] do
		if string.find(complexEffects[item][i], information) then
			complexEffects[item][i] = newInformation
			break
		end
	end
	local newGameEffect = ""
	for i = 1, #complexEffects[item] do
		local spacing = ""
		if i >= 2 then spacing = "\n" end
		newGameEffect = newGameEffect..spacing..complexEffects[item][i]
	end
	item.item:setGameEffect(newGameEffect)
	return true
end