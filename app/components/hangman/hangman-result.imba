tag hangman-result < game-state
	def render
		<self>
			if #game.over
				"You used " 
				<span[c: green4] [c: red4]=(#game.guesses.length == #game.options.length)> #game.guesses.length
				" out of the " 
				<span[c: red4]> #game.options.length
				" available letters"
				
css hangman-result
	c:white
	ta:center
	fw: bold fs:1.2em
	mt:7 px:3
