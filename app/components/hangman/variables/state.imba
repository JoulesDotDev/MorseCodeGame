import getOptions from '../functions/getOptions.imba'
import getWord from '../functions/getWord.imba'

class State
	def create
		word = getWord!
		correct = new Set()
		options = getOptions word
		guesses = []
		mistakes = []
		score = 0
		over = false

let state = new State()

tag game-state
	get #game
		return state