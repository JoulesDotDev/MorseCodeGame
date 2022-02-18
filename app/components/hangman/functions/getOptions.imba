export default def createHangmanOptions word
	let options = word.split("")
	options = [... new Set(options)]

	until options.length === word.length * 2
		const code = Math.floor(Math.random! * 26 ) + 65
		const char = String.fromCharCode(code)
		continue if options.includes char
		options.push char
		options.sort(do Math.random() - 0.5)
		
	options