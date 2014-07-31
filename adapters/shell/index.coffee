# dependencies
readline			= require 'readline'
colors				= require 'colors'
spinner				= require 'simple-spinner'





# generator function
module.exports = (Adapter) ->





	class ShellAdapter extends Adapter



		# reference to the connected bot
		bot: null

		# user input stream
		repl: null



		constructor: (bot) ->
			super()
			@bot = bot

			# disable logging
			@bot.log.options.level = 'warn'    # supress `debug` and `info` messages

			# setup REPL
			@repl = readline.createInterface
				input: process.stdin
				output: process.stdout
				terminal: true
			@repl.on 'close', () ->
				process.exit 0
			@repl.on 'line', (input) =>
				if input is 'exit'
					process.exit 0
				spinner.start 75
				@bot.query input, @onSuccess, @onError
			@repl.setPrompt '', 0
			@repl.prompt()



		onSuccess: (answer) =>
			spinner.stop()
			console.log answer.message.green
			@repl.prompt()


		onError: (error) =>
			@bot.error error





	return ShellAdapter