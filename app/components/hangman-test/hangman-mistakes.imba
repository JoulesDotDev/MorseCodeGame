tag hangman-mistakes
	mistakes = []

	def render
		<self> 
			for mistake in mistakes
				<div>
					mistake
			else

css hangman-mistakes
	c:white min-height:40px
	fs: 1.7em fw:bold
	ta:center mb:5

	div
		d:inline-block
		mx:3 c:red4

