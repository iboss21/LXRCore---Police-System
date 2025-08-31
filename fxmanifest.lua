fx_version 'cerulean'
games { 'rdr3' }
lua54 'yes'

author 'LXRCore Team'
description 'LXRCore Police System for RedM - Multi-framework, modular, Tebex-ready'
version '1.0.0'

files {
    'mdt-ui/dist/index.html',
    'mdt-ui/dist/**/*',
    'config/locales/en.lua',
    'config/locales/ka.lua',
}

ui_page 'mdt-ui/dist/index.html'

client_scripts {
    'core_bridge/init.lua',
    'client/**/*.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'core_bridge/init.lua',
    'server/**/*.lua',
}

shared_scripts {
    'config/config.lua',
    'config/statutes.lua',
}

export 'IsOfficer'
export 'GetOfficerDept'
server_export 'GetOfficerDept'