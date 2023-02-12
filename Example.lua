local Rayfield = game:HttpGet("https://raw.githubusercontent.com/carolesdaughter/Roblox-Rayfield-UI/main/Source.lua", true)

local Library = loadstring(Rayfield)()

local Window = Library:CreateWindow({
    Name = "Magnet's Test UI",
    LoadingTitle = "Magnet was here ^_^",
    ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "MagnetWasHere"
   },
   Discord = {
      Enabled = false,
      Invite = "", 
      RememberJoins = true
   },
   KeySystem = false
})

local Main = Window:CreateTab("Main")
local Button = Main:CreateButton({
   Name = "Test",
   Callback = function()
       print("Hi")
   end
})
local Toggle = Main:CreateToggle({
   Name = "Test",
   CurrentValue = false,
   Flag = "TestToggle",
   Callback = function(Value)
        print(Value)
   end
})
local Slider = Main:CreateSlider({
   Name = "Test",
   Range = {0, 50},
   Increment = 0.1,
   Suffix = "Test",
   CurrentValue = 10,
   Flag = "TestSlider",
   Callback = function(Value)
        print(Value)
   end,
})
local Dropdown = Main:CreateDropdown({
   Name = "Test",
   Options = {"Test","Test"},
   CurrentOption = "Test",
   Flag = "TestDropdown",
   Callback = function(Option)
        print(Option)
   end,
})
