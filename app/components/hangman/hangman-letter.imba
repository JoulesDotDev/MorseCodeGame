tag hangman-letter < game-state
	<self>
		unless #game.correct.has letter
			"_"
		else
			letter

css hangman-letter
	d:inline-block
	mx:2
	c: white
	fw:bold fs:2rem