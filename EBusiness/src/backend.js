var mysql = require('mysql');
var express = require('express');
var app = express();

var bodyParser = require("body-parser");
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());


app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "http://localhost:8080");
  res.header("Access-Control-Allow-Headers", "Content-Type");
  res.header("Access-Control-Allow-Credentials", true);
  next();
});


var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Gg24682468",
  database: 'login' //DB-Name
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});
global.db = con;

app.get('/api/getSneakerDetails', function (req, res) {
	let detailsId = req.query.detailsId;
	con.query("SELECT artikelNr, artikelName, artikelBeschreibung, preis FROM artikel where artikelNr = " + detailsId, function (err, result, fields) {
		if (err) throw err;
	    console.log(result);
	    res.status(200).json(result);
	    
	    /*
	     Result-Format:
	     
	     [
	     	{artikelNr: 1, artikelName: "AirForce", artikelBeschreibung: "asdf", preis: 200.00},
	     ]
	     
	     */
	});
});


app.listen(8080, function () {
  console.log('app listening on port 8080!');
});