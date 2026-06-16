local mosttabs = _G.tabs
local buttonfirst = mosttabs.Main:AddLeftGroupbox("Enable esp")


buttonfirst:AddToggle("Esp on-off", {
    Text ="*click*",    
    Tooltip = "Enable esp, green - basic players, blue - IT",
    Default = false,
    Callback = function(value)
    
    _G.esptoggle = value 

    if value then 
    task.spawn(function()

local playera = game:GetService("Players").LocalPlayer
local igrokis = game:GetService("Players")
while _G.esptoggle == true do 
task.wait(1)
for _, g in pairs(igrokis:GetPlayers()) do 
if _G.esptoggle == false then break end 
if g.Name == playera.Name then continue end 
if g.Character then 
if g.Character:FindFirstChild("ITWH") or g.Character:FindFirstChild("NOITWH") then continue end 
local papkadata = g:FindFirstChild("PlayerData")
local IT = papkadata and papkadata:FindFirstChild("It")
if IT and IT.Value == true then 
local wh = Instance.new("Highlight", g.Character)
wh.Name = "ITWH"
wh.FillColor = Color3.fromRGB(0,0,255)
wh.OutlineTransparency = 1
else 

local checkifingame = papkadata and papkadata:FindFirstChild("InGame")
if checkifingame and checkifingame.Value == true then 
task.wait(0.5)


local whh = Instance.new("Highlight", g.Character)
whh.Name = "NOITWH"
whh.FillColor = Color3.fromRGB(130,255,0)
whh.OutlineTransparency = 1
end 
end 
end 
end 
end
    print("FARMWARE: esp enabled.")
    end)
else 
task.wait(0.5)
local workspace = game:GetService("Workspace")
for _, k in pairs(workspace:GetDescendants()) do 
if k.Name == "ITWH" or k.Name == "NOITWH" then 
print("FARMWARE: ESP DISABLED")
k:Destroy() 
end 
end
end  
end, 
})
