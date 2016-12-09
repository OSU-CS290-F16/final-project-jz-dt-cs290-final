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

connection.query('SELECT * FROM card', function(err,rows){
  if(err) throw err;

  else{
    app.get('/chest', function (req, res) {
      res.render('chest', {
      pageTitle: "Chest Tracker"

      chest: rows[0].
      });
    });
  }

})


connection.query('SELECT * FROM card', function(err,rows){
  if(err) throw err;
  else{
app.get('/deckbuilder', function (req, res) {
 res.render('deckbuilder', {
   pageTitle: "Deckbuilder",
   link1: rows[0].Url,
   link2: rows[1].Url,
   link3: rows[2].Url,
   link4: rows[3].Url,
   link5: rows[4].Url,
   link6: rows[5].Url,
   link7: rows[6].Url,
   link8: rows[7].Url,
   link9: rows[8].Url,
   link10: rows[9].Url,
   link11: rows[10].Url,
   link12: rows[11].Url,
   link13: rows[12].Url,
   link14: rows[13].Url,
   link15: rows[14].Url,
   link16: rows[15].Url,
   link17: rows[16].Url,
   link18: rows[17].Url,
   link19: rows[18].Url,
   link20: rows[19].Url,
   link21: rows[20].Url,
   link22: rows[21].Url

   });
});
}
})

app.get('/youtube', function (req, res) {
 res.render('youtube', {
   pageTitle: "Youtube"

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
