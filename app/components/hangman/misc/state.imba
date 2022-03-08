import getWord from './getWord.imba'

class State
	#message = ""
	timeout = null

	set message value
		#message = value[0]
		showMessage = yes
		clearTimeout timeout
		if value[1] > 0
			timeout = setTimeout(&, value[1]) do
				showMessage = no
				imba.commit!
		else
			showModal = yes
		messageType = value[2]

	get message
		return #message

	def init
		showModal = no
		word = getWord!
		correct = []
		complete = no
		mistakes = []
		attempts = 15
		timer = 1
		currentLetter = []
		maxLetters = 4
		messageType = 0

	def clear
		init!

const state = new State!

tag hangman-state
	get #game
		return state