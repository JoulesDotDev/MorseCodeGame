import morseCode from 'app/variables/morseCode.imba'

tag morse-letter
	value = ""
	morseValue = ""
	displayValue = ""
	morse = false
	color = 1
	hsl = "hsl(hue, 50%, light)"

	def flipValue
		morse = !morse
		setMorseValue!

	def setMorseValue
		displayValue = value
		if morse
			let upperCase = value.toUpperCase!
			displayValue = morseCode[upperCase]

	def setColor
		hsl = hsl.replace("hue", color)

		$bgc = hsl.replace("light", "80%")
		$shadow = hsl.replace("light", "60%")
		$hoverBgc = hsl.replace("light", "70%")
		$hoverShadow = hsl.replace("light", "50%")

	def setup 
		setColor!
		setMorseValue!

	def render
		<self>
			<div.letter
			[
				$bgc:{$bgc}
				$shadow:{$shadow}
				$hoverBgc:{$hoverBgc}
				$hoverShadow:{$hoverShadow}
			]
			@click=flipValue> displayValue

css morse-letter
	d:inline-block

	.letter
		py:2 px:4
		fs:2rem ta:center
		bgc:$bgc shadow: 0px 5px $shadow c:gray9
		mx:2 my:2 rd:3
		min-width: 4ch
		us:none cursor:pointer

		&:hover
			bgc:$hoverBgc shadow: 0px 5px $hoverShadow	

		&:active
			transform:translateY(5px)
			shadow: none
