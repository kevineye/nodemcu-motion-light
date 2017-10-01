PIN_LED         = 4

local log = require 'log'
log.level = 7

require 'config'
require 'ready'

local app = {}

function app.run()
    require 'telnet'
    require 'mqtt-connect'
    require 'sensors'
    sensors.BME280_PIN_SCL      = nil
    sensors.BME280_PIN_SDA      = nil
    sensors.DHT_PIN             = nil
    sensors.LIGHT_PIN           = 0
    sensors.LIGHT_REVERSE       = true
    require 'motion'
    ready = ready - 1
end

return app
