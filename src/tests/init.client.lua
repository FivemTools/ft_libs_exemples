--
-- @Project: FiveM Tools
-- @Authors: THEJean_Kevin, Samuelds
-- @License: GNU General Public License v3.0
--

--
--
--
RegisterNetEvent("ft_libs:OnClientReady")
AddEventHandler('ft_libs:OnClientReady', function()

    TestBlipInit()
    TestMarketInit()
    TestTiggerInit()
    TestAreaInit()
    TestUiInit()

    -- Home menu
    exports.ft_libs:AddMenu("ft_libs_exemples_test:HomeMenu", {
        title = "Debug Test",
        menuTitle = "Sub title DEbug",
        buttons = {
            {
                text = "Blip",
                openMenu = "ft_libs_exemples_test:BlipMenu",
            },
            {
                text = "Marker",
                openMenu = "ft_libs_exemples_test:MarkerMenu",
            },
            {
                text = "Trigger",
                openMenu = "ft_libs_exemples_test:TriggerMenu",
            },
            {
                text = "Area",
                openMenu = "ft_libs_exemples_test:AreaMenu",
            },
            {
                text = "UI",
                openMenu = "ft_libs_exemples_test:UiMenu",
            },
            {
                text = "Close menu",
                close = true,
            },
        }
    })

    -- Onpen menu on press F1
    Citizen.CreateThread(function()
        while true do
            if IsControlJustPressed(1, 288) then
                if exports.ft_libs:MenuIsOpen() then
                    if exports.ft_libs:PrimaryMenu() == "ft_libs_exemples_test:HomeMenu" then
                        exports.ft_libs:CloseMenu()
                    end
                else
                    exports.ft_libs:OpenMenu("ft_libs_exemples_test:HomeMenu")
                end
            end
            Citizen.Wait(10)
        end
    end)

end)