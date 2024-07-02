local works = game:GetService("Workspace")

local folder1 = works:WaitForChild("Item_Spawns")

local folder2 = folder1:WaitForChild("Items")

print("sapo")

if works then
  print(1)
end


if folder1 then
  print(2)
end

if folder2 then 
  print(3)
end


for i, k in ipairs(folder2:GetChildren()) do
print(i.." items")
end
