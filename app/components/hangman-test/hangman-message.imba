tag hangman-message
	attempts = 0
	total = 0
	display = false

	def render
		<self>
			if display
				"You used" 
				<span[c:green4] [c:red4]=(attempts == total)> " {attempts} " 
				"out of the" 
				<span[c:red4]> " {total} "
				"available letters"
				
css hangman-message
	c:white
	ta:center
	fw: bold fs:1.2em
	mt:7
