--// Modules/UI.lua
local UI = {}

function UI.Create()
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer

	local gui = Instance.new("ScreenGui")
	gui.Name = "AAA_NEON_HUB"
	gui.ResetOnSpawn = false
	gui.Parent = player:WaitForChild("PlayerGui")

	-- Toggle Button
	local toggle = Instance.new("TextButton")
	toggle.Size = UDim2.new(0,120,0,40)
	toggle.Position = UDim2.new(0,15,0.5,-20)
	toggle.Text = "MENU"
	toggle.BackgroundColor3 = Color3.fromRGB(40,40,60)
	toggle.TextColor3 = Color3.fromRGB(255,255,255)
	toggle.Parent = gui

	-- Frame
	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(0,0,0,0)
	frame.Position = UDim2.new(0.5,0,0.5,0)
	frame.AnchorPoint = Vector2.new(0.5,0.5)
	frame.BackgroundColor3 = Color3.fromRGB(25,25,40)
	frame.Visible = false
	frame.Parent = gui

	-- Button
	local btn = Instance.new("TextButton")
	btn.Size = UDim2.new(0,200,0,40)
	btn.Position = UDim2.new(0.5,-100,0.5,-20)
	btn.Text = "TEST BUTTON"
	btn.Parent = frame

	return gui, frame, toggle, btn
end

function UI.Toggle(frame)
	frame.Visible = not frame.Visible
end

return UI
