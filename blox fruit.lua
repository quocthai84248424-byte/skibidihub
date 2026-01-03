local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Redz Hub Clone | Blox Fruits", HidePremium = false, SaveConfig = true, ConfigFolder = "RedzConfig"})

-- Biến hệ thống
_G.AutoFarm = false
_G.FastAttack = false
_G.AutoStats = false

-- Hàm Fast Attack (Đánh nhanh)
local function doFastAttack()
    spawn(function()
        while _G.FastAttack do
            task.wait(0.05)
            pcall(function()
                local Combat = game:GetService("VirtualUser")
                Combat:CaptureController()
                Combat:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").CurrentCamera.CFrame)
            end)
        end
    end)
end

-- Tab Chính
local MainTab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

MainTab:AddToggle({
	Name = "Auto Farm Level",
	Default = false,
	Callback = function(Value)
		_G.AutoFarm = Value
		if Value then
            print("Đã bật Auto Farm")
            -- Code logic nhận nhiệm vụ và đánh quái sẽ nằm ở đây
        end
	end    
})

MainTab:AddToggle({
	Name = "Fast Attack (Siêu nhanh)",
	Default = false,
	Callback = function(Value)
		_G.FastAttack = Value
		if Value then doFastAttack() end
	end    
})

-- Tab Chỉ số (Stats)
local StatsTab = Window:MakeTab({
	Name = "Stats",
	Icon = "rbxassetid://4483362458",
	PremiumOnly = false
})

StatsTab:AddToggle({
	Name = "Auto Stats (Melee/Def/Sword)",
	Default = false,
	Callback = function(Value)
		_G.AutoStats = Value
	end    
})

-- Tab Dịch chuyển (Teleport)
local TeleportTab = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

TeleportTab:AddButton({
	Name = "Teleport to Sea 1",
	Callback = function()
        -- Code dịch chuyển Sea 1
	end    
})

TeleportTab:AddButton({
	Name = "Teleport to Sea 2",
	Callback = function()
        -- Code dịch chuyển Sea 2
	end    
})

-- Tab Cài đặt
local ConfigTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

ConfigTab:AddButton({
	Name = "Destroy Script (Tắt Menu)",
	Callback = function()
        OrionLib:Destroy()
	end    
})

OrionLib:Init()
