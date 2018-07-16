--
-- @Project: FiveM Tools
-- @Authors: THEJean_Kevin, Samuelds
-- @License: GNU General Public License v3.0
--

--
--
--
local function AddBlip()

	local name = exports.ft_libs:OpenTextInput({
		title = "Blip name",
		customTitle = true,
		defaultText = "name",
	})
	local playerPed = GetPlayerPed(-1)
	local playerPos = GetEntityCoords(playerPed, true)
	exports.ft_libs:AddBlip(name, {
		x = playerPos.x,
		y = playerPos.y,
		z = playerPos.z,
		text = name,
	})
	exports.ft_libs:Notification("Blip created : " .. name)

end

--
--
--
local function RemoveBlip()

	local name = exports.ft_libs:OpenTextInput({
		title = "Blip name",
		customTitle = true,
		defaultText = "name",
	})
	exports.ft_libs:RemoveBlip(name)
	exports.ft_libs:Notification("Blip remove : " .. name)

end

--
--
--
function ShowBlip()

	local name = exports.ft_libs:OpenTextInput({
		title = "Blip name",
		customTitle = true,
		defaultText = "name",
	})
	exports.ft_libs:ShowBlip(name)
	exports.ft_libs:Notification("Blip show : " .. name)

end

--
--
--
local function HideBlip()

	local name = exports.ft_libs:OpenTextInput({
		title = "Blip name",
		customTitle = true,
		defaultText = "name",
	})
	exports.ft_libs:HideBlip(name)
	exports.ft_libs:Notification("Blip hide : " .. name)

end

--
--
--
function TestBlipInit()

	exports.ft_libs:AddMenu("ft_libs_exemples_test:BlipMenu", {
		title = "BLip menu",
		buttons = {
			{
				text = "Add Blip",
				exec = {
					callback = AddBlip,
				},
			},
			{
				text = "Remove Blip",
				exec = {
					callback = RemoveBlip,
				},
			},
			{
				text = "Show Blip",
				exec = {
					callback = ShowBlip,
				},
			},
			{
				text = "Hide Blip",
				exec = {
					callback = HideBlip,
				},
			},
			{
				text = "Close menu",
				close = true,
			},
		}
	})

end