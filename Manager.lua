--// Manager.lua
local Manager = {}

function Manager.LoadAll()
	local modulesFolder = script:WaitForChild("Modules")
	local loaded = {}

	for _, module in ipairs(modulesFolder:GetChildren()) do
		if module:IsA("ModuleScript") then
			local ok, result = pcall(require, module)

			if ok then
				loaded[module.Name] = result
			else
				warn("[Module Error]", module.Name, result)
			end
		end
	end

	return loaded
end

return Manager
