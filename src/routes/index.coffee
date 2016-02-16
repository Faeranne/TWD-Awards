express = require 'express'
route = new express.Router()

route.get '/', (req,res) ->
	res.render 'index'

module.exports = route
