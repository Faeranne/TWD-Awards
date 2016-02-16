try {
	require('source-map-support/register')
} catch(e) {
	console.log('No Source Map Support')
}

require('./build/')
