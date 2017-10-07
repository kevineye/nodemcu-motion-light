PIN_LED         = 4

local log = require 'log'
log.level = 7

require 'config'
require 'ready'

local app = {}

function app.run()
    require 'telnet'
    require 'mqtt-connect'
    local sensors = require 'sensors-simple-light'
    sensors.LIGHT_PIN           = 0
    sensors.LIGHT_REVERSE       = true
    require 'motion'
    ready = ready - 1
end

return app
