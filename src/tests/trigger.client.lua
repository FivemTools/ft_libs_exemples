--
-- @Project: FiveM Tools
-- @Authors: THEJean_Kevin, Samuelds
-- @License: GNU General Public License v3.0
--

--
--
--
local function AddTrigger()

    local name = exports.ft_libs:OpenTextInput({
        title = "Trigger name",
        customTitle = true,
        defaultText = "name",
    })
    local playerPed = GetPlayerPed(-1)
    local playerPos = GetEntityCoords(playerPed, true)
    exports.ft_libs:AddTrigger(name, {
        x = playerPos.x,
        y = playerPos.y,
        z = playerPos.z,
        enter = {
            callback = function()
                Citizen.Trace("Trigger enter : " .. name)
            end,
        },
        exit = {
            callback = function()
                Citizen.Trace("Trigger exit : " .. name)
            end,
        },
        active = {
            callback = function()
                Citizen.Trace("Trigger active : " .. name)
            end,
        },
    })
    exports.ft_libs:Notification("Trigger created : " .. name)

end

--
--
--
local function RemoveTrigger()

    local name = exports.ft_libs:OpenTextInput({
        title = "Trigger name",
        customTitle = true,
        defaultText = "name",
    })
	exports.ft_libs:RemoveTrigger(name)
    exports.ft_libs:Notification("Trigger removd : " .. name)

end

--
--
--
local function SwitchTrigger()

    local name = exports.ft_libs:OpenTextInput({
        title = "Trigger name",
        customTitle = true,
        defaultText = "name",
    })
	local retu
	while true do
        local text = exports.ft_libs:OpenTextInput({
            title = "Value (true or false)",
            customTitle = true,
            defaultText = "true",
            maxInputLength = 5,
        })
		if text == "true" then
    	    exports.ft_libs:SwitchTrigger(name, true)
            exports.ft_libs:Notification("Trigger switch : " .. name .. " to true")
       		break
    	elseif text == "false" then
        	exports.ft_libs:SwitchTrigger(name, retu)
            exports.ft_libs:Notification("Trigger switch : " .. name .. " to false")
	        break
	    end
	end

end

--
--
--
local function EnableTrigger()

    local name = exports.ft_libs:OpenTextInput({
        title = "Trigger name",
        customTitle = true,
        defaultText = "name",
    })
	exports.ft_libs:EnableTrigger(name)
    exports.ft_libs:Notification("Trigger enable : " .. name)

end

--
--
--
local function SwitchTrigger()

    local name = exports.ft_libs:OpenTextInput({
        title = "Trigger name",
        customTitle = true,
        defaultText = "name",
    })
	exports.ft_libs:DisableTrigger(name)
    exports.ft_libs:Notification("Trigger disable : " .. name)

end

--
--
--
local function CurrentTrigger()

    local name = exports.ft_libs:CurrentTrigger()
    exports.ft_libs:Notification("Current Trigger : " .. name)

end

--
--
--
function TestTiggerInit()

    exports.ft_libs:AddMenu("ft_libs_exemples_test:TriggerMenu", {
        title = "Trigger menu",
        buttons = {
          {
              text = "Add Trigger",
              exec = {
                  callback = AddTrigger,
              },
          },
          {
              text = "Remove Trigger",
              exec = {
                  callback = RemoveTrigger,
              },
          },
          {
              text = "Switch Trigger",
              exec = {
                  callback = SwitchTrigger,
              },
          },
          {
              text = "Enable Trigger",
              exec = {
                  callback = EnableTrigger,
              },
          },
          {
              text = "Disable Trigger",
              exec = {
                  callback = DisableTrigger,
              },
          },
          {
              text = "Current Trigger",
              exec = {
                  callback = CurrentTrigger,
              },
          },
          {
              text = "Close menu",
              close = true,
          },
        }
    })

end