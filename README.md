local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

local window = DrRayLibrary:Load("山脚本[重制版]", "Default")

local tab1 = DrRayLibrary.newTab("通用", "ImageIdHere")

tab1.newLabel("通用脚本")

tab1.newButton("飞行脚本", "飞行可隐藏", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/AjDmq385'))()
end)

tab1.newButton("透视脚本", "透视所有玩家", function()
    if _G.Reantheajfdfjdgse then
    return
end

_G.Reantheajfdfjdgse = "susan"

local coregui = game:GetService("CoreGui")
local players = game:GetService("Players")
local plr = players.LocalPlayer

local highlights = {}

function esp(target, color)
    pcall(function()
        if target.Character then
            if not highlights[target] then
                local highlight = Instance.new("Highlight", coregui)
                highlight.Name = target.Name
                highlight.Adornee = target.Character
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = color
                highlights[target] = highlight
            else
                highlights[target].FillColor = color
            end
        end
    end)
end

players.PlayerAdded:Connect(function(v)
    v.CharacterAdded:Connect(function()
        esp(v, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
    end)
end)

players.PlayerRemoving:Connect(function(v)
    if highlights[v] then
        highlights[v]:Destroy()
        highlights[v] = nil
        end
end)

for i, v in pairs(players:GetPlayers()) do
    if v ~= plr then
        local color = _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor)
        v.CharacterAdded:Connect(function()
            local color = _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor)
            esp(v, color)
        end)
        
        esp(v, color)
    end
end

while task.wait() do
    for i, v in pairs(highlights) do
        local color = _G.UseTeamColor and i.TeamColor.Color or ((plr.TeamColor == i.TeamColor) and _G.FriendColor or _G.EnemyColor)
        v.FillColor = color
    end
end
end)

tab1.newButton("工具点击传送", " ", function()
    mouse = game.Players.LocalPlayer:GetMouse()
                tool = Instance.new("Tool")
                tool.RequiresHandle = false
                tool.Name = "点击传送"
                tool.Activated:connect(function()
                local pos = mouse.Hit+Vector3.new(0,2.5,0)
                pos = CFrame.new(pos.X,pos.Y,pos.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
                end)
                tool.Parent = game.Players.LocalPlayer.Backpack
end)

tab1.newButton("工具包", "玩家应该看不见", function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
end)

tab1.newButton("键盘脚本", "这是电脑版的键盘", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xxtan31/Ata/main/deltakeyboardcrack.txt", true))()
end)

tab1.newToggle("夜视", " ", true, function(Value)
        if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
end)

tab1.newToggle("自动跳跳", " ", true, function(s)
getgenv().InfJ = s
    game:GetService("UserInputService").JumpRequest:connect(function()
        if InfJ == true then
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end
    end)
end)

tab1.newInput("跳跃", "打您的输入。", function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end)

tab1.newInput("速度", "打您的输入。", function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)

tab1.newInput("重力", "打您的输入。", function(Value)
    game.Workspace.Gravity = Value
end)

tab1.newInput("血量", "打您的输入。", function(Value)
    game.Players.LocalPlayer.Character.Humanoid.Health = Value
end)

tab2.newButton("飞车", " ", loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
end)

local tab2 = DrRayLibrary.newTab("脚本汉化版游戏", "ImageIdLogoHere")

tab2.newButton("被遗弃", " ", function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/OWOWOWWOW/HTT/main/HT.lua")()
end)

tab2.newButton("脚本中心", " ", function()
  loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
end)

tab2.newButton("伐木大亭", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/LuaWare.lua", true))()
end)

tab2.newButton("最坚强的战场", "", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-GarlordHub-KeyLess-Tsbg-Script-24860"))()
end)

tab2.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

tab2.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

tab2.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

tab2.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

tab2.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

tab2.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

local tab3 = DrRayLibrary.newTab("关于", "ImageIdLogoHere")

tab3.newLabel("作者owo")
tab3.newLabel("QQ3405113730")
tab3.newLabel("加我即可找到群")
tab3.newLabel("当前版本V1.0.1")
tab3.newLabel("山脚本使用永久免费")
--[[
tab2.newLabel("Hello, this is Tab 2.")
tab2.newButton("Button", "Prints Hello!", function()
    print('Hello!')
end)
tab2.newToggle("Toggle", "Toggle! (prints the state)", true, function(toggleState)
    if toggleState then
        print("On")
    else
        print("Off")
    end
end)
tab2.newDropdown("Dropdown", "Select one of these options!", {"water", "dog", "air", "bb", "airplane", "wohhho", "yeay", "delete"}, function(selectedOption)
    print(selectedOption)
end)
]]
