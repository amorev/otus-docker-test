const express = require('express')
const app = express()
const port = 3000

// RUN LIKE THIS
// DB_USER=root DB_PASSWORD=123123 npm run dev
const dbUser = process.env.DB_USER;
const dbPassword = process.env.DB_PASSWORD;

console.log({dbUser, dbPassword})
// Креды - Creds - Credentials - Данные для доступа куда либо - авторизационные данные
//
// app.get('/', (req, res) => {
//   res.send('Bye Bye World!')
// })
//
// app.listen(port, () => {
//   console.log(`Example app listening at http://localhost:${port}`)
// })
