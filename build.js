const fs = require('fs')
const path = require('path')

const filename = path.resolve('./dist/public/index.html')
fs.readFile(filename, 'utf8', function (err, data) {
	if (err) throw err
	const newData = data.replace('client.js', 'client.js?v=' + Date.now())

	fs.writeFile(filename, newData, 'utf8', function (err) {
		if (err) console.log(err)
	})
})