--
-- @Project: FiveM Tools
-- @Authors: THEJean_Kevin, Samuelds
-- @License: GNU General Public License v3.0
--

--
--
--
local function AddMarker()

	local name = exports.ft_libs:OpenTextInput({
        title = "Marker name",
        customTitle = true,
        defaultText = "name",
    })
    local playerPed = GetPlayerPed(-1)
    local playerPos = GetEntityCoords(playerPed, true)
	exports.ft_libs:AddMarker(name, {
       	x = playerPos.x,
        y = playerPos.y,
        z = playerPos.z,
        text = name,
	})
    exports.ft_libs:Notification("Marker created : " .. name)

end

--
--
--
local function RemoveMarker()

	local name = exports.ft_libs:OpenTextInput({
        title = "Marker name",
        customTitle = true,
        defaultText = "name",
    })
	exports.ft_libs:RemoveMarker(name)
    exports.ft_libs:Notification("Marker remove : " .. name)

end

--
--
--
local function SwitchMarker()

	local name = exports.ft_libs:OpenTextInput({
        title = "Marker name",
        customTitle = true,
        defaultText = "name",
    })
	while true do
		local text = exports.ft_libs:OpenTextInput({
            title = "Value (true or false)",
            customTitle = true,
            defaultText = "true",
            maxInputLength = 5,
        })
		if text == "true" then
            exports.ft_libs:SwitchMarker(name, true)
            exports.ft_libs:Notification("Marker switch : " .. name .. " to true")
       		break
        elseif text == "false" then
            exports.ft_libs:SwitchMarker(name, false)
            exports.ft_libs:Notification("Marker switch : " .. name .. " to false")
	        break
	    end
	end

end

--
--
--
local function EnableMarker()

	local name = exports.ft_libs:OpenTextInput({
        title = "Marker name",
        customTitle = true,
        defaultText = "name",
    })
	exports.ft_libs:EnableMarker(name)
    exports.ft_libs:Notification("Marker enable : " .. name)

end

--
--
--
function DisableMarker()

	local name = exports.ft_libs:OpenTextInput({
        title = "Marker name",
        customTitle = true,
        defaultText = "name",
    })
	exports.ft_libs:DisableMarker(name)
    exports.ft_libs:Notification("Marker disable : " .. name)

end

--
--
--
local function CurrentMarker()

    local name = exports.ft_libs:CurrentMarker()
    exports.ft_libs:Notification("Current Marker : " .. name)

end

--
--
--
function TestMarketInit()

    exports.ft_libs:AddMenu("ft_libs_exemples_test:MarkerMenu", {
        title = "Marker menu",
        buttons = {
          {
              text = "Add Marker",
              exec = {
                  callback = AddMarker,
              },
          },
          {
              text = "Remove Marker",
              exec = {
                  callback = RemoveMarker,
              },
          },
          {
              text = "Switch Marker",
              exec = {
                  callback = SwitchMarker,
              },
          },
          {
              text = "Enable Marker",
              exec = {
                  callback = EnableMarker,
              },
          },
          {
              text = "Disable Marker",
              exec = {
                  callback = DisableMarker,
              },
          },
          {
              text = "Current Marker",
              exec = {
                  callback = CurrentMarker,
              },
          },
          {
              text = "Close menu",
              close = true,
          },
        }
    })

end