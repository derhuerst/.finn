# dependencies
http			= require 'http'





# generator function
module.exports = (Adapter) ->





	class HTTPAdapter extends Adapter



		# reference to the connected bot
		bot: null

		# HTTP server
		server: null



		constructor: (bot) ->
			super()
			@bot = bot

			@server = http.createServer (request, response) =>
				response.setHeader 'Content-Type', 'application/json'
				question = ''
				request.on 'data', (data) ->
					question += data
				request.once 'end', () =>
					@bot.query question, 
					((answer) => @onSuccess answer, response),
					((answer) => @onSuccess answer, response)
			@server.listen 8000



		onSuccess: (answer, response) =>
			response.end JSON.stringify answer

		onError: (error, response) =>
			response.end JSON.stringify error





	return HTTPAdapter