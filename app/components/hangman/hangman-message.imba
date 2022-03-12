tag hangman-message < hangman-state

	hidden = no

	css .messageBox d:block ta:center m:0 auto fs:1.1em max-width: 350px
		bgc: cooler8 p:6 6 pos:fixed l:50% 
		transform:translateX(-50%) t:-50 .show:28.3
		tween: top ease 250ms bd: 2px solid cooler6

		&.modal tween:unset t:50% mt:0 transform:translate(-50%, -40%)
			bgc: cooler9
			.message my:12

	css .overlay pos:absolute bgc:white/10% t:0 r:0 b:0 l:0

	css .close d:inline-block pos:absolute t:3 r:3 pt:2 px:2.5 pb:1.1 fs:1.3em

	def clearMessage 
		#game.showMessage = no
		#game.showModal = no
		hidden = yes
		setTimeout(&, 250) do hidden = no
		if #game.complete
			#game.clear!

	def render
		<self> 
			unless hidden
				if #game.showModal
					<div .overlay>
				<div .messageBox .show=(#game.showMessage) .modal=(#game.showModal)>
					if #game.showModal
						<common-button .close @click=(clearMessage)> <i.fa-solid.fa-xmark>
					<div.message [c:white] [c:red3]=(#game.messageType === -1) [c:green3]=(#game.messageType === 1)> #game.message