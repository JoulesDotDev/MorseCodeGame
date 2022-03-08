tag hangman-attempts < hangman-state

	css m:0 auto mt:10 ta:center fs:1.4em
	css .attempts d:inline-block c.danger:red4 .over:red5 mr:3.55

	<self>  
		<div.attempts .danger=(#game.attempts < 6) .over=(#game.over)> 
			#game.attempts
		"Attempts left"