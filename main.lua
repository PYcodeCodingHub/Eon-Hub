debugX = true

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Eon Hub V8",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Eon Hub",
   LoadingSubtitle = "V8.0",
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Eon Executor",
      Subtitle = "Key System",
      Note = "Read the Eon Key from the Github Site", -- Use this to tell the user how to get a key
      FileName = "Keyonsystm", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"ADMIN"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Admin", 4483362458) -- Title, Image

local Section = Tab:CreateSection("InfiniteYield")

local button = Tab:CreateButton({
   Name = "Load Infinite Yield",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end,
})

local LemonTab = Window:CreateTab("Chat", 4483362458) -- Title, Image

local Section = LemonTab:CreateSection("Send Message")

local Input = LemonTab:CreateInput({
    Name = "Chat Spam Input",
    PlaceholderText = "Type your message here",
    RemoveTextAfterFocusLost = false, -- Will remove the text after focus is lost
    Callback = function(Value)
       local player = game.Players.LocalPlayer
       local chatService = game:GetService("Chat")
       local message = Value
       local delayTime = 0.5 -- Delay between messages in seconds
 
       while true do
          wait(delayTime)
          chatService:Chat(player.Character.Head, message, Enum.ChatColor.Blue)
       end
    end,
 })
 
Rayfield:LoadConfiguration()
