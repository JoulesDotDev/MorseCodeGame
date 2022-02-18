import 'app/components'

tag morse-word
	value = ""
	morse = yes
	color = 1

	def setColor
		color = Math.floor(Math.random() * 256)

	def render
		setColor!

		<self>
			<div.word>
				for letter in value.toUpperCase!
					<morse-letter color=color morse=morse value=letter>

css morse-word
	.word
		ta:center