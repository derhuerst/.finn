# dependencies
request			= require 'request'





module.exports = (Plugin) ->





	class JokePlugin extends Plugin



		query: (question, entities, storage, onSuccess, onError) ->
			request 'http://api.icndb.com/jokes/random', (error, response, body) ->
				if error
					onError
						message: 'coudn\'t connect to the jokes database'
				else
					body = JSON.parse body
					onSuccess
						message: body.value.joke





	return JokePlugin