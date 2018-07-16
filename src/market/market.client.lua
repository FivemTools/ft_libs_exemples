--
-- @Project: FiveM Tools
-- @Authors: THEJean-Kevin, Samuelds
-- @License: GNU General Public License v3.0
--

--
local market = {
    {
        x=-48.816,
        y=-1757.354,
        z=29.421,
    },
    {
        x = 26.276,
        y = -1346.602,
        z = 29.497,
    },
    {
        x = -708.328,
        y = -914.421,
        z = 19.215,
    },
    {
        x = -1223.596,
        y = -906.664,
        z = 12.326,
    },
}

--
--
--
function exitMarket()

    if exports.ft_libs:GetPrimaryMenu() == "ft_libs_exemples_market:MarketMenu" then
        exports.ft_libs:CloseMenu()
    end

end

--
--
--
function openMarket()

    if not exports.ft_libs:MenuIsOpen() then
        exports.ft_libs:HelpPromt("Press ~INPUT_CONTEXT~ to ~g~buy")
        if IsControlJustPressed(1, 51) then
            exports.ft_libs:OpenMenu("ft_libs_exemples_market:MarketMenu")
        end
    end

end

--
--
--
function init()

    --
    exports.ft_libs:AddArea("ft_libs_exemples_market:MarketMenu", {
        marker = {
            text = "Market",
            weight = 1,
            red = 46,
            green = 204,
            blue = 113,
            showDistance = 20,
        },
        blip = {
            text = "Market",
            colorId = 2,
            imageId = 52,
        },
        trigger = {
            weight = 1,
            active = {
                callback = openMarket,
            },
            exit = {
                callback = exitMarket,
            }
        },
        locations = market,
    })

    --
    exports.ft_libs:AddMenu("ft_libs_exemples_market:MarketMenu",{
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
