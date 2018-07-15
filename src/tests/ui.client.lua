--
-- @Project: FiveM Tools
-- @Authors: THEJean_Kevin, Samuelds
-- @License: GNU General Public License v3.0
--

--
--
--
local function HelpPrompt()

	local text = exports.ft_libs:OpenTextInput({
        title = "Text",
        customTitle = true,
        defaultText = "Hello World !",
    })
	exports.ft_libs:HelpPromt(text)

end

--
--
--
local function LoadingPrompt()

	local text = exports.ft_libs:OpenTextInput({
        title = "Text",
        customTitle = true,
        defaultText = "Hello World !",
    })
	exports.ft_libs:LoadingPromt({
		text = text,
		time = 5000,
		type = 4,
	})

end


--
--
--
local function Notification()

	local text = exports.ft_libs:OpenTextInput({
        title = "Text",
        customTitle = true,
        defaultText = "Hello World !",
    })
	exports.ft_libs:Notification(text)

end

--
--
--
local function AdvancedNotification()

	local text = exports.ft_libs:OpenTextInput({
        title = "Text",
        customTitle = true,
        defaultText = "Hello World !",
    })
	exports.ft_libs:AdvancedNotification({
		text = text,
		title = "Title exemple",
		subTitle = "SubTitle exemple",
	})

end

--
--
--
local function Text()

	local text = exports.ft_libs:OpenTextInput({
        title = "Text",
        customTitle = true,
        defaultText = "Hello World !",
    })
	exports.ft_libs:Text({
		text = text,
		x = 0.9,
		y = 0.25,
	})

end

--
--
--
local function TextNotification()

	local text = exports.ft_libs:OpenTextInput({
        title = "Text",
        customTitle = true,
        defaultText = "Hello World !",
    })
	exports.ft_libs:TextNotification({
		text = text,
		time = 5000,
	})

end

--
--
--
local function Show3DText()

	local text = exports.ft_libs:OpenTextInput({
        title = "Text",
        customTitle = true,
        defaultText = "Hello World !",
    })
	local playerPed = GetPlayerPed(-1)
	local playerPos = GetEntityCoords(playerPed, true)
	exports.ft_libs:Show3DText({
		text = text,
		x = playerPos.x,
		y = playerPos.y,
		z = playerPos.z,
	})

end

--
--
--
function TestUiInit()

	exports.ft_libs:AddMenu("ft_libs_exemples_test:UiMenu", {
		title = "UI menu",
		buttons = {
			{
				text = "Help Prompt",
				exec = {
					callback = HelpPrompt,
				},
			},
			{
				text = "Loading Prompt",
				exec = {
					callback = LoadingPrompt,
				},
			},
			{
				text = "Notification",
				exec = {
					callback = Notification,
				},
			},
			{
				text = "Advanced Notification",
				exec = {
					callback = AdvancedNotification,
				},
			},
			{
				text = "Text",
				exec = {
					callback = Text,
				},
			},
			{
				text = "Text Notification",
				exec = {
					callback = TextNotification,
				},
			},
			{
				text = "Show 3D Text",
				exec = {
					callback = Show3DText,
				},
			},
			{
				text = "Close menu",
				close = true,
			},
		}
	})

end