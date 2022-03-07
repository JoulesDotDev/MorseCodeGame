import getWord from './getWord.imba'

class State
	message = ""

	def init rerun
		word = getWord!
		correct = []
		complete = no
		mistakes = []
		attempts = 15
		timer = 1
		currentLetter = []
		maxLetters = 4
		if message && !rerun
			message = ""
			imba.commit!

	def clear
		init true
		setTimeout(&, 2000) do 
			message = ""
			imba.commit!

const state = new State!

tag hangman-state
	get #game
		return state