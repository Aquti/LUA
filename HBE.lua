-- Made by TrashScripterF, GUI Lib by Wally

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/WallyGUILibV1.lua", true))()
local hb = library:CreateWindow({
  text = "Hitbox"
})

local credits = library:CreateWindow({text='Credits'})
credits:AddLabel("Scripter: TrashScripterF\nGUI Lib: Wally")


hb:AddBox("Size", function(object, focus)
	if focus then
    	for i, v in pairs(workspace.AIHunter:GetChildren()) do
        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("UpperTorso") then
          v.HumanoidRootPart.Size = Vector3.new(tonumber(object.Text),tonumber(object.Text),tonumber(object.Text))
          v.Character.UpperTorso.Size = Vector3.new(tonumber(object.Text),tonumber(object.Text),tonumber(object.Text))
        end
		end
	end
end)

game.StarterGui:SetCore("SendNotification", {
	Title = "GUI Loaded",
	Text = "Optimized by Aquti",
	Duration = 5,
})
