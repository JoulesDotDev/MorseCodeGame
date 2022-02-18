import wordList from 'app/components/hangman/variables/wordList.imba'

export default do
	const index = Math.floor(Math.random! * wordList.length)
	wordList[index].toUpperCase!
