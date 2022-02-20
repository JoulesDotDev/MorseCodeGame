tag app-header

	<self> 
		<h1> "Learn Morse Code"
		if router.path !== "/"
			<link-button route-to="../" back=yes> "Back"

css app-header
	h1 mt:15