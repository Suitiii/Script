
local player = game.Players.LocalPlayer

local gui = Instance.new("ScreenGui")
    local text = Instance.new("TextLabel")
    text.Text = "Hack By Lula"
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
    
    
