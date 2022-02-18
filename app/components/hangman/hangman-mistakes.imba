tag hangman-mistakes < game-state
	def render
		<self> 
			for mistake in #game.mistakes
				<div>
					mistake

css hangman-mistakes
	c:white min-height:40px
	fs: 1.7em fw:bold
	ta:center mb:5

	div
		d:inline-block
		mx:3 c:red4

