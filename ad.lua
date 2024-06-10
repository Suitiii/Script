
local player = game.Players.LocalPlayer

local gui = Instance.new("ScreenGui")
	local text = Instance.new("TextLabel")
	
	
	local abfa = Instance.new("TextButton")
	
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
	gui.Parent = player.PlayerGui
	abfa.Parent = frame
	
	frame.Transparency = 1
	text.Transparency = 1
	
	
	local guiaberta = false
	abfa.MouseButton1Click:Connect(function()
	
		if guiaberta then
			
			guiaberta = false
			frame.Transparency = 1
			text.Transparency = 1
			print("fechada")
		else if not guiaberta then
				frame.Transparency = 0
				text.Transparency = 0
			
				guiaberta = true
				print("aberta")
			end
		end
	end)
