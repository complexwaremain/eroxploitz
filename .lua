local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Eroxploitz " .. Fluent.Version,
    SubTitle = "by wakp",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Aqua",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

Fluent:Notify({
        Title = "Eroxploitz",
        Content = "Welcome To Eroxploitz Hub",
        SubContent = "",
        Duration = 5
    })

     Tabs.Main:AddParagraph({
        Title = "Eroxploitz Hub",
        Content = "This is The Best Roblox Hub."
    })

        Tabs.Main:AddButton({
        Title = "Button",
        Description = "Execute Script",
        Callback = function()
            Window:Dialog({
                Title = "Are You Sure You Wanna Execute This Script?",
                Content = "Confirm Or Cancel.",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            Fluent:Notify({
        Title = "Eroxploitz",
        Content = "Script Executed!",
        SubContent = "Sucessfully Executed Script!",
        Duration = 5
    })

    print("executed")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            Fluent:Notify({
        Title = "Eroxploitz",
        Content = "Cancelled The Execution.",
        SubContent = "Cancelled!",
        Duration = 5
    })
                        end
                    }
                }
            })
        end
    })
