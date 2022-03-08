import checkGuess from 'app/components/hangman/misc/checkGuess.imba'

tag hangman-game < hangman-state

	def setup
		#game.init!
		console.log(#game.word)
	
	def mount
		setup!

	def check
		checkGuess #game

	<self @submitLetter=check> 
		<hangman-word>
		<hangman-attempts>
		<hangman-input>
		<hangman-buttons>
		<hangman-message>