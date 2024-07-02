local works = game:GetService("Workspace")

local folder1 = works:WaitForChild("Item_Spawns")

local folder2 = folder1:WaitForChild("Items")





local function msg(item)
	
	print(tostring(item).. " spawnou!")
end

local function msg2(item)
	print(tostring(item).. "desespawnou!")
end


folder2.ChildAdded:Connect(msg)
folder2.ChildRemoved:Connect(msg2)
