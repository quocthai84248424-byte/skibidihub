
-- [[ SKIBIDI HUB - BLOX FRUITS ]] --
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Tạo Menu (Sửa tên theo ý bạn tại đây)
local Window = OrionLib:MakeWindow({
    Name = "Skibidi Hub | By ilovedog1901ilovecat5551", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "SkibidiConfig"
})

-- Biến hệ thống
_G.AutoFarm = false
_G.FastAttack = false

-- Hàm Đánh nhanh
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
	Name = "Main",
	Icon = "",
	PremiumOnly = false
})

MainTab:AddToggle({
	Name = "Auto Farm Level",
	Default = false,
	Callback = function(Value)
		_G.AutoFarm = Value
	end    
})

MainTab:AddToggle({
	Name = "Fast Attack",
	Default = false,
	Callback = function(Value)
		_G.FastAttack = Value
		if Value then doFastAttack() end
	end    
})

-- Thông báo khi bật
OrionLib:MakeNotification({
    Name = "Skibidi Hub",
    Content = "Chào mừng ilovedog1901ilovecat5551!",
    Time = 5
})

OrionLib:Init()
