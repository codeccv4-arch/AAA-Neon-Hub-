--// Modules/Button.lua
local Button = {}

function Button.Bind(btn)
	btn.MouseButton1Click:Connect(function()
		btn.Text = "CLICKED!"
		task.wait(0.3)
		btn.Text = "TEST BUTTON"
	end)
end

return Button
