tag hangman-replay < game-state
	<self @click.emit('replay')> 
		if #game.over
			<div.button>
				"Play again"
		
css .button
	c:cooler7 c@hover:cool2 py:3 px:12 m:0 auto mt:15
	max-width: 160px
	bgc:sky3 bgc@hover: sky5
	shadow: 0px 5px sky4
	shadow@hover: 0px 5px sky6
	shadow@active: 0px 0px sky6
	transform@active: translateY(5px)
	tween: transform 100ms
	us:none cursor:pointer
	fw: bold fs:1.3em
	rd:3 min-width: 1.5em ta:center

