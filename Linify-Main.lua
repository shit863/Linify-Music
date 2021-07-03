local DefaultSongList = {
    {"Dorime 🙏🙏🙏",4643823821};
    {"Skillet - The Resistance",2636407402};
    {"Skillet - Monster",3340106738};
    {"Skillet - Invincible",3190096555};
    {"Seven Nation Army [Glitch Mob Remix]",534429024};
    {"Luna - Waste My Life",5628706931};
    {"K-391 - Earth",624671362};
    {"Neffex - Fight Back",2776462258};
    {"NCS - Why We Lose",2065266416};
    {"NCS - Jarico Landscape",4958747314};
    {"NCS - Max Brhon - Cyberpunk",4613987194};
    {"NCS - Giraffe Squad Wait For Me",1108980597};
    {"Alan Walker - Faded",693428358};
    {"Alan Walker - Spectre",1066547712};
}

local Name = "LinifyMusicSongList.json" --The name of our file that will be in our exploits workspace folder
local CurrentSongList

if not pcall(function() readfile(Name) end) then writefile(Name, game:service'HttpService':JSONEncode(DefaultSongList)) end --if readfile errors (it will if it doesn't exist) then create a new file with our name and use JSONEncode to encode our table

CurrentSongList = game:service'HttpService':JSONDecode(readfile(Name)) --This will return a table populated with our contents, so now you could do JSON.DidTeleport and it would print true

local function Save()
writefile(Name,game:service'HttpService':JSONEncode(CurrentSongList))
end

local function resetToDefaults()
writefile(Name, game:service'HttpService':JSONEncode(DefaultSongList))
end

if #CurrentSongList < 1 then
    resetToDefaults()
end   

local RS = game:GetService("RunService")
local MusicPlayerZ = Instance.new("ScreenGui")
local MainBody = Instance.new("ImageButton")
local PlayBar = Instance.new("ImageLabel")
local SongName = Instance.new("TextLabel")
local BackgroundTPB = Instance.new("ImageLabel")
local TogglePlayingButton = Instance.new("ImageButton")
local SliderOuter = Instance.new("ImageLabel")
local SliderInner = Instance.new("ImageLabel")
local SliderInnerButton = Instance.new("TextButton")
local BackgroundRS = Instance.new("ImageLabel")
local ToggleRepeatSong = Instance.new("ImageButton")
local ListBackground = Instance.new("ImageLabel")
local ListScrollingFrame = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local TitleBar = Instance.new("ImageLabel")
local UIGradient1 = Instance.new("UIGradient")
local Title = Instance.new("TextLabel")
local LinifyMinimizedLogo = Instance.new("ImageLabel")
local SearchBarInner = Instance.new("ImageLabel")
local SearchBarTextBox = Instance.new("TextBox")
local SearchIcon = Instance.new("ImageLabel")
local SearchBarBackground = Instance.new("ImageLabel")
local UIGradient2 = Instance.new("UIGradient")
local SearchBarInner = Instance.new("ImageLabel")
local SearchBarTextBox = Instance.new("TextBox")
local SearchIcon = Instance.new("ImageLabel")
local AddSongBackground = Instance.new("ImageLabel")
local UIGradient4 = Instance.new("UIGradient")
local AddSongInner = Instance.new("ImageLabel")
local AddSongButton = Instance.new("TextButton")
local RemoveSongBackground = Instance.new("ImageLabel")
local UIGradient5 = Instance.new("UIGradient")
local RemoveSongInner = Instance.new("ImageLabel")
local RemoveSongButton = Instance.new("TextButton")
local AddSongFBackground = Instance.new("ImageLabel")
local UIGradient6 = Instance.new("UIGradient")
local AddSongFInner = Instance.new("ImageLabel")
local EnterSongNameOuter = Instance.new("ImageLabel")
local UIGradient7 = Instance.new("UIGradient")
local EnterSongNameInner = Instance.new("ImageLabel")
local EnterSongNameBarTextBox = Instance.new("TextBox")
local EnterSongIdNameOuter = Instance.new("ImageLabel")
local UIGradient8 = Instance.new("UIGradient")
local EnterSongIdNameInner = Instance.new("ImageLabel")
local EnterSongIdTextbox = Instance.new("TextBox")
local AddSongFOuter = Instance.new("ImageLabel")
local UIGradient9 = Instance.new("UIGradient")
local AddSongFInner_2 = Instance.new("ImageLabel")
local AddSongFButton = Instance.new("TextButton")
local CancelAddingSongBackground = Instance.new("ImageLabel")
local UIGradient10 = Instance.new("UIGradient")
local CancelAddingSongInner = Instance.new("ImageLabel")
local CancelAddingSongButton = Instance.new("TextButton")
local BackgroundBS = Instance.new("ImageLabel")
local ToggleBackwardSong = Instance.new("ImageButton")
local BackgroundFS = Instance.new("ImageLabel")
local ToggleForwardSong = Instance.new("ImageButton")
local BackgroundSM = Instance.new("ImageLabel")
local ToggleSongMute = Instance.new("ImageButton")
local Tooltip = Instance.new("Frame")
local TMF = Instance.new("ImageLabel")
local TitleToolTip = Instance.new("TextLabel")
local DescriptionToolTip = Instance.new("TextLabel")
local SongTime = Instance.new("TextLabel")
local BackgroundBlur = Instance.new("ImageLabel")
local CurrentSongId = ""--4643823821
local Volume = 0.5
local SoundMuted = false
local SoundPlaying = false
local CurrentSoundInstance = Instance.new("Sound",MusicPlayerZ)
CurrentSoundInstance.Name = "SongSound"
local PauseButtonimg = [[http://www.roblox.com/asset/?id=5633688715]]
local PlayButtonimg = [[http://www.roblox.com/asset/?id=5633688356]]
local SoundMutedIcon = [[http://www.roblox.com/asset/?id=5634368157]]
local SoundPlayingIcon = [[http://www.roblox.com/asset/?id=5630499229]]
local SelectedSongFrame
local ChangingVal = false
local LoopSongs = false
local SelectedSongIndex
local SongNameP
local Player = game.Players.LocalPlayer
local dragging
local dragInput
local dragStart
local startPos
local UIS = game:GetService("UserInputService")
local mouse = Player:GetMouse()
local maxvalue = 588
local minvalue = 0

MusicPlayerZ.Name = "MusicPlayerZ"
MusicPlayerZ.Parent = game.CoreGui

MainBody.Name = "MainBody"
MainBody.Parent = MusicPlayerZ
MainBody.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainBody.BackgroundTransparency = 1.000
MainBody.Position = UDim2.new(0.315, 0,0.245, 0)
MainBody.Size = UDim2.new(0, 721, 0, 556)
MainBody.Image = "rbxassetid://3570695787"
MainBody.ImageColor3 = Color3.fromRGB(30, 30, 30)
MainBody.ScaleType = Enum.ScaleType.Slice
MainBody.SliceCenter = Rect.new(100, 100, 100, 100)
MainBody.SliceScale = 0.120

BackgroundBlur.Name = "BackgroundBlur"
BackgroundBlur.Parent = MainBody
BackgroundBlur.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BackgroundBlur.BackgroundTransparency = 1.000
BackgroundBlur.Position = UDim2.new(-0.0540914536, 0, -0.0485611521, 0)
BackgroundBlur.Size = UDim2.new(1.10402226, 0, 1.10071945, 0)
BackgroundBlur.Image = "rbxassetid://4962098052"
BackgroundBlur.ImageColor3 = Color3.fromRGB(0, 0, 0)

Tooltip.Name = "Tooltip"
Tooltip.Parent = MusicPlayerZ
Tooltip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tooltip.BackgroundTransparency = 1.000
Tooltip.BorderSizePixel = 0
Tooltip.Position = UDim2.new(0.490201443, 0, 0.579037011, 0)
Tooltip.Size = UDim2.new(0, 33, 0, 35)
Tooltip.ZIndex = 10000
Tooltip.Visible = false

TMF.Name = "TMF"
TMF.Parent = Tooltip
TMF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TMF.BackgroundTransparency = 1.000
TMF.Position = UDim2.new(0.550807118, 0, 0.49332276, 0)
TMF.Size = UDim2.new(0, 175, 0, 66)
TMF.ZIndex = 6
TMF.Image = "rbxassetid://3570695787"
TMF.ImageColor3 = Color3.fromRGB(30, 30, 30)
TMF.ScaleType = Enum.ScaleType.Slice
TMF.SliceCenter = Rect.new(100, 100, 100, 100)
TMF.SliceScale = 0.120

TitleToolTip.Name = "Title"
TitleToolTip.Parent = TMF
TitleToolTip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleToolTip.BackgroundTransparency = 1.000
TitleToolTip.Size = UDim2.new(0, 175, 0, 28)
TitleToolTip.ZIndex = 6
TitleToolTip.Font = Enum.Font.GothamSemibold
TitleToolTip.Text = "Test"
TitleToolTip.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleToolTip.TextScaled = true
TitleToolTip.TextSize = 14.000
TitleToolTip.TextWrapped = true

DescriptionToolTip.Name = "Description"
DescriptionToolTip.Parent = TMF
DescriptionToolTip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DescriptionToolTip.BackgroundTransparency = 1.000
DescriptionToolTip.Position = UDim2.new(0, 0, 0.424242437, 0)
DescriptionToolTip.Size = UDim2.new(0, 175, 0, 37)
DescriptionToolTip.ZIndex = 6
DescriptionToolTip.Font = Enum.Font.Gotham
DescriptionToolTip.Text = "Description"
DescriptionToolTip.TextScaled = true
DescriptionToolTip.TextColor3 = Color3.fromRGB(111, 111, 111)
DescriptionToolTip.TextSize = 30.000
DescriptionToolTip.TextWrapped = true
DescriptionToolTip.TextYAlignment = Enum.TextYAlignment.Top

function ToolTipHover(text,description)
    text = text or "Invalid String"
    description = description or "Invalid String"
    Tooltip.Visible = true
    TitleToolTip.Text = tostring(text)
    DescriptionToolTip.Text = tostring(description)
end

function ToolTipHoverEnd()
    Tooltip.Visible = false
    TitleToolTip.Text = ""
    DescriptionToolTip.Text = ""
end    
    
local function update(Input)
    local delta = Input.Position - dragStart
    MainBody.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

local function toMS(s)
	return ("%02i:%02i"):format(s/60%60, s%60)
end

MainBody.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = Input.Position
        startPos = MainBody.Position
        
        Input.Changed:Connect(function()
            if Input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end    
end)

MainBody.InputChanged:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
        dragInput = Input
    end
end)

UIS.InputChanged:Connect(function(Input)
    if Input == dragInput and dragging then
        update(Input)
    end
end)

--Add Song Dragging
local draggingAS
local dragInputAS
local dragStartAS
local startPosAS
local function updateAS(Input)
    local deltaAS = Input.Position - dragStartAS
    AddSongFBackground.Position = UDim2.new(startPosAS.X.Scale, startPosAS.X.Offset + deltaAS.X, startPosAS.Y.Scale, startPosAS.Y.Offset + deltaAS.Y)
end

AddSongFBackground.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
        draggingAS = true
        dragStartAS = Input.Position
        startPosAS = AddSongFBackground.Position
        
        Input.Changed:Connect(function()
            if Input.UserInputState == Enum.UserInputState.End then
                draggingAS = false
            end
        end)
    end    
end)

AddSongFBackground.InputChanged:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
        dragInputAS = Input
    end
end)

UIS.InputChanged:Connect(function(Input)
    if Input == dragInputAS and draggingAS then
        updateAS(Input)
    end
end)


UIS.InputBegan:Connect(function(Input)
    if Input.KeyCode == Enum.KeyCode.Semicolon then
        MainBody.Visible = not MainBody.Visible
        if MainBody.Visible == true then
            MainBody.Position = UDim2.new(0.315, 0,0.245, 0)
        else
            MainBody.Position = UDim2.new(0.315, 0,0.245, 0)
        end    
    end
end)    

TitleBar.Name = "TitleBar"
TitleBar.Parent = MainBody
TitleBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleBar.BackgroundTransparency = 1.000
TitleBar.Position = UDim2.new(0.0138696255, 0, 0.0215827338, 0)
TitleBar.Size = UDim2.new(0, 702, 0, 33)
TitleBar.Image = "rbxassetid://3570695787"
TitleBar.ScaleType = Enum.ScaleType.Slice
TitleBar.SliceCenter = Rect.new(100, 100, 100, 100)
TitleBar.SliceScale = 0.040

UIGradient1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(138, 4, 255)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(147, 55, 232)), ColorSequenceKeypoint.new(0.34, Color3.fromRGB(150, 41, 227)), ColorSequenceKeypoint.new(0.79, Color3.fromRGB(133, 1, 177)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(87, 9, 132)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(87, 9, 132))}
UIGradient1.Parent = TitleBar

Title.Name = "Title"
Title.Parent = TitleBar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(0, 702, 0, 33)
Title.Text = "Linify Music"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
Title.Font = Enum.Font.GothamSemibold

LinifyMinimizedLogo.Name = "Linify Minimized Logo"
LinifyMinimizedLogo.Parent = TitleBar
LinifyMinimizedLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LinifyMinimizedLogo.BackgroundTransparency = 1.000
LinifyMinimizedLogo.BorderSizePixel = 0
LinifyMinimizedLogo.Position = UDim2.new(-0.000932481547, 0, 0, 0)
LinifyMinimizedLogo.Size = UDim2.new(0, 49, 0, 32)
LinifyMinimizedLogo.Image = "http://www.roblox.com/asset/?id=5629136460"

PlayBar.Name = "PlayBar"
PlayBar.Parent = MainBody
PlayBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayBar.BackgroundTransparency = 1.000
PlayBar.Position = UDim2.new(0.0138696255, 0, 0.848920882, 0)
PlayBar.Size = UDim2.new(0, 702, 0, 77)
PlayBar.Image = "rbxassetid://3570695787"
PlayBar.ImageColor3 = Color3.fromRGB(15, 15, 15)
PlayBar.ScaleType = Enum.ScaleType.Slice
PlayBar.SliceCenter = Rect.new(100, 100, 100, 100)
PlayBar.SliceScale = 0.120

SongTime.Name = "SongTime"
SongTime.Parent = PlayBar
SongTime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SongTime.BackgroundTransparency = 1.000
SongTime.Position = UDim2.new(0.733618259, 0, 0.0190001652, 0)
SongTime.Size = UDim2.new(0, 139, 0, 35)
SongTime.Font = Enum.Font.GothamSemibold
SongTime.Text = "00:00/00:00"
SongTime.TextColor3 = Color3.fromRGB(255, 255, 255)
SongTime.TextScaled = true
SongTime.TextSize = 14.000
SongTime.TextWrapped = true
SongTime.MouseEnter:Connect(function()ToolTipHover("Music Timeline","Shows the music timeline in minutes")end)
SongTime.MouseLeave:Connect(function()ToolTipHoverEnd()end)

SongName.Name = "SongName"
SongName.Parent = PlayBar
SongName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SongName.BackgroundTransparency = 1.000
SongName.Position = UDim2.new(0.301994294, 0, 0, 0)
SongName.Size = UDim2.new(0, 291, 0, 35)
SongName.Font = Enum.Font.SourceSans
SongName.Text = "Now Playing  Song Name"
SongName.TextColor3 = Color3.fromRGB(255, 255, 255)
SongName.TextScaled = true
SongName.TextSize = 14.000
SongName.TextWrapped = true
SongName.MouseEnter:Connect(function()ToolTipHover(SongName.Text,(SongNameP~=nil) and SongNameP.." Is Selected" or "No Music Selected")end)
SongName.MouseLeave:Connect(function()ToolTipHoverEnd()end)

BackgroundTPB.Name = "BackgroundTPB"
BackgroundTPB.Parent = PlayBar
BackgroundTPB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BackgroundTPB.BackgroundTransparency = 1.000
BackgroundTPB.Position = UDim2.new(0.023841098, 0, 0.12164782, 0)
BackgroundTPB.Size = UDim2.new(0, 65, 0, 57)
BackgroundTPB.Image = "rbxassetid://3570695787"
BackgroundTPB.ImageColor3 = Color3.fromRGB(15, 15, 15)
BackgroundTPB.ScaleType = Enum.ScaleType.Slice
BackgroundTPB.SliceCenter = Rect.new(100, 100, 100, 100)
BackgroundTPB.SliceScale = 0.120

TogglePlayingButton.Name = "TogglePlayingButton"
TogglePlayingButton.Parent = BackgroundTPB
TogglePlayingButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TogglePlayingButton.BackgroundTransparency = 1.000
TogglePlayingButton.Position = UDim2.new(0.105227262, 0, 0.129869968, 0)
TogglePlayingButton.Size = UDim2.new(0, 54, 0, 43)
TogglePlayingButton.Image = PlayButtonimg
TogglePlayingButton.MouseButton1Click:Connect(function()
    if CurrentSongId == "" or CurrentSongId == nil then

    else
        SoundPlaying = not SoundPlaying
        if SoundPlaying == true then  
            if CurrentSoundInstance.TimePosition <= 0 then
                CurrentSoundInstance:Play()
            elseif CurrentSoundInstance.TimePosition > 0 then
                CurrentSoundInstance:Resume()
            end    
            BackgroundTPB.ImageColor3 = Color3.fromRGB(30, 30, 30)
            TogglePlayingButton.Image = PauseButtonimg
        else
            if CurrentSoundInstance.TimePosition <= 0 then
                CurrentSoundInstance:Stop()
            elseif CurrentSoundInstance.TimePosition > 0 then
                CurrentSoundInstance:Pause()
            end     
            BackgroundTPB.ImageColor3 = Color3.fromRGB(15, 15, 15)
            TogglePlayingButton.Image = PlayButtonimg
        end
    end    
end)    
TogglePlayingButton.MouseEnter:Connect(function()ToolTipHover("Play/Pause Button","Plays the Selected Song.")end)
TogglePlayingButton.MouseLeave:Connect(function()ToolTipHoverEnd()end)


ListBackground.Name = "ListBackground"
ListBackground.Parent = MainBody
ListBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ListBackground.BackgroundTransparency = 1.000
ListBackground.Position = UDim2.new(0.014, 0,0.097, 0)
ListBackground.Size = UDim2.new(0, 702,0, 361)
ListBackground.Image = "rbxassetid://3570695787"
ListBackground.ImageColor3 = Color3.fromRGB(15, 15, 15)
ListBackground.ScaleType = Enum.ScaleType.Slice
ListBackground.SliceCenter = Rect.new(100, 100, 100, 100)
ListBackground.SliceScale = 0.120

ListScrollingFrame.Name = "ListScrollingFrame"
ListScrollingFrame.Parent = ListBackground
ListScrollingFrame.Active = true
ListScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ListScrollingFrame.BackgroundTransparency = 1.000
ListScrollingFrame.BorderSizePixel = 0
ListScrollingFrame.Position = UDim2.new(0.0142450146, 0, 0.0107238609, 0)
ListScrollingFrame.Size = UDim2.new(0.97863245, 0, 0.975871325, 0)
ListScrollingFrame.CanvasPosition = Vector2.new(0, 2.04945064)
ListScrollingFrame.ScrollBarThickness = 8
ListScrollingFrame.CanvasSize = UDim2.new(0,682,0,0)

UIGridLayout.Parent = ListScrollingFrame
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 682, 0, 101)

--SearchBar

SearchBarBackground.Name = "SearchBarBackground"
SearchBarBackground.Parent = MainBody
SearchBarBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SearchBarBackground.BackgroundTransparency = 1.000
SearchBarBackground.Position = UDim2.new(0.0138696255, 0, 0.760791361, 0)
SearchBarBackground.Size = UDim2.new(0, 279, 0, 42)
SearchBarBackground.Image = "rbxassetid://3570695787"
SearchBarBackground.ScaleType = Enum.ScaleType.Slice
SearchBarBackground.SliceCenter = Rect.new(100, 100, 100, 100)
SearchBarBackground.SliceScale = 0.040

UIGradient2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(138, 4, 255)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(147, 55, 232)), ColorSequenceKeypoint.new(0.34, Color3.fromRGB(150, 41, 227)), ColorSequenceKeypoint.new(0.79, Color3.fromRGB(133, 1, 177)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(87, 9, 132)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(87, 9, 132))}
UIGradient2.Parent = SearchBarBackground

SearchBarInner.Name = "SearchBarInner"
SearchBarInner.Parent = SearchBarBackground
SearchBarInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SearchBarInner.BackgroundTransparency = 1.000
SearchBarInner.Position = UDim2.new(0, 5, 0.142857149, 0)
SearchBarInner.Size = UDim2.new(0, 268, 0, 30)
SearchBarInner.Image = "rbxassetid://3570695787"
SearchBarInner.ImageColor3 = Color3.fromRGB(15, 15, 15)
SearchBarInner.ScaleType = Enum.ScaleType.Slice
SearchBarInner.SliceCenter = Rect.new(100, 100, 100, 100)
SearchBarInner.SliceScale = 0.040

SearchBarTextBox.Name = "SearchBarTextBox"
SearchBarTextBox.Parent = SearchBarInner
SearchBarTextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SearchBarTextBox.BackgroundTransparency = 1.000
SearchBarTextBox.BorderSizePixel = 0
SearchBarTextBox.Size = UDim2.new(0, 238, 0, 30)
SearchBarTextBox.Font = Enum.Font.SourceSans
SearchBarTextBox.PlaceholderText = "Search For Songs"
SearchBarTextBox.Text = ""
SearchBarTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchBarTextBox.TextScaled = true
SearchBarTextBox.TextSize = 14.000
SearchBarTextBox.TextWrapped = true
SearchBarTextBox.TextXAlignment = Enum.TextXAlignment.Left

SearchIcon.Name = "SearchIcon"
SearchIcon.Parent = SearchBarInner
SearchIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SearchIcon.BackgroundTransparency = 1.000
SearchIcon.Position = UDim2.new(0.888059676, 0, 0, 0)
SearchIcon.Size = UDim2.new(0, 30, 0, 30)
SearchIcon.Image = "http://www.roblox.com/asset/?id=5630728549"

SearchBarTextBox:GetPropertyChangedSignal("Text"):Connect(function()
    if SearchBarTextBox.Text ~= nil or SearchBarTextBox.Text ~= "" then
        for I,Frame in pairs(ListScrollingFrame:GetChildren()) do
            if Frame:IsA("ImageLabel") or Frame:IsA("Frame") then
                if string.match(Frame.SongName.Text:lower(),SearchBarTextBox.Text:lower()) then
                    Frame.Visible = true
                else
                    Frame.Visible = false 
                end    
            end    
        end    
    else
        for I,Frame in pairs(ListScrollingFrame:GetChildren()) do
            if Frame:IsA("ImageLabel") or Frame:IsA("Frame") then
                Frame.Visible = true
            end    
        end            
    end    
end)    
SearchBarTextBox.MouseEnter:Connect(function()ToolTipHover("Search Bar","Searches the song list for a song.")end)
SearchBarTextBox.MouseLeave:Connect(function()ToolTipHoverEnd()end)

SliderOuter.Name = "SliderOuter"
SliderOuter.Parent = PlayBar
SliderOuter.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SliderOuter.BorderSizePixel = 0
SliderOuter.BackgroundTransparency = 1
SliderOuter.Position = UDim2.new(0.131, 0,0.455, 0)
SliderOuter.Size = UDim2.new(0, 602,0, 31)
SliderOuter.ClipsDescendants = true
SliderOuter.Image = "rbxassetid://3570695787"
SliderOuter.ScaleType = Enum.ScaleType.Slice
SliderOuter.SliceCenter = Rect.new(100, 100, 100, 100)
SliderOuter.SliceScale = 0.06
SliderOuter.ImageColor3 = Color3.fromRGB(30,30,30)

SliderInner.Name = "SliderInner"
SliderInner.Parent = SliderOuter
SliderInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderInner.BackgroundTransparency = 1.000
SliderInner.Position = UDim2.new(0.0114528108, 0, 0.209764048, 0)
SliderInner.Size = UDim2.new(0, 588, 0.579999983, 0)
SliderInner.Image = "rbxassetid://3570695787"
SliderInner.ScaleType = Enum.ScaleType.Slice
SliderInner.SliceCenter = Rect.new(100, 100, 100, 100)
SliderInner.SliceScale = 0.060

SliderInnerButton.Name = "SliderInner"
SliderInnerButton.Parent = SliderOuter
SliderInnerButton.BackgroundTransparency = 1
SliderInnerButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderInnerButton.BorderSizePixel = 0
SliderInnerButton.Position = UDim2.new(-0.000175095876, 0, -0.0160414744, 0)
SliderInnerButton.Size = UDim2.new(1, 0, 1, 0)
SliderInnerButton.ZIndex = 5
SliderInnerButton.TextTransparency = 1

BackgroundRS.Name = "BackgroundRS"
BackgroundRS.Parent = PlayBar
BackgroundRS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BackgroundRS.BackgroundTransparency = 1.000
BackgroundRS.Position = UDim2.new(0.130999997, 0, 0.0189999994, 0)
BackgroundRS.Size = UDim2.new(0, 31, 0, 29)
BackgroundRS.Image = "rbxassetid://3570695787"
BackgroundRS.ImageColor3 = Color3.fromRGB(15, 15, 15)
BackgroundRS.ScaleType = Enum.ScaleType.Slice
BackgroundRS.SliceCenter = Rect.new(100, 100, 100, 100)
BackgroundRS.SliceScale = 0.060

ToggleRepeatSong.Name = "ToggleRepeatSong"
ToggleRepeatSong.Parent = BackgroundRS
ToggleRepeatSong.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleRepeatSong.BackgroundTransparency = 1.000
ToggleRepeatSong.Position = UDim2.new(-0.00550694624, 0, -0.0126511147, 0)
ToggleRepeatSong.Size = UDim2.new(0, 31, 0, 29)
ToggleRepeatSong.Image = "http://www.roblox.com/asset/?id=5628574436"
ToggleRepeatSong.MouseButton1Click:Connect(function()
    LoopSongs = not LoopSongs
    CurrentSoundInstance.Looped = LoopSongs
    if LoopSongs == true then
        BackgroundRS.ImageColor3 = Color3.fromRGB(30, 30, 30)
    else
        BackgroundRS.ImageColor3 = Color3.fromRGB(15, 15, 15)
    end   
end)    
ToggleRepeatSong.MouseEnter:Connect(function()ToolTipHover("Repeat Song Button","Repeats the song when enabled.")end)
ToggleRepeatSong.MouseLeave:Connect(function()ToolTipHoverEnd()end)

BackgroundBS.Name = "BackgroundBS"
BackgroundBS.Parent = PlayBar
BackgroundBS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BackgroundBS.BackgroundTransparency = 1.000
BackgroundBS.Position = UDim2.new(0.185000002, 0, 0.0189999994, 0)
BackgroundBS.Size = UDim2.new(0, 31, 0, 29)
BackgroundBS.Image = "rbxassetid://3570695787"
BackgroundBS.ImageColor3 = Color3.fromRGB(15, 15, 15)
BackgroundBS.ScaleType = Enum.ScaleType.Slice
BackgroundBS.SliceCenter = Rect.new(100, 100, 100, 100)
BackgroundBS.SliceScale = 0.060

ToggleBackwardSong.Name = "ToggleBackwardSong"
ToggleBackwardSong.Parent = BackgroundBS
ToggleBackwardSong.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleBackwardSong.BackgroundTransparency = 1.000
ToggleBackwardSong.Position = UDim2.new(-0.00550694624, 0, -0.0126511147, 0)
ToggleBackwardSong.Size = UDim2.new(0, 31, 0, 29)
ToggleBackwardSong.Image = "http://www.roblox.com/asset/?id=5633689452"
ToggleBackwardSong.MouseButton1Click:Connect(function()
    if CurrentSongId == "" or CurrentSongId == nil then

    else
        if CurrentSoundInstance.TimeLength < 10 then
            CurrentSoundInstance.TimePosition = 0
        elseif CurrentSoundInstance.TimeLength > 10 then
            if CurrentSoundInstance.TimePosition < 10 then
                CurrentSoundInstance.TimePosition = 0
            else
                CurrentSoundInstance.TimePosition = CurrentSoundInstance.TimePosition - 10
            end    
        end    
        BackgroundBS.ImageColor3 = Color3.fromRGB(30,30,30)
        wait(0.4)
        BackgroundBS.ImageColor3 = Color3.fromRGB(15,15,15)
    end    
end)    
ToggleBackwardSong.MouseEnter:Connect(function()ToolTipHover("Backward Song","Backwards the song by 10 seconds.")end)
ToggleBackwardSong.MouseLeave:Connect(function()ToolTipHoverEnd()end)

BackgroundFS.Name = "BackgroundFS"
BackgroundFS.Parent = PlayBar
BackgroundFS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BackgroundFS.BackgroundTransparency = 1.000
BackgroundFS.Position = UDim2.new(0.239999995, 0, 0.0189999994, 0)
BackgroundFS.Size = UDim2.new(0, 31, 0, 29)
BackgroundFS.Image = "rbxassetid://3570695787"
BackgroundFS.ImageColor3 = Color3.fromRGB(15, 15, 15)
BackgroundFS.ScaleType = Enum.ScaleType.Slice
BackgroundFS.SliceCenter = Rect.new(100, 100, 100, 100)
BackgroundFS.SliceScale = 0.060

ToggleForwardSong.Name = "ToggleForwardSong"
ToggleForwardSong.Parent = BackgroundFS
ToggleForwardSong.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleForwardSong.BackgroundTransparency = 1.000
ToggleForwardSong.Position = UDim2.new(-0.00550694624, 0, -0.0126511147, 0)
ToggleForwardSong.Size = UDim2.new(0, 31, 0, 29)
ToggleForwardSong.Image = "http://www.roblox.com/asset/?id=5633689074"
ToggleForwardSong.MouseButton1Click:Connect(function()
    if CurrentSongId == "" or CurrentSongId == nil then

    else
        if CurrentSoundInstance.TimeLength < 10 then
            CurrentSoundInstance.TimePosition = CurrentSoundInstance.TimeLength
        elseif CurrentSoundInstance.TimeLength > 10 then
            CurrentSoundInstance.TimePosition = CurrentSoundInstance.TimePosition + 10
        end    
        BackgroundFS.ImageColor3 = Color3.fromRGB(30,30,30)
        wait(0.4)
        BackgroundFS.ImageColor3 = Color3.fromRGB(15,15,15) 
    end    
end)    
ToggleForwardSong.MouseEnter:Connect(function()ToolTipHover("Forward Song","Forwards the song by 10 seconds.")end)
ToggleForwardSong.MouseLeave:Connect(function()ToolTipHoverEnd()end)

BackgroundSM.Name = "BackgroundSM"
BackgroundSM.Parent = PlayBar
BackgroundSM.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BackgroundSM.BackgroundTransparency = 1.000
BackgroundSM.Position = UDim2.new(0.949999988, 0, 0.0189999994, 0)
BackgroundSM.Size = UDim2.new(0, 31, 0, 29)
BackgroundSM.Image = "rbxassetid://3570695787"
BackgroundSM.ImageColor3 = Color3.fromRGB(15, 15, 15)
BackgroundSM.ScaleType = Enum.ScaleType.Slice
BackgroundSM.SliceCenter = Rect.new(100, 100, 100, 100)
BackgroundSM.SliceScale = 0.060

ToggleSongMute.Name = "ToggleSongMute"
ToggleSongMute.Parent = BackgroundSM
ToggleSongMute.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleSongMute.BackgroundTransparency = 1.000
ToggleSongMute.Position = UDim2.new(-0.00550694624, 0, -0.0126511147, 0)
ToggleSongMute.Size = UDim2.new(0, 31, 0, 29)
ToggleSongMute.Image = "http://www.roblox.com/asset/?id=5630499229"
ToggleSongMute.MouseButton1Click:Connect(function()
    SoundMuted = not SoundMuted
    if SoundMuted then
        ToggleSongMute.Image = SoundMutedIcon
        BackgroundSM.ImageColor3 = Color3.fromRGB(30,30,30)
        Volume = 0
    else
        BackgroundSM.ImageColor3 = Color3.fromRGB(15,15,15)  
        ToggleSongMute.Image = SoundPlayingIcon
        Volume = 0.5
    end    
end)    
ToggleSongMute.MouseEnter:Connect(function()ToolTipHover("Song Volume","Mutes/Unmutes the song.")end)
ToggleSongMute.MouseLeave:Connect(function()ToolTipHoverEnd()end)

RS.RenderStepped:Connect(function()
    Save()
    CurrentSoundInstance.Volume = Volume
    Tooltip.Position = UDim2.new(0,mouse.x,0,mouse.y)
    if CurrentSongId == "" or CurrentSongId == nil then
        SongTime.Text = "00:00/00:00"
        SongName.Text = "No Music Selected"
        SliderInner.Size = UDim2.new(0,0,0.58,0)   
        RemoveSongBackground.Visible = false
    else 
        SongTime.Text = toMS(CurrentSoundInstance.TimePosition).."/"..toMS(CurrentSoundInstance.TimeLength)
        RemoveSongBackground.Visible = true
        if SoundPlaying == false then
            SongName.Text = SongNameP.." Is Paused"   
        else
            SongName.Text = "Now Playing "..SongNameP         
        end
        if SoundPlaying == true and CurrentSoundInstance.Playing == false then
            SoundPlaying = false
            TogglePlayingButton.Image = PlayButtonimg
            CurrentSoundInstance.TimePosition = 0
        end  
        local Val = CurrentSoundInstance.TimePosition/CurrentSoundInstance.TimeLength * 588
        local FullNum = tonumber(Val)
        if ChangingVal == false then
            SliderInner.Size = UDim2.new(0,FullNum,0.58,0)
        end        
    end    
end)       

SliderInnerButton.MouseButton1Click:Connect(function()                  
    SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 588), 0.58, 0)
    ChangingVal = true
    CurrentSoundInstance.TimePosition = SliderInner.Size.X.Offset/maxvalue * CurrentSoundInstance.TimeLength
    ChangingVal = false
end)    
SliderInnerButton.MouseButton1Down:Connect(function()
    ChangingVal = true 
    SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 588), 0.58, 0)
    moveconnection = mouse.Move:Connect(function()
        SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 588), 0.58, 0)
    end)
    releaseconnection = UIS.InputEnded:Connect(function(Mouse)
        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then  
            SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 588), 0.58, 0)  
            CurrentSoundInstance.TimePosition = SliderInner.Size.X.Offset/588 * CurrentSoundInstance.TimeLength          
            ChangingVal = false      
            moveconnection:Disconnect()
            releaseconnection:Disconnect()
        end
    end)
end)
--AddSong
AddSongBackground.Name = "AddSongBackground"
AddSongBackground.Parent = MainBody
AddSongBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AddSongBackground.BackgroundTransparency = 1.000
AddSongBackground.Position = UDim2.new(0.915, 0,0.761, 0)
AddSongBackground.Size = UDim2.new(0, 48, 0, 42)
AddSongBackground.Image = "rbxassetid://3570695787"
AddSongBackground.ScaleType = Enum.ScaleType.Slice
AddSongBackground.SliceCenter = Rect.new(100, 100, 100, 100)
AddSongBackground.SliceScale = 0.040

UIGradient4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(138, 4, 255)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(147, 55, 232)), ColorSequenceKeypoint.new(0.34, Color3.fromRGB(150, 41, 227)), ColorSequenceKeypoint.new(0.79, Color3.fromRGB(133, 1, 177)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(87, 9, 132)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(87, 9, 132))}
UIGradient4.Name = "UIGradient4"
UIGradient4.Parent = AddSongBackground

AddSongInner.Name = "AddSongInner"
AddSongInner.Parent = AddSongBackground
AddSongInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AddSongInner.BackgroundTransparency = 1.000
AddSongInner.Position = UDim2.new(0.0799999982, 0, 0.100000001, 0)
AddSongInner.Size = UDim2.new(0, 39, 0, 34)
AddSongInner.Image = "rbxassetid://3570695787"
AddSongInner.ImageColor3 = Color3.fromRGB(15, 15, 15)
AddSongInner.ScaleType = Enum.ScaleType.Slice
AddSongInner.SliceCenter = Rect.new(100, 100, 100, 100)
AddSongInner.SliceScale = 0.040

AddSongButton.Name = "AddSongButton"
AddSongButton.Parent = AddSongInner
AddSongButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AddSongButton.BackgroundTransparency = 1.000
AddSongButton.Position = UDim2.new(0.0257630963, 0, 0.0294117648, 0)
AddSongButton.Size = UDim2.new(0, 37, 0, 33)
AddSongButton.Font = Enum.Font.SciFi
AddSongButton.Text = "+"
AddSongButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AddSongButton.TextScaled = true
AddSongButton.TextSize = 14.000
AddSongButton.TextWrapped = true
AddSongButton.MouseButton1Click:Connect(function()
    if AddSongFBackground.Visible == true then
        AddSongFBackground.Visible = false
        MainBody.Visible = true
    else
        AddSongFBackground.Visible = true
        MainBody.Visible = false
    end    
end)    
AddSongButton.MouseEnter:Connect(function()ToolTipHover("Add Song Button","Opens a Menu to add songs.")end)
AddSongButton.MouseLeave:Connect(function()ToolTipHoverEnd()end)
--Remove Selected Song
RemoveSongBackground.Name = "RemoveSongBackground"
RemoveSongBackground.Parent = MainBody
RemoveSongBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RemoveSongBackground.BackgroundTransparency = 1.000
RemoveSongBackground.Position = UDim2.new(0.83480525, 0, 0.760791361, 0)
RemoveSongBackground.Size = UDim2.new(0, 48, 0, 42)
RemoveSongBackground.Image = "rbxassetid://3570695787"
RemoveSongBackground.ScaleType = Enum.ScaleType.Slice
RemoveSongBackground.SliceCenter = Rect.new(100, 100, 100, 100)
RemoveSongBackground.SliceScale = 0.040

UIGradient5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(138, 4, 255)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(147, 55, 232)), ColorSequenceKeypoint.new(0.34, Color3.fromRGB(150, 41, 227)), ColorSequenceKeypoint.new(0.79, Color3.fromRGB(133, 1, 177)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(87, 9, 132)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(87, 9, 132))}
UIGradient5.Name = "UIGradient5"
UIGradient5.Parent = RemoveSongBackground

RemoveSongInner.Name = "RemoveSongInner"
RemoveSongInner.Parent = RemoveSongBackground
RemoveSongInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RemoveSongInner.BackgroundTransparency = 1.000
RemoveSongInner.Position = UDim2.new(0.0799999982, 0, 0.100000001, 0)
RemoveSongInner.Size = UDim2.new(0, 39, 0, 34)
RemoveSongInner.Image = "rbxassetid://3570695787"
RemoveSongInner.ImageColor3 = Color3.fromRGB(15, 15, 15)
RemoveSongInner.ScaleType = Enum.ScaleType.Slice
RemoveSongInner.SliceCenter = Rect.new(100, 100, 100, 100)
RemoveSongInner.SliceScale = 0.040

RemoveSongButton.Name = "RemoveSongButton"
RemoveSongButton.Parent = RemoveSongInner
RemoveSongButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RemoveSongButton.BackgroundTransparency = 1.000
RemoveSongButton.Position = UDim2.new(0.025763981, 0, 0.0294117648, 0)
RemoveSongButton.Size = UDim2.new(0, 38, 0, 34)
RemoveSongButton.Font = Enum.Font.SciFi
RemoveSongButton.Text = "-"
RemoveSongButton.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoveSongButton.TextScaled = true
RemoveSongButton.TextSize = 14.000
RemoveSongButton.TextWrapped = true
RemoveSongButton.MouseEnter:Connect(function()ToolTipHover("Remove Song Button","Removes the Selected Song.")end)
RemoveSongButton.MouseLeave:Connect(function()ToolTipHoverEnd()end)

function UnHighlightAll()
    for i,Frame in pairs(ListScrollingFrame:GetChildren()) do
        if Frame:IsA("ImageLabel") or Frame:IsA("Frame") then
            local FrameInner = Frame:FindFirstChild("SongFrameInner")
            local Selected = Frame:FindFirstChild("Selected")
            if FrameInner and Selected then
                Selected.Visible = false
                FrameInner.ImageColor3 = Color3.fromRGB(30,30,30)
            end    
        end    
    end    
end     
local TempBlur = Instance.new("BlurEffect",game.Lighting)   
for I,SongTable in pairs(CurrentSongList) do 
    local Success = pcall(function()
        game:GetService("MarketplaceService"):GetProductInfo(tonumber(SongTable[2]))
    end)   
    if Success then
        ListScrollingFrame.CanvasSize = UDim2.new(0,ListScrollingFrame.CanvasSize.X.Offset,0,ListScrollingFrame.CanvasSize.Y.Offset+105)
        local SongCustomName = SongTable[1]
        local SongId = SongTable[2]
        local SoundName = game:GetService("MarketplaceService"):GetProductInfo(SongId).Name or "Nil"
        local AssetOwner = game:GetService("MarketplaceService"):GetProductInfo(SongId).Creator.Name or "Nil"
        local ReId = game:GetService("MarketplaceService"):GetProductInfo(SongId).AssetId or "Nil"
        local SongFrameOutter = Instance.new("ImageLabel")
        local SongFrameInner = Instance.new("ImageLabel")
        local SongInnerButton = Instance.new("TextButton")
        local SongName = Instance.new("TextLabel")
        local AssetId = Instance.new("TextLabel")
        local AssetCreator = Instance.new("TextLabel")
        local UIGradient3 = Instance.new("UIGradient")
        local Selected = Instance.new("ImageLabel")
        
        SongFrameOutter.Name = "SongFrameOutter"
        SongFrameOutter.Parent = ListScrollingFrame
        SongFrameOutter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SongFrameOutter.BackgroundTransparency = 1.000
        SongFrameOutter.Position = UDim2.new(0.012820513, 0, 0.0321715809, 0)
        SongFrameOutter.Size = UDim2.new(0, 682, 0, 101)
        SongFrameOutter.Image = "rbxassetid://3570695787"
        SongFrameOutter.ScaleType = Enum.ScaleType.Slice
        SongFrameOutter.SliceCenter = Rect.new(100, 100, 100, 100)
        SongFrameOutter.SliceScale = 0.040
    
        Selected.Name = "Selected"
        Selected.Parent = SongFrameOutter
        Selected.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Selected.BackgroundTransparency = 1.000
        Selected.Position = UDim2.new(0.938416421, 0, 0.356435657, 0)
        Selected.Rotation = 180.000
        Selected.Size = UDim2.new(0, 30, 0, 27)
        Selected.Image = "http://www.roblox.com/asset/?id=5621799093"
        Selected.ZIndex = 7
        Selected.Visible = false
    
        SongFrameInner.Name = "SongFrameInner"
        SongFrameInner.Parent = SongFrameOutter
        SongFrameInner.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        SongFrameInner.BackgroundTransparency = 1.000
        SongFrameInner.Position = UDim2.new(0.0113437688, 0, 0.0729034692, 0)
        SongFrameInner.Size = UDim2.new(0, 664, 0, 86)
        SongFrameInner.Image = "rbxassetid://3570695787"
        SongFrameInner.ImageColor3 = Color3.fromRGB(30, 30, 30)
        SongFrameInner.ScaleType = Enum.ScaleType.Slice
        SongFrameInner.SliceCenter = Rect.new(100, 100, 100, 100)
        SongFrameInner.SliceScale = 0.040
    
        SongInnerButton.Name = "SongFrameInner"
        SongInnerButton.Parent = SongFrameOutter
        SongInnerButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        SongInnerButton.BackgroundTransparency = 1
        SongInnerButton.Position = UDim2.new(0.0113437688, 0, 0.0729034692, 0)
        SongInnerButton.Size = UDim2.new(0, 664, 0, 86)
        SongInnerButton.TextTransparency = 1
        SongInnerButton.ZIndex = 5
        SongInnerButton.MouseButton1Click:Connect(function()
            if SelectedSongIndex == I then
                SelectedSongIndex = nil
                SelectedSongFrame = nil
                UnHighlightAll()
                CurrentSoundInstance.SoundId = [[]]
                CurrentSoundInstance:Stop()
                CurrentSongId = nil
                SoundPlaying = false
                SongNameP = nil
                TogglePlayingButton.Image = PlayButtonimg
                CurrentSoundInstance.TimePosition = 0
                SliderInner.Size = UDim2.new(0,0,0.58,0)    
            else
                SelectedSongIndex = I
                SelectedSongFrame = SongFrameOutter
                UnHighlightAll()
                SongFrameInner.ImageColor3 = Color3.fromRGB(45,45,45)
                Selected.Visible = true
                CurrentSoundInstance.SoundId = [[]]
                CurrentSoundInstance:Stop()
                CurrentSongId = SongId
                SongNameP = SongCustomName
                CurrentSoundInstance.SoundId = "rbxassetid://"..CurrentSongId
                SoundPlaying = false
                TogglePlayingButton.Image = PlayButtonimg
                CurrentSoundInstance.TimePosition = 0
                SliderInner.Size = UDim2.new(0,0,0.58,0)
            end    
        end)    
        SongInnerButton.MouseEnter:Connect(function()ToolTipHover(tostring(SongCustomName),"Asset Id:"..tostring(ReId))end)
        SongInnerButton.MouseLeave:Connect(function()ToolTipHoverEnd()end)
        
        SongName.Name = "SongName"
        SongName.Parent = SongFrameOutter
        SongName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SongName.BackgroundTransparency = 1.000
        SongName.Position = UDim2.new(0.0102639301, 0, 0.0693069324, 0)
        SongName.Size = UDim2.new(0, 664, 0, 32)
        SongName.Font = Enum.Font.SciFi
        if SongCustomName ~= "Nil" then
            SongName.Text = "Song Name:"..SongCustomName or "Nil"  
        else
            SongName.Text = "Song Name:"..SoundName or "Nil"  
        end      
        SongName.TextColor3 = Color3.fromRGB(255, 255, 255)
        SongName.TextScaled = true
        SongName.TextSize = 14.000
        SongName.TextWrapped = true
        SongName.TextXAlignment = Enum.TextXAlignment.Left
        
        AssetId.Name = "AssetId"
        AssetId.Parent = SongFrameOutter
        AssetId.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        AssetId.BackgroundTransparency = 1.000
        AssetId.Position = UDim2.new(0.0146627566, 0, 0.386138618, 0)
        AssetId.Size = UDim2.new(0, 664, 0, 26)
        AssetId.Font = Enum.Font.SciFi
        AssetId.Text = "Asset Id:"..tostring(ReId) or "Nil"
        AssetId.TextColor3 = Color3.fromRGB(152, 152, 152)
        AssetId.TextScaled = true
        AssetId.TextSize = 14.000
        AssetId.TextWrapped = true
        AssetId.TextXAlignment = Enum.TextXAlignment.Left
        
        AssetCreator.Name = "AssetCreator"
        AssetCreator.Parent = SongFrameOutter
        AssetCreator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        AssetCreator.BackgroundTransparency = 1.000
        AssetCreator.Position = UDim2.new(0.0146627566, 0, 0.643564343, 0)
        AssetCreator.Size = UDim2.new(0, 664, 0, 26)
        AssetCreator.Font = Enum.Font.SciFi
        AssetCreator.Text = "Asset Created By:"..tostring(AssetOwner) or "Nil"
        AssetCreator.TextColor3 = Color3.fromRGB(152, 152, 152)
        AssetCreator.TextScaled = true
        AssetCreator.TextSize = 14.000
        AssetCreator.TextWrapped = true
        AssetCreator.TextXAlignment = Enum.TextXAlignment.Left
        
        UIGradient3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(138, 4, 255)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(147, 55, 232)), ColorSequenceKeypoint.new(0.34, Color3.fromRGB(150, 41, 227)), ColorSequenceKeypoint.new(0.79, Color3.fromRGB(133, 1, 177)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(87, 9, 132)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(87, 9, 132))}
        UIGradient3.Parent = SongFrameOutter
    end 
end    

RemoveSongButton.MouseButton1Click:Connect(function()
    if SelectedSongFrame~=nil and SelectedSongIndex~=nil then
        if SelectedSongFrame:IsA("ImageLabel") or SelectedSongFrame:IsA("Frame") then
            table.remove(CurrentSongList,tonumber(SelectedSongIndex))
            Save()
            SelectedSongFrame:Remove()
            ListScrollingFrame.CanvasSize = UDim2.new(0,ListScrollingFrame.CanvasSize.X.Offset,0,ListScrollingFrame.CanvasSize.Y.Offset-105)
            SelectedSongIndex = nil
            UnHighlightAll()
            SelectedSongFrame = nil
            CurrentSoundInstance.SoundId = [[]]
            CurrentSoundInstance:Stop()
            CurrentSongId = nil
            SoundPlaying = false
            SongNameP = nil
            TogglePlayingButton.Image = PlayButtonimg
            CurrentSoundInstance.TimePosition = 0
            SliderInner.Size = UDim2.new(0,0,0.58,0)
        end 
    end       
end)    

AddSongFBackground.Name = "AddSongFBackground"
AddSongFBackground.Parent = MusicPlayerZ
AddSongFBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AddSongFBackground.BackgroundTransparency = 1.000
AddSongFBackground.Position = UDim2.new(0.38, 0,0.376, 0)
AddSongFBackground.Size = UDim2.new(0, 539, 0, 281)
AddSongFBackground.Image = "rbxassetid://3570695787"
AddSongFBackground.ScaleType = Enum.ScaleType.Slice
AddSongFBackground.SliceCenter = Rect.new(100, 100, 100, 100)
AddSongFBackground.SliceScale = 0.070
AddSongFBackground.Visible = false

UIGradient6.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(138, 4, 255)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(147, 55, 232)), ColorSequenceKeypoint.new(0.34, Color3.fromRGB(150, 41, 227)), ColorSequenceKeypoint.new(0.79, Color3.fromRGB(133, 1, 177)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(87, 9, 132)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(87, 9, 132))}
UIGradient6.Name = "UIGradient6"
UIGradient6.Parent = AddSongFBackground

AddSongFInner.Name = "AddSongFInner"
AddSongFInner.Parent = AddSongFBackground
AddSongFInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AddSongFInner.BackgroundTransparency = 1.000
AddSongFInner.BorderSizePixel = 0
AddSongFInner.Position = UDim2.new(0.0222814549, 0, 0.031880226, 0)
AddSongFInner.Size = UDim2.new(0, 517, 0, 263)
AddSongFInner.Image = "rbxassetid://3570695787"
AddSongFInner.ImageColor3 = Color3.fromRGB(30, 30, 30)
AddSongFInner.ScaleType = Enum.ScaleType.Slice
AddSongFInner.SliceCenter = Rect.new(100, 100, 100, 100)
AddSongFInner.SliceScale = 0.120

EnterSongNameOuter.Name = "EnterSongNameOuter"
EnterSongNameOuter.Parent = AddSongFBackground
EnterSongNameOuter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EnterSongNameOuter.BackgroundTransparency = 1.000
EnterSongNameOuter.Position = UDim2.new(0.111317255, 0, 0.0902606696, 0)
EnterSongNameOuter.Size = UDim2.new(0, 442, 0, 68)
EnterSongNameOuter.Image = "rbxassetid://3570695787"
EnterSongNameOuter.ScaleType = Enum.ScaleType.Slice
EnterSongNameOuter.SliceCenter = Rect.new(100, 100, 100, 100)
EnterSongNameOuter.SliceScale = 0.040

UIGradient7.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(138, 4, 255)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(147, 55, 232)), ColorSequenceKeypoint.new(0.34, Color3.fromRGB(150, 41, 227)), ColorSequenceKeypoint.new(0.79, Color3.fromRGB(133, 1, 177)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(87, 9, 132)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(87, 9, 132))}
UIGradient7.Name = "UIGradient7"
UIGradient7.Parent = EnterSongNameOuter

EnterSongNameInner.Name = "EnterSongNameInner"
EnterSongNameInner.Parent = EnterSongNameOuter
EnterSongNameInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EnterSongNameInner.BackgroundTransparency = 1.000
EnterSongNameInner.Position = UDim2.new(0.0157907847, 0, 0.0811893493, 0)
EnterSongNameInner.Size = UDim2.new(0, 427, 0, 55)
EnterSongNameInner.Image = "rbxassetid://3570695787"
EnterSongNameInner.ImageColor3 = Color3.fromRGB(15, 15, 15)
EnterSongNameInner.ScaleType = Enum.ScaleType.Slice
EnterSongNameInner.SliceCenter = Rect.new(100, 100, 100, 100)
EnterSongNameInner.SliceScale = 0.120

EnterSongNameBarTextBox.Name = "EnterSongNameBarTextBox"
EnterSongNameBarTextBox.Parent = EnterSongNameInner
EnterSongNameBarTextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EnterSongNameBarTextBox.BackgroundTransparency = 1.000
EnterSongNameBarTextBox.BorderSizePixel = 0
EnterSongNameBarTextBox.Size = UDim2.new(0, 427, 0, 55)
EnterSongNameBarTextBox.Font = Enum.Font.SourceSans
EnterSongNameBarTextBox.PlaceholderText = "Enter Song Name"
EnterSongNameBarTextBox.Text = ""
EnterSongNameBarTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
EnterSongNameBarTextBox.TextScaled = true
EnterSongNameBarTextBox.TextSize = 14.000
EnterSongNameBarTextBox.TextWrapped = true

EnterSongIdNameOuter.Name = "EnterSongIdNameOuter"
EnterSongIdNameOuter.Parent = AddSongFBackground
EnterSongIdNameOuter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EnterSongIdNameOuter.BackgroundTransparency = 1.000
EnterSongIdNameOuter.Position = UDim2.new(0.111317255, 0, 0.364282042, 0)
EnterSongIdNameOuter.Size = UDim2.new(0, 442, 0, 68)
EnterSongIdNameOuter.Image = "rbxassetid://3570695787"
EnterSongIdNameOuter.ScaleType = Enum.ScaleType.Slice
EnterSongIdNameOuter.SliceCenter = Rect.new(100, 100, 100, 100)
EnterSongIdNameOuter.SliceScale = 0.040

UIGradient8.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(138, 4, 255)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(147, 55, 232)), ColorSequenceKeypoint.new(0.34, Color3.fromRGB(150, 41, 227)), ColorSequenceKeypoint.new(0.79, Color3.fromRGB(133, 1, 177)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(87, 9, 132)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(87, 9, 132))}
UIGradient8.Name = "UIGradient8"
UIGradient8.Parent = EnterSongIdNameOuter

EnterSongIdNameInner.Name = "EnterSongIdNameInner"
EnterSongIdNameInner.Parent = EnterSongIdNameOuter
EnterSongIdNameInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EnterSongIdNameInner.BackgroundTransparency = 1.000
EnterSongIdNameInner.Position = UDim2.new(0.0157907847, 0, 0.0811893493, 0)
EnterSongIdNameInner.Size = UDim2.new(0, 427, 0, 55)
EnterSongIdNameInner.Image = "rbxassetid://3570695787"
EnterSongIdNameInner.ImageColor3 = Color3.fromRGB(15, 15, 15)
EnterSongIdNameInner.ScaleType = Enum.ScaleType.Slice
EnterSongIdNameInner.SliceCenter = Rect.new(100, 100, 100, 100)
EnterSongIdNameInner.SliceScale = 0.120

EnterSongIdTextbox.Name = "EnterSongIdTextbox"
EnterSongIdTextbox.Parent = EnterSongIdNameInner
EnterSongIdTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EnterSongIdTextbox.BackgroundTransparency = 1.000
EnterSongIdTextbox.BorderSizePixel = 0
EnterSongIdTextbox.Size = UDim2.new(0, 427, 0, 55)
EnterSongIdTextbox.Font = Enum.Font.SourceSans
EnterSongIdTextbox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
EnterSongIdTextbox.PlaceholderText = "Enter Song Id"
EnterSongIdTextbox.Text = ""
EnterSongIdTextbox.TextColor3 = Color3.fromRGB(255, 255, 255)
EnterSongIdTextbox.TextScaled = true
EnterSongIdTextbox.TextSize = 14.000
EnterSongIdTextbox.TextWrapped = true

AddSongFOuter.Name = "AddSongFOuter"
AddSongFOuter.Parent = AddSongFBackground
AddSongFOuter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AddSongFOuter.BackgroundTransparency = 1.000
AddSongFOuter.Position = UDim2.new(0.205936924, 0, 0.681008101, 0)
AddSongFOuter.Size = UDim2.new(0, 326, 0, 62)
AddSongFOuter.Image = "rbxassetid://3570695787"
AddSongFOuter.ScaleType = Enum.ScaleType.Slice
AddSongFOuter.SliceCenter = Rect.new(100, 100, 100, 100)
AddSongFOuter.SliceScale = 0.040

UIGradient9.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(138, 4, 255)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(147, 55, 232)), ColorSequenceKeypoint.new(0.34, Color3.fromRGB(150, 41, 227)), ColorSequenceKeypoint.new(0.79, Color3.fromRGB(133, 1, 177)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(87, 9, 132)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(87, 9, 132))}
UIGradient9.Name = "UIGradient9"
UIGradient9.Parent = AddSongFOuter

AddSongFInner_2.Name = "AddSongFButtonInner"
AddSongFInner_2.Parent = AddSongFOuter
AddSongFInner_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AddSongFInner_2.BackgroundTransparency = 1.000
AddSongFInner_2.Position = UDim2.new(0.0157908816, 0, 0.0811895579, 0)
AddSongFInner_2.Size = UDim2.new(0, 313, 0, 52)
AddSongFInner_2.Image = "rbxassetid://3570695787"
AddSongFInner_2.ImageColor3 = Color3.fromRGB(15, 15, 15)
AddSongFInner_2.ScaleType = Enum.ScaleType.Slice
AddSongFInner_2.SliceCenter = Rect.new(100, 100, 100, 100)
AddSongFInner_2.SliceScale = 0.120

AddSongFButton.Name = "AddSongFButton"
AddSongFButton.Parent = AddSongFInner_2
AddSongFButton.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
AddSongFButton.BackgroundTransparency = 1.000
AddSongFButton.Size = UDim2.new(0, 313, 0, 52)
AddSongFButton.Font = Enum.Font.SourceSans
AddSongFButton.Text = "Add Song"
AddSongFButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AddSongFButton.TextScaled = true
AddSongFButton.TextSize = 14.000
AddSongFButton.TextWrapped = true

CancelAddingSongBackground.Name = "CancelAddingSongBackground"
CancelAddingSongBackground.Parent = AddSongFBackground
CancelAddingSongBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CancelAddingSongBackground.BackgroundTransparency = 1.000
CancelAddingSongBackground.Position = UDim2.new(0.881187439, 0, 0.714528024, 0)
CancelAddingSongBackground.Size = UDim2.new(0, 48, 0, 42)
CancelAddingSongBackground.Image = "rbxassetid://3570695787"
CancelAddingSongBackground.ScaleType = Enum.ScaleType.Slice
CancelAddingSongBackground.SliceCenter = Rect.new(100, 100, 100, 100)
CancelAddingSongBackground.SliceScale = 0.040

UIGradient10.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(138, 4, 255)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(147, 55, 232)), ColorSequenceKeypoint.new(0.34, Color3.fromRGB(150, 41, 227)), ColorSequenceKeypoint.new(0.79, Color3.fromRGB(133, 1, 177)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(87, 9, 132)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(87, 9, 132))}
UIGradient10.Name = "UIGradient10"
UIGradient10.Parent = CancelAddingSongBackground

CancelAddingSongInner.Name = "CancelAddingSongInner"
CancelAddingSongInner.Parent = CancelAddingSongBackground
CancelAddingSongInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CancelAddingSongInner.BackgroundTransparency = 1.000
CancelAddingSongInner.Position = UDim2.new(0.0799999982, 0, 0.100000001, 0)
CancelAddingSongInner.Size = UDim2.new(0, 39, 0, 34)
CancelAddingSongInner.Image = "rbxassetid://3570695787"
CancelAddingSongInner.ImageColor3 = Color3.fromRGB(15, 15, 15)
CancelAddingSongInner.ScaleType = Enum.ScaleType.Slice
CancelAddingSongInner.SliceCenter = Rect.new(100, 100, 100, 100)
CancelAddingSongInner.SliceScale = 0.040

CancelAddingSongButton.Name = "CancelAddingSongButton"
CancelAddingSongButton.Parent = CancelAddingSongInner
CancelAddingSongButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CancelAddingSongButton.BackgroundTransparency = 1.000
CancelAddingSongButton.Position = UDim2.new(0.025763981, 0, 0.0294117648, 0)
CancelAddingSongButton.Size = UDim2.new(0, 38, 0, 34)
CancelAddingSongButton.Font = Enum.Font.SciFi
CancelAddingSongButton.Text = "X"
CancelAddingSongButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CancelAddingSongButton.TextScaled = true
CancelAddingSongButton.TextSize = 14.000
CancelAddingSongButton.TextWrapped = true

CancelAddingSongButton.MouseButton1Click:Connect(function()
    EnterSongIdTextbox.Text = ""
    EnterSongNameBarTextBox.Text = ""
    AddSongFBackground.Visible = false
    MainBody.Visible = true
end)    

AddSongFButton.MouseButton1Click:Connect(function()
    if EnterSongIdTextbox.Text ~= "" and EnterSongIdTextbox.Text ~= nil and string.len(EnterSongIdTextbox.Text) > 0 and EnterSongNameBarTextBox.Text ~= "" or EnterSongNameBarTextBox.Text ~= nil or string.len(EnterSongNameBarTextBox.Text) > 0 then
        local Success = pcall(function()
            game:GetService("MarketplaceService"):GetProductInfo(tonumber(EnterSongIdTextbox.Text))
        end)   
        if Success then
            AddSongFBackground.Visible = false    
            MainBody.Visible = true      
            local SongId = tonumber(EnterSongIdTextbox.Text)
            local NewSongTable = {EnterSongNameBarTextBox.Text,SongId};
            local IndexUndefined
            table.insert(CurrentSongList,NewSongTable)
            IndexUndefined = CurrentSongList[#CurrentSongList]
            ListScrollingFrame.CanvasSize = UDim2.new(0,ListScrollingFrame.CanvasSize.X.Offset,0,ListScrollingFrame.CanvasSize.Y.Offset+105)
            local SongCustomName = EnterSongNameBarTextBox.Text
            local SoundName = game:GetService("MarketplaceService"):GetProductInfo(SongId).Name or "Nil"
            local AssetOwner = game:GetService("MarketplaceService"):GetProductInfo(SongId).Creator.Name or "Nil"
            local ReId = game:GetService("MarketplaceService"):GetProductInfo(SongId).AssetId or "Nil"
            local SongFrameOutter = Instance.new("ImageLabel")
            local SongFrameInner = Instance.new("ImageLabel")
            local SongInnerButton = Instance.new("TextButton")
            local SongName = Instance.new("TextLabel")
            local AssetId = Instance.new("TextLabel")
            local AssetCreator = Instance.new("TextLabel")
            local UIGradient3 = Instance.new("UIGradient")
            local Selected = Instance.new("ImageLabel")
            
            SongFrameOutter.Name = "SongFrameOutter"
            SongFrameOutter.Parent = ListScrollingFrame
            SongFrameOutter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SongFrameOutter.BackgroundTransparency = 1.000
            SongFrameOutter.Position = UDim2.new(0.012820513, 0, 0.0321715809, 0)
            SongFrameOutter.Size = UDim2.new(0, 682, 0, 101)
            SongFrameOutter.Image = "rbxassetid://3570695787"
            SongFrameOutter.ScaleType = Enum.ScaleType.Slice
            SongFrameOutter.SliceCenter = Rect.new(100, 100, 100, 100)
            SongFrameOutter.SliceScale = 0.040

            Selected.Name = "Selected"
            Selected.Parent = SongFrameOutter
            Selected.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Selected.BackgroundTransparency = 1.000
            Selected.Position = UDim2.new(0.938416421, 0, 0.356435657, 0)
            Selected.Rotation = 180.000
            Selected.Size = UDim2.new(0, 30, 0, 27)
            Selected.Image = "http://www.roblox.com/asset/?id=5621799093"
            Selected.ZIndex = 7
            Selected.Visible = false

            SongFrameInner.Name = "SongFrameInner"
            SongFrameInner.Parent = SongFrameOutter
            SongFrameInner.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            SongFrameInner.BackgroundTransparency = 1.000
            SongFrameInner.Position = UDim2.new(0.0113437688, 0, 0.0729034692, 0)
            SongFrameInner.Size = UDim2.new(0, 664, 0, 86)
            SongFrameInner.Image = "rbxassetid://3570695787"
            SongFrameInner.ImageColor3 = Color3.fromRGB(30, 30, 30)
            SongFrameInner.ScaleType = Enum.ScaleType.Slice
            SongFrameInner.SliceCenter = Rect.new(100, 100, 100, 100)
            SongFrameInner.SliceScale = 0.040

            SongInnerButton.Name = "SongFrameInner"
            SongInnerButton.Parent = SongFrameOutter
            SongInnerButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            SongInnerButton.BackgroundTransparency = 1
            SongInnerButton.Position = UDim2.new(0.0113437688, 0, 0.0729034692, 0)
            SongInnerButton.Size = UDim2.new(0, 664, 0, 86)
            SongInnerButton.TextTransparency = 1
            SongInnerButton.ZIndex = 5
            SongInnerButton.MouseButton1Click:Connect(function()
                if SelectedSongIndex == IndexUndefined then
                    SelectedSongIndex = nil
                    SelectedSongFrame = nil
                    UnHighlightAll()
                    CurrentSoundInstance.SoundId = [[]]
                    CurrentSoundInstance:Stop()
                    CurrentSongId = nil
                    SoundPlaying = false
                    SongNameP = nil
                    TogglePlayingButton.Image = PlayButtonimg
                    CurrentSoundInstance.TimePosition = 0
                    SliderInner.Size = UDim2.new(0,0,0.58,0)
                else
                    SelectedSongIndex = IndexUndefined
                    SelectedSongFrame = SongFrameOutter
                    UnHighlightAll()
                    SongFrameInner.ImageColor3 = Color3.fromRGB(45,45,45)
                    Selected.Visible = true
                    CurrentSoundInstance.SoundId = [[]]
                    CurrentSoundInstance:Stop()
                    CurrentSongId = SongId
                    SongNameP = SongCustomName
                    CurrentSoundInstance.SoundId = "rbxassetid://"..CurrentSongId
                    SoundPlaying = false
                    TogglePlayingButton.Image = PlayButtonimg
                    CurrentSoundInstance.TimePosition = 0
                    SliderInner.Size = UDim2.new(0,0,0.58,0)
                end    
            end)    
            SongInnerButton.MouseEnter:Connect(function()ToolTipHover(tostring(SongCustomName),"Asset Id:"..tostring(ReId))end)
            SongInnerButton.MouseLeave:Connect(function()ToolTipHoverEnd()end)
            
            SongName.Name = "SongName"
            SongName.Parent = SongFrameOutter
            SongName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SongName.BackgroundTransparency = 1.000
            SongName.Position = UDim2.new(0.0102639301, 0, 0.0693069324, 0)
            SongName.Size = UDim2.new(0, 664, 0, 32)
            SongName.Font = Enum.Font.SciFi
            if SongCustomName ~= "Nil" then
                SongName.Text = "Song Name:"..SongCustomName or "Nil"  
            else
                SongName.Text = "Song Name:"..SoundName or "Nil"  
            end      
            SongName.TextColor3 = Color3.fromRGB(255, 255, 255)
            SongName.TextScaled = true
            SongName.TextSize = 14.000
            SongName.TextWrapped = true
            SongName.TextXAlignment = Enum.TextXAlignment.Left
            
            AssetId.Name = "AssetId"
            AssetId.Parent = SongFrameOutter
            AssetId.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            AssetId.BackgroundTransparency = 1.000
            AssetId.Position = UDim2.new(0.0146627566, 0, 0.386138618, 0)
            AssetId.Size = UDim2.new(0, 664, 0, 26)
            AssetId.Font = Enum.Font.SciFi
            AssetId.Text = "Asset Id:"..tostring(ReId) or "Nil"
            AssetId.TextColor3 = Color3.fromRGB(152, 152, 152)
            AssetId.TextScaled = true
            AssetId.TextSize = 14.000
            AssetId.TextWrapped = true
            AssetId.TextXAlignment = Enum.TextXAlignment.Left
            
            AssetCreator.Name = "AssetCreator"
            AssetCreator.Parent = SongFrameOutter
            AssetCreator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            AssetCreator.BackgroundTransparency = 1.000
            AssetCreator.Position = UDim2.new(0.0146627566, 0, 0.643564343, 0)
            AssetCreator.Size = UDim2.new(0, 664, 0, 26)
            AssetCreator.Font = Enum.Font.SciFi
            AssetCreator.Text = "Asset Created By:"..tostring(AssetOwner) or "Nil"
            AssetCreator.TextColor3 = Color3.fromRGB(152, 152, 152)
            AssetCreator.TextScaled = true
            AssetCreator.TextSize = 14.000
            AssetCreator.TextWrapped = true
            AssetCreator.TextXAlignment = Enum.TextXAlignment.Left
            
            UIGradient3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(138, 4, 255)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(147, 55, 232)), ColorSequenceKeypoint.new(0.34, Color3.fromRGB(150, 41, 227)), ColorSequenceKeypoint.new(0.79, Color3.fromRGB(133, 1, 177)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(87, 9, 132)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(87, 9, 132))}
            UIGradient3.Parent = SongFrameOutter
            Save()
        end
    else
        AddSongFBackground.Visible = false
        MainBody.Visible = true       
    end    
end)    
TempBlur.Enabled = false
--loadstring(game:HttpGet("https://raw.githubusercontent.com/shit863/Linify-Music/master/Linify-Main.lua",true))()