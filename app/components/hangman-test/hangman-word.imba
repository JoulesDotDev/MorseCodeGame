tag hangman-word
	value = ""
	guesses = []

	def render
		<self>
			for letter, pos in value
				<hangman-letter guess=guesses[pos] value=letter>

css hangman-word
	d:inline-block
	d:flex jc:center ai:center
	mt:12 mb:10
