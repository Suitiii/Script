
local player = game.Players.LocalPlayer


	local works = game:GetService("Workspace")
	local players = game:GetService("Players")
	
	local screen = Instance.new("ScreenGui")
	local background = Instance.new("Frame")
	local exploitname = Instance.new("TextLabel")
	local button1 = Instance.new("TextButton")
	local fname1 = Instance.new("TextLabel")
	local abfa = Instance.new("TextButton")
	screen.Name = "CHExploit"
	background.Name = "Background"
	exploitname.Name = "ExploitName"
	button1.Name = "Func1"
	fname1.Name = "FunctionName1"
	background.Position = UDim2.new(0.213, 0,0.234, 0)
	background.Size = UDim2.new(0.573, 0,0.531, 0)
	background.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	background.Parent = screen
	local r1 = Instance.new("UICorner")
	r1.Parent = background
	exploitname.Position = UDim2.new(0.348, 0,0.036, 0)
	exploitname.Size = UDim2.new(0.303, 0,0.1, 0)
	exploitname.TextColor3 = Color3.new(255,255,255)
	exploitname.TextScaled = true
	exploitname.FontFace = Font.fromEnum(Enum.Font.LuckiestGuy)
	
	exploitname.Text = "CH-Exploit"
	exploitname.BackgroundTransparency = 1
	exploitname.Parent = background
	local b1 = Instance.new("UIStroke")
	b1.Color = Color3.new(0,255)
	b1.Parent = exploitname
	
	button1.Text = ""
	button1.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	button1.TextColor3 = Color3.fromRGB(255)
	button1.TextSize = 20
	button1.Position = UDim2.new(0.046, 0,0.218, 0)
	button1.Size = UDim2.new(0.084, 0,0.1, 0)
	button1.Parent = background
	button1.BorderColor3 = Color3.fromRGB(104, 255, 58)
	
	fname1.Position = UDim2.new(0.131, 0,0.186, 0)
	fname1.Size = UDim2.new(0.425, 0,0.166, 0)
	fname1.Text = "Chams on all players"
	fname1.FontFace = Font.fromEnum(Enum.Font.DenkOne)
	fname1.TextColor3 = Color3.fromRGB(13, 255, 0)
	fname1.TextSize = 30
	fname1.TextScaled = true
	fname1.BackgroundTransparency = 1
	fname1.Parent = background
	
	abfa.Text = "Open"
	abfa.BackgroundColor3 = Color3.fromRGB(44,44,44)
	local r2 = Instance.new("UICorner")
	r2.Parent = abfa
	abfa.TextSize = 30
	abfa.TextScaled = true
	abfa.TextColor3 = Color3.fromRGB(255,255,255)
	abfa.Position = UDim2.new(-0.344, 0,0.427, 0)
	abfa.Size = UDim2.new(0.1, 0,0.143, 0)
	abfa.Parent = background
	
	background.Transparency = 1
	fname1.Transparency = 1
	button1.Transparency = 1
	exploitname.Transparency = 1
	b1.Transparency = 1
	
	
	wait(1)
	screen.Parent = player.PlayerGui
	
	local aberto = false
	abfa.MouseButton1Click:Connect(function()
		if aberto then
			background.Transparency = 1
			fname1.Transparency = 1
			button1.Transparency = 1
			exploitname.Transparency = 1
			b1.Transparency = 1
			
			aberto = false
		else if not aberto then
				background.Transparency = 0
				fname1.Transparency = 0
				button1.Transparency = 0
				exploitname.Transparency = 0
				b1.Transparency = 0
				fname1.BackgroundTransparency = 1
				exploitname.BackgroundTransparency = 1
				aberto = true
			end
		end
	end)
	
	
	local esp = false
	
	button1.MouseButton1Click:Connect(function()
	
		if not esp then
			
		 button1.Text = "X"
		    for i, k in ipairs(players:GetPlayers()) do
			     if k.Name then
				  local playe = works:WaitForChild("Living"):WaitForChild(k.Name)
				  local luz = Instance.new("Highlight")
				  luz.Parent = playe
					
			    end
			
		    end
			esp = true

		else if esp then
			
				button1.Text = ""
				for u, b in ipairs(players:GetPlayers()) do
					if b.Name then
						local playee = works:WaitForChild(b.Name)
						if playee:FindFirstChild("Highlight") then
							playee:FindFirstChild("Highlight"):Destroy()
							
						end
					end
				end
				esp = false
		 end	
     end
		
		
		
		
		
      
	end)
	
	
	
	
