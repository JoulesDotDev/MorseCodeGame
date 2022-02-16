tag hangman-options
	value = ""
	options = []
	disabled = false

	def setup
		options = value.split("")
		options = [... new Set(options)]

		until options.length === Math.min(value.length * 2, 10)
			const code = Math.floor(Math.random! * 26 ) + 65
			const char = String.fromCharCode(code)
			continue if options.includes char
			options.push char
	
		options.sort(do Math.random() - 0.5)

	def render
		<self> 
			for option in options
				<hangman-option disabled=disabled value=option>

css hangman-options
	ta:center
	m:auto