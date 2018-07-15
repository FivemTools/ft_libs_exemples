--
-- @Project: FiveM Tools
-- @Authors: THEJean_Kevin, Samuelds
-- @License: GNU General Public License v3.0
--

--
--
--
local function AddArea()

	local name = exports.ft_libs:OpenTextInput({
        title = "Area name",
        customTitle = true,
        defaultText = "name",
    })
	local playerPed = GetPlayerPed(-1)
	local playerPos = GetEntityCoords(playerPed, true)

	exports.ft_libs:AddArea(name, {
		marker = {
			text = name,
			type = 1,
			weight = 4,
			height = 1,
			red = 255,
			green = 255,
			blue = 153,
		},
		trigger = {
			weight = 4,
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
		},
		blip = {
			text = name,
			colorId = 18,
			imageId = 51,
		},
		locations = {
			{
				x = playerPos.x,
				y = playerPos.y,
				z = playerPos.z,
			},
		},
	})
    exports.ft_libs:Notification("Area created : " .. name)

end

--
--
--
local function RemoveArea()

	local name = exports.ft_libs:OpenTextInput({
        title = "Area name",
        customTitle = true,
        defaultText = "name",
    })
	exports.ft_libs:RemoveArea(name)
    exports.ft_libs:Notification("Area removed : " .. name)

end

--
--
--
local function SwitchArea()

	local name = exports.ft_libs:OpenTextInput({
        title = "Area name",
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
			exports.ft_libs:SwitchArea(name, true)
			exports.ft_libs:Notification("Area switch : " .. name .. " to true")
       		break
		elseif text == "false" then
			exports.ft_libs:SwitchArea(name, false)
			exports.ft_libs:Notification("Area switch : " .. name .. " to false")
	        break
	    end
	end

end

--
--
--
local function EnableArea()

	Citizen.Trace("Area enable start")
	local name = exports.ft_libs:OpenTextInput({
        title = "Area name",
        customTitle = true,
        defaultText = "name",
    })
	exports.ft_libs:EnableArea(name)
    exports.ft_libs:Notification("Area enable : " .. name)

end

--
--
--
function DisableArea()

	local name = exports.ft_libs:OpenTextInput({
        title = "Area name",
        customTitle = true,
        defaultText = "name",
    })
	exports.ft_libs:DisableArea(name)
    exports.ft_libs:Notification("Area disable : " .. name)

end

--
--
--
function TestAreaInit()

    exports.ft_libs:AddMenu("ft_libs_exemples_test:AreaMenu", {
    title = "Area menu",
    buttons = {
      {
          text = "Add Area",
          exec = {
              callback = AddArea,
          },
      },
      {
          text = "Remove Area",
          exec = {
              callback = RemoveArea,
          },
      },
      {
          text = "Switch Area",
          exec = {
              callback = SwitchArea,
          },
      },
      {
          text = "Enable Area",
          exec = {
              callback = EnableArea,
          },
      },
      {
          text = "Disable Area",
          exec = {
              callback = DisableArea,
          },
      },
      {
          text = "Close menu",
          close = true,
       },
    }
    })

end