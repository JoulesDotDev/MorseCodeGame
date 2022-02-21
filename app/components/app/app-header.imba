tag app-header

	css ta:center
	css h1 mt:15
	css link-button mt:5

	<self> 
		<h1> "Learn Morse Code"
		if router.path !== "/"
			<link-button route-to="../" back=yes> "Back"