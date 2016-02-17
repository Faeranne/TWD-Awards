express = require 'express'
config = require 'config'
app = express()

require('./init/views')(app)
require('./init/express')(app)
app.use require './routes/'

app.listen config.get 'webServe.port'

console.log 'Listening on '+config.get('webServe.host')+":"+config.get('webServe.port')
