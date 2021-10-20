const express = require('express')
const app = express()
const port = 3000
const fs = require('fs')

app.get('/', (req, res) => {
  fs.writeFileSync('data/info.txt', (new Date).toISOString())
  res.send('Bye Bye Bye World!')
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
