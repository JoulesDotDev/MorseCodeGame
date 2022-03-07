import morseCode from 'app/variables/morseCode.imba'

tag hangman-game < hangman-state

	css .message ta:center m:0 auto mt:12 fs:1.3em max-width: 350px

	def setup
		#game.init!
	
	def mount
		setup!

	def check
		if #game.currentLetter.length > 0
			let guess = #game.currentLetter.join ''
			let found = no
			
			for own letter, morse of morseCode
				if morse === guess
					found = yes
					if #game.correct.includes(letter) or #game.mistakes.includes(letter)
						#game.message = "You already guessed the letter \"{letter}\""
						#game.currentLetter = []
						return

					if #game.word.includes letter
						for character in #game.word
							if character === letter
								#game.correct.push letter 
								#game.message = "Correct guess: \"{letter}\""
						if #game.correct.length === #game.word.length
							#game.complete = yes
							#game.message = "You guessed the word! it was \"{#game.word}\""
					else 
						#game.mistakes.push letter
						#game.message = "Wrong guess: \"{letter}\""
						#game.attempts--

					if #game.attempts == 0 && !#game.complete
						#game.message = "You ran out of attempts, the word was \"{#game.word}\""
						#game.complete = yes
			
			if #game.complete
				#game.clear!

			unless found && !#game.complete
				#game.message = "\"{guess}\" is not a valid Morse Code letter"

			#game.currentLetter = []

	<self @submitLetter=check> 
		<hangman-word>
		<hangman-attempts>
		<hangman-input>
		<hangman-buttons>
		<div.message> #game.message