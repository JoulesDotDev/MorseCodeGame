tag hangman-game < hangman-state

	def setup
		#game.init!
	
	def mount
		setup!

	<self> 
		<hangman-word>
		<hangman-attempts>
		<hangman-input>
		<hangman-buttons>