--
-- @Project: FiveM Tools
-- @Author: THEJean-Kevin
-- @License: GNU General Public License v3.0
--

--
local market = {
	{x=-48.816,y=-1757.354,z=29.421},
	{x=26.276,y=-1346.602,z=29.497},
	{x=-708.328,y=-914.421,z=19.215},
	{x=-1223.596,y=-906.664,z=12.326}
}

--
--
--
function openMarket()

	if not exports.ft_libs:MenuIsOpen() then
		exports.ft_libs:HelpPromt("Press ~INPUT_CONTEXT~ to ~g~buy")
		if IsControlJustPressed(1, 51) then
			exports.ft_libs:OpenMenu("shop:market")
		end
	end

end

--
--
--
function init()

	--
	exports.ft_libs:AddArea("Market", {
		marker = {
			text = "Market",
			type = 1,
			weight = 1,
			height = 2,
			red = 51,
			green = 153,
			blue = 255,
			showDistance = 20,
		},
		blip = {
			text = "Market",
			colorId = 52,
			imageId = 52,
		},
		trigger = {
			weight = 1,
			active = {
				callback = openMarket,
			}
		},
		locations = market,
	})

	--
	exports.ft_libs:AddMenu("shop:market",{
		menuTitle = "Market menu",
		closable = true,
		buttons = {
			{
				text = "Exit",
				close = true,
			},
		}
	})

end

--
--
--
RegisterNetEvent("ft_libs:OnClientReady")
AddEventHandler('ft_libs:OnClientReady', init)
