--// Modules/Effects.lua
local Effects = {}

function Effects.Start(gui, frame, toggle, btn)
	local RunService = game:GetService("RunService")
	local Lighting = game:GetService("Lighting")

	-- Blur
	local blur = Instance.new("BlurEffect")
	blur.Size = 0
	blur.Parent = Lighting

	frame:GetPropertyChangedSignal("Visible"):Connect(function()
		blur.Size = frame.Visible and 20 or 0
	end)

	-- Rainbow stroke system
	local function addRainbow(obj)
		local stroke = Instance.new("UIStroke")
		stroke.Parent = obj

		local hue = 0
		RunService.RenderStepped:Connect(function(dt)
			hue = (hue + dt * 0.2) % 1
			stroke.Color = Color3.fromHSV(hue, 1, 1)
		end)
	end

	addRainbow(frame)
	addRainbow(btn)
	addRainbow(toggle)
end

return Effects
