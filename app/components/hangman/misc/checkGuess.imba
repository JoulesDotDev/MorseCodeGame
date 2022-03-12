import morseCode from 'app/variables/morseCode.imba'

export default def checkGuess(game)
	if game.currentLetter.length > 0
		let guess = game.currentLetter.join ''
		let found = no
		
		for own letter, morse of morseCode
			if morse === guess
				found = yes
				if game.correct.includes(letter) or game.mistakes.includes(letter)
					game.message = ["You already guessed the letter \"{letter}\"", 0]
					game.currentLetter = []
					return

				if game.word.includes letter
					for character in game.word
						if character === letter
							game.correct.push letter 
							game.message = ["Correct guess: \"{letter}\"", 2000, 1]
					if game.correct.length === game.word.length
						game.complete = yes
						game.message = ["You guessed the word! it was \"{game.word}\"", 0, 1]
				else 
					game.mistakes.push letter
					game.message = ["Wrong guess: \"{letter}\"", 2000, -1]
					game.attempts--

				if game.attempts == 0 && !game.complete
					game.message = ["You ran out of attempts, the word was \"{game.word}\"", 0, -1]
					game.complete = yes
		
		if !found && !game.complete
			game.message = ["\"{guess}\" is not a valid Morse Code letter", 2000]

		game.currentLetter = []