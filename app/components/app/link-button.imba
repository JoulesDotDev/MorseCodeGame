tag link-button

	<self>
		unless back
			"> "
		else 
			"< "
		<slot>

css link-button
	bg:cool8 @hover:cool7
	p:3 6 d:inline-block
	fs: 1.1em us:none cursor:pointer