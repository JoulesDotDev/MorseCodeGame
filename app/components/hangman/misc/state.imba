import getWord from './getWord.imba'

class State
	def init
		word = getWord!
		correct = []
		complete = no
		mitakes = []
		attempts = 15
		timer = 1

	def clear
		init!

const state = new State!

tag hangman-state
	get #game
		return state