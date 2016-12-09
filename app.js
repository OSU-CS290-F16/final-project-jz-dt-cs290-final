 var mysql = require("mysql");

 var connection =  mysql.createConnection({
   host: "localhost",
   user: "root",
   password: "pass",
   database: "cards"
 });

 connection.connect(function(err){
   if(err){
     console.log(err);
     return;
   }
   console.log("Connected");
 });
 connection.query('SELECT * FROM card', function(err,rows){
   if(err) throw err;

   console.log(rows);
 });

 connection.end(function(err){

 });
