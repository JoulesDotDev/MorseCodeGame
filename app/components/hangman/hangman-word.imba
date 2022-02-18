tag hangman-word < game-state
	<self>
		for letter in #game.word
			<hangman-letter letter=letter>

css hangman-word
	d:inline-block
	d:flex jc:center ai:center
	mt:12 mb:10
