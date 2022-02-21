fx_version 'cerulean'
game 'gta5'

edited 'paragon network | jay doesnt give 2 shits'
description 'QB-RadialMenu'
version '1.0.0'

ui_page 'html/index.html'

shared_scripts {
    'config.lua',
    'garageconfig.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua' -- Change this to your preferred language
}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/main.lua',
    'client/blips.lua',
    'client/benny.lua',
    'client/garages.lua',
    'client/clothing.lua',
    'client/trunk.lua',
    'client/stretcher.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/trunk.lua',
    'server/garages.lua',
    'server/benny.lua',
    'server/stretcher.lua'
}

files {
    'html/index.html',
    'html/css/main.css',
    'html/js/main.js',
    'html/js/RadialMenu.js',
}

lua54 'yes'