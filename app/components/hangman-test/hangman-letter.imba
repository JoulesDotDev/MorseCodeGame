tag hangman-letter
	value = ""
	guess = false

	def render
		<self>
			unless guess
				"_"
			else
				value

css hangman-letter
	d:inline-block
	mx:2
	c: white
	fw:bold fs:2rem