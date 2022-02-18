import morseCode from '../../variables/morseCode'

tag hangman-options < game-state
	<self> 
		for option in #game.options
			<hangman-option option=option morse=(morseCode[option]) disabled=(#game.guesses.includes option)>

css hangman-options
	ta:center
	m:auto