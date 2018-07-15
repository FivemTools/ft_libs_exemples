--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
--

resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

dependencies {
    "ft_libs",
}

client_scripts {

    -- Market exemple
    "src/market/market.client.lua",

    -- Test menu
    "src/tests/blip.client.lua",
    "src/tests/trigger.client.lua",
    "src/tests/marker.client.lua",
    "src/tests/area.client.lua",
    "src/tests/ui.client.lua",
    "src/tests/init.client.lua",

}

server_scripts {}
