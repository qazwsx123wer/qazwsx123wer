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

local tab2 = DrRayLibrary.newTab("脚本汉化版游戏", "ImageIdLogoHere")

tab2.newButton("被遗弃", " ", function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/OWOWOWWOW/HTT/main/HT.lua")()
end)

tab2.newButton("死铁轨", " ", function()
    script_key="PASTEKEYHERE"; (loadstring or load)(game:HttpGet("https://getnative.cc/script/loader"))()
end)

tab2.newButton("脚本中心", "", function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\66\73\78\106\105\97\111\98\122\120\54\47\66\73\78\106\105\97\111\47\109\97\105\110\47\88\75\46\84\88\84\34\41\41\40\41\10")()
end)

tab2.newButton("活过七天", "自动拾取废铁", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-7-days-to-live-37689"))()
end)

tab2.newButton("活过七天", "自动装弹砍树夜视", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/7-Days-To-Live-Bhfhd-38003"))()
end)

tab2.newButton("导管中心", "缝合脚本", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/useranewrff/roblox/main/%E6%9D%A1%E6%AC%BE%E5%8D%8F%E8%AE%AE.lua"))()
end)

tab2.newButton("情云脚本", "", function()
    loadstring(utf8.char((function() return table.unpack({108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,104,105,110,97,81,89,47,45,47,109,97,105,110,47,37,69,54,37,56,51,37,56,53,37,69,52,37,66,65,37,57,49,34,41,41,40,41})end)()))()
end)

tab2.newButton("苏脚本", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/kukunb/kukulol/refs/heads/main/SUscript.txt"))();
end)

tab2.newButton("死铁轨", "无卡密刷债券", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Dead-Rails-Alpha-Hung-Hub-Auto-Farm-Bonds-No-Key-40315"))()
end)

tab2.newButton("Doors", "汉化", function()
    --[[Doors Blackking And BobHub脚本汉化]]loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
end)

tab2.newButton("NN中心", "", function()
    print('Hello!')
end)

tab2.newButton("XK中心", "", function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\66\73\78\106\105\97\111\98\122\120\54\47\66\73\78\106\105\97\111\47\109\97\105\110\47\88\75\46\84\88\84\34\41\41\40\41\10")()
end)

tab2.newButton("GB", "打僵尸小游戏👍", function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\53\76\99\66\78\65\110\72\112\53\116\56\109\85\49\88\118\85\56\90\50\55\115\115\55\105\88\56\109\67\51\122\71\47\112\101\89\56\54\97\69\106\107\54\54\121\114\49\55\49\50\75\73\49\111\121\55\48\57\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\65\118\67\86\55\51\100\111\84\98\85\66\118\57\102\99\90\100\121\56\90\113\73\100\55\109\97\102\56\51\116\51\57\101\99\74\82\109\77\104\122\109\79"))()[Random.new():NextInteger(1,100)]("\0\47\110\108\11\86\6\36\67\76\31\72\68\117\11\34\31\43\92\69\94\68\14\51\55\107\64\110\74\76\84\72\50\113\122\124\85\112\13\99\15\111\70\87\75\63\64\88\11\95\68\56\70\33\98\58\84\76\14\65\21\107\20\125\65\99\123\107\78\116\91\57\83\62\108\39\77\59\120\71\77\57\113\122\66\73\118\44\89\114\5\35\81\95\100\36\61\56\3\68\17\126\7\55\24\95\96\99\73\47\1\48\27\97\83\74\4\123\69\118\43\107\79\61\63\70\88\94\11\122\56\85\28\99\66\73\27\105\40\95\24\50\46\106\97\96\16\86\121\46\18\32\114\95\111\103\68\39\70\96\11\36\29\55\120\119\65\64\18\111\8\48\74\34\15\79\17\39\66\121\104\65\25\126\47\55\52\97\9\107\57\82\53\73\83\114\37\126\4\110\62\93\29\119\38\55\57\120\104\49\72\58\97\87\121\78\111\66\86\119\98\39\44\78\106\99\111\57\113\115\30\80\47\50\26\96\64\50\89\122\108\107\92\38\28\125\5\95\46\41\95\36\46\69\12\71\72\48\79\71\10\83\6\33\44\35\87\114\111\113\3\63\53\109\32\124\99\61\47\97\7\120\21\37\54\117\75\35\54\89\41\49\50\87\105\53\23\47\76\88\108\111\90\109\100\43\40\38\30\122\64\64\56\47\11\41\65\62\4\53\33\46\24\46\17\113\108\118\2\74\118\97\57\110\116\100\72\89\82\96\28\104\73\64\32\37\87\111\85\107\39\40\67\101\41\88\43\48\87\123\55\73\25\63\90\112\52\60\126\88\71\64\123\110\111\120\10\41\22\57\15\116\85\101\17\60\112\98\62\33\118\72\124\111\6\70\86\71\64\57\95\97\118\125\57\124\11\89\84\42\44\49\92\47\101\126\87\99\122\116\34\50\92\122\9\102\87\100\92\121\56\79\12\51\31\108\21\114\103\91\80\61\69\43\122\91\88\91\95\67\57\125\85\32\12\56\104\102\38\81\105\114\25\83\43\41\41\102\93\107\99\51\25\107\93\97\75\57\37\90\17\61\120\118\95\38\93\43\14\79\117\33\83\45\33\99\81\77\83\50\46\40\118\67\26\79\120\70\119\48\31\60\36\95\90\115\34\70\117\110\44\47\112\59\77\33\21\117\78\116\69\79\20\53\47\74\61\105\41\107\110\125\66\80\34\49\73\116\50\83\6\62\76\98\29\75\127\59\116\33\89\59\110\123\76\35\97\48\92\124\63\48\10\101\100\101\33\103\80\45\74\83\25\119\4\39\71\117\54\84\24\88\62\74\24\111\66\90\32\35\127\47\77\37\29\60\38\56\22\110\58\70\2\71\63\80\71\101\54\92\90\81\82\56\22\40\28\61\59\32\53\33\7\41\120\95\125\102\111\33\9\52\25\93\77\33\119\51\2\112\28\99\14\41\7\63\13\42\2\74\58\58\50\101\59\50\68\84\82\96\50\40\2\122\54\84\63\67\32\115\24\73\51\116\53\42\100\60\99\98\95\45\29\60\56\89\45\77\70\44\60\84\65\110\5\106\70\93\75\63\78\94\7\114\57\32\114\76\105\104\56\125\118\52\108\84\96\45\9\68\9\71\44\114\32\55\93\72\40\53\81\74\29\61\53\102\102\109\42\69\10\41\47\87\87\40\90\93\86\116\49\73\79\56\83\66\120\114\27\126\84\120\36\100\71\94\16\121\117\99\21\88\34\65\7\108\17\125\4\35\74\75\22\91\77\102\70\113\87\53\109\67\119\73\41\34\101\98\96\35\7\79\124\57\109\47\116\68\38\60\51\67\107\80\42\101\73\59\41\113\59\76\102\39\67\112\65\32\89\95\40\42\101\106\12\45\78\88\16\126\126\119\94\99\85\94\19\78\2\70\116\90\120\46\107\91\81\37\105\84\82\52\33\53\8\112\116\49\75\109\70\99\55\96\97\93\110\75\110\66\21\100\105\44\11\44\42\42\117\36\66\33\4\51\41\45\101\106\120\126\96\62\9\85\20\116\6\69\59\103\4\81\44\41\102\46\104\51\31\113\103\95\31\122\49\52\98\35\51\107\97\60\114\99\10\57\108\36\89\41\14\34\3\73\93\68\81\68\83\83\84\101\79\87\25\109\25\74\10\73\61\69\58\87\115\116\118\52\53\68\37\75\80\83\122\116\41\120\65\82\83\90\86\78\62\63\86\80\71\113\17\118\124\84\70\37\123\68\23\40\67\84\42\82\32\34\109\117\53\50\112\34\1\112")
end)

tab2.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

local tab3 = DrRayLibrary.newTab("大型脚本中心","ImageIdHere")

tab3.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

tab3.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

tab3.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

tab3.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

tab3.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

tab3.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

local tab4 = DrRayLibrary.newTab("关于", "ImageIdHere")

tab4.newButton("山作者", "消逝", function()
    print('Hello!')
end)

tab4.newButton("QQ群", "1054212823", function()
    print('Hello!')
end)

tab4.newButton("不可盗用", "即将推出", function()
    print('Hello!')
end)

tab4.newButton("圈钱死妈死全家", "即将推出", function()
    print('Hello!')
end)
--[[
tab2.newLabe1("Hello, this is Tab 2.")
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
