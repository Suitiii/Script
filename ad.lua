
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
	local text = Instance.new("TextLabel")
	
	
	local abfa = Instance.new("TextButton")
	local velocidade = Instance.new("TextButton")
	velocidade.Text = "Super Velocidade"
	velocidade.Position = UDim2.new(0.063, 0,0.259, 0)
	velocidade.Size = UDim2.new(0.291, 0,0.141, 0)
	abfa.Text = "+"
	
	abfa.Position = UDim2.new(-0.613, 0,0.123, 0)
	abfa.Size = UDim2.new(0.1, 0,0.1, 0)
	
	text.Text = "Hack By ChrisModder"
	text.Position = UDim2.new(0.309, 0,0.061, 0)
	text.Size = UDim2.new(0.384, 0,0.1, 0)
	text.TextScaled = true
	
	local frame = Instance.new("Frame")
	local round = Instance.new("UICorner")
	text.Parent = frame
	round.Parent = frame
	
	frame.Position = UDim2.new(0.279, 0,0.236, 0)
	frame.Size = UDim2.new(0.441, 0,0.525, 0)
	frame.Parent = gui
	
	abfa.Parent = frame
	velocidade.Parent = frame
	
	gui.Parent = player.PlayerGui
	frame.ZIndex = 100
	frame.Transparency = 1
	text.Transparency = 1
	velocidade.Transparency = 1
	
	local guiaberta = false
	abfa.MouseButton1Click:Connect(function()
	
		if guiaberta then
			
			guiaberta = false
			frame.Transparency = 1
			text.Transparency = 1
			velocidade.Transparency = 1
			print("fechada")
		else if not guiaberta then
				frame.Transparency = 0
				text.Transparency = 0
				velocidade.Transparency = 0
			
				guiaberta = true
				print("aberta")
			end
		end
	end)
	
	
	velocidade.MouseButton1Click:Connect(function()
		
		local humanoid = player.Character:WaitForChild("Humanoid")
		humanoid.WalkSpeed = 50
		
	end)



local works = game:GetService("Workspace")
	local players = game:GetService("Players")
	
	for i, k in ipairs(players:GetPlayers()) do
	   if k.Name then
			local playe = works:WaitForChild(k.Name)
			local luz = Instance.new("Highlight")
			luz.Parent = playe
	   end
	   
	
	
	end
	
