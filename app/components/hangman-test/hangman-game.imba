import getHangmanWord from 'app/functions/getHangmanWord'
import 'app/components'

tag hangman-game
	word = ""
	guesses = []
	mistakes = []
	options = []
	attempts = 0
	correct = 0
	displayMessage = false

	def setup
		word = getHangmanWord!.toUpperCase!
		guesses = Array(word.length).fill(false)
	
	def check {detail: guess}
		let found = false
		attempts++
		for letter, pos in word
			if letter === guess
				guesses[pos] = found = true
				correct++
				if correct == word.length
					displayMessage = true
		
		unless found
			mistakes.push guess.toUpperCase!

	def render
		<self @option=check> 
			<hangman-word value=word guesses=guesses>
			<hangman-mistakes mistakes=mistakes>
			<hangman-options disabled=displayMessage bind:options=options value=word>
			<hangman-message display=displayMessage attempts=attempts total=options.length>

css hangman-game
	max-width: 360px
	m: 0 auto