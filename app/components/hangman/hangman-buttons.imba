tag hangman-buttons < hangman-state

	css w: 275px m:0 auto
		mt:12 d:flex jc:center

	css common-button h:12 w:12 d:flex
		jc:center ai:center mx:2
		i fs:1.6em

	def press value
		unless #game.currentLetter.length >= #game.maxLetters
			#game.currentLetter.push value
	
	def remove
		if #game.currentLetter.length > 0
			#game.currentLetter.pop!

	<self> 
		<common-button @click=remove>
			<i.fa-solid.fa-arrow-left>	
		<common-button @click=(press '.')>
			<dot>
		<common-button @click=(press '-')>
			<dash>
		<common-button @click.emit('submitLetter')>
			<i.fa-solid.fa-arrow-right>	

tag dot
	css h:3.5 w:3.5 bgc:cooler3 rd:full

tag dash
	css h:2 w:6.5 bgc:cooler3 rd:xs
