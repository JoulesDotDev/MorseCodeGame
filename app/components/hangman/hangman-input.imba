tag hangman-input < hangman-state

	css h:12 w:30 m:0 auto d:flex jc:center ai:center
		bgc:cooler8 mt:12 fs:1.8em
	css div d:inline-block

	<self> 
		for letter of #game.currentLetter
			<div [c: blue3]=(letter == ".") [c:red3]=(letter == "-")> letter
			

