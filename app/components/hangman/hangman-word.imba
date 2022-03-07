tag hangman-word < hangman-state

	css mt:20 ta:center d:flex jc:center

	<self>
		for letter of #game.word
			<hangman-letter letter=letter solved=(#game.correct.includes letter)>

