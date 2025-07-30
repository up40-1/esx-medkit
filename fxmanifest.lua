fx_version 'cerulean'
game 'gta5'

author 'up40'
description 'Medkit'
version '1.0.0'

dependency 'es_extended'

shared_script '@es_extended/imports.lua'

loadscreen_manual_shutdown 'yes'
ui_page 'html/index.html'

files {
  'html/index.html',
}

client_scripts {
  'client.lua'
}

server_scripts {
  'server.lua'
}
