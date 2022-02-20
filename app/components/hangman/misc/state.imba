import getWord from './getWord.imba'

class State
	constructor
		init!

	def init
		word = getWord!
		correct = []
		complete = no
		mitakes = []

	def clear
		init!

const state = new State!

tag hangman-state
	get #game
		return state