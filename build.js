const fs = require('fs')
const path = require('path')

const filename = path.resolve('./dist/public/index.html')
fs.readFile(filename, 'utf8', function (err, data) {
	if (err) throw err
	const timeStamp = Date.now()
	const newData = data.replace('client.js', 'client.js?v=' + timeStamp)
	.replace('all.css', 'all.css?v=' + timeStamp)

	fs.writeFile(filename, newData, 'utf8', function (err) {
		if (err) console.log(err)
	})
})