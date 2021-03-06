const express = require('express')
const app = express()
const path = require('path')
const PORT = process.env.PORT || 5000
require('dotenv').config();
const mainController = require("./public/Controller/mainController.js");

app
  .use(express.static(path.join(__dirname, 'public')))
  .use(express.json())
  .use(express.urlencoded({extended: true}))
  .set('views', path.join(__dirname, 'views'))
  .set('view engine', 'ejs')
  .get('/', (req, res) => res.render('pages/index'))
  .get('/getItems', mainController.getItems)
  .listen(PORT, () => console.log(`Listening on ${ PORT }`))


