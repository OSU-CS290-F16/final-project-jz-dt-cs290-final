var fs = require('fs');
var path = require('path');
var express = require('express');
var exphbs = require('express-handlebars');
var bodyParser = require('body-parser');
var mysql = require('mysql');

var app = express();
var port = process.env.PORT || 3000;

var mysqlHost = process.env.localhost;
var mysqlUser = process.env.root;
var mysqlPassword = process.env.pass;
var mysqlDB = process.env.cards;

 var connection =  mysql.createConnection({
   host: "localhost",
   user: "root",
   password: "pass",
   database: "clash"
 });

 connection.connect(function(err){
   if(err){
     console.log(err);
     return;
   }
   console.log("Connected");
 });

app.engine('handlebars', exphbs({ defaultLayout: 'main' }))
app.set('view engine', 'handlebars');

 // Parse all request bodies as JSON.
 app.use(bodyParser.json());

 // Serve static files from public/.
 app.use(express.static(path.join(__dirname, 'public')));

 app.get('/', function (req, res) {
  res.render('index', {
  });
});

connection.query('SELECT url FROM card', function(err,rows){
  if(err) throw err;

})


app.get('/deckbuilder', function (req, res) {
 res.render('deckbuilder', {
   pageTitle: "Deck Builder"

   });
});

app.get('/youtube', function (req, res) {
 res.render('youtube', {
   pageTitle: "Youtube"

   });
});

app.get('/chest', function (req, res) {
 res.render('chest', {
   pageTitle: "Chest Tracker"

   });
});

app.get('/update', function (req, res) {
 res.render('update', {
   pageTitle: "update"

   });
});

app.get('*', function(req, res) {
  res.status(404).render('404', {
    pageTitle: '404'
  });
});



app.listen(port, function () {
    console.log("== Listening on port", port);
  });

 /*connection.end(function(err){

 });*/
