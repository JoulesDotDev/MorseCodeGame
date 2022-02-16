import morseCode from 'app/variables/morseCode'

tag hangman-option
	value = ""
	morseValue = ""
	disabled = false

	def setup
		morseValue = morseCode[value]

	def turnOff
		self.classList.toggle "turnedOff"

	def render
		<self @mousedown.if(!disabled).emit('option', value).once.debounce(125)=turnOff>
			morseValue
		
css hangman-option
	c:cooler7 c@hover:cool2 p:2
	bgc:sky3 bgc@hover: sky5
	shadow: 0px 5px sky4
	shadow@hover: 0px 5px sky6
	shadow@active: 0px 0px sky6
	transform@active: translateY(5px)
	tween: transform 100ms, box-shadow 100ms
	us:none cursor:pointer
	d:inline-block
	fw: bold fs:2em
	rd:3 m:3 min-width: 1.5em ta:center

	&.turnedOff
		bgc:gray4 bgc@hover: gray4
		c:cool7
		shadow: 0px 5px gray6
		shadow@hover: 0px 5px gray6
		tween: none transform: none


