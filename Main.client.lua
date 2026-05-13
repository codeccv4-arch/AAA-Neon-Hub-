--// Main.client.lua
local Manager = require(script:WaitForChild("Manager"))

local Modules = Manager.LoadAll()

-- สร้าง UI
local gui, frame, toggle, btn = Modules.UI.Create()

-- เปิดระบบทั้งหมด
Modules.Effects.Start(gui, frame, toggle, btn)
Modules.Drag.Enable(frame)
Modules.Button.Bind(btn)

-- toggle menu
toggle.MouseButton1Click:Connect(function()
	Modules.UI.Toggle(frame)
end)
