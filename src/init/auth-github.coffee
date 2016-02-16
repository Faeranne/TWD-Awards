## Passport Github work

passport = require 'passport'
config = require 'config'
GithubStrategy = require 'passport-github2' .strategy

passport.use new GithubStrategy
		clientID: config.get 'auth.github.clientID'
		clientSecret: config.get 'auth.github.clientSecret'
		callbackURL: config.get 'auth.github.callbackURL'
	, (accessToken, refreshToken, profile, done) ->	
		done null, profile

	
