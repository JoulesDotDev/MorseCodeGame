import './variables/state.imba'

tag hangman < game-state
	css
		max-width: 360px
		m: 0 auto
		pb:20

	def guess event
		#game.guesses.push event.detail
		let foundLetter = false
		for letter in #game.word
			if event.detail === letter
				foundLetter = true
				#game.correct.add letter
				#game.score += 1
				if #game.score === #game.word.length
					#game.over = true

		unless foundLetter
			#game.mistakes.push event.detail

	def replay
		#game.create!

	def setup
		#game.create!

	def render
		<self @guess.debounce(100)=guess @replay=replay> 
			<hangman-word>
			<hangman-mistakes>
			<hangman-options>
			<hangman-result>
			<hangman-replay>