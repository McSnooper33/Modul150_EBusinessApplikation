<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SNEAKERSHOP.CH</title>
<link href="../home.css" rel="stylesheet" type="text/css">
<script src="jquery-3.4.1.min.js"></script>
</head>
<body>

<script>
	var currentSneaker = null;

	var getUrlParameter = function getUrlParameter(sParam) {
	    var sPageURL = window.location.search.substring(1),
	        sURLVariables = sPageURL.split('&'),
	        sParameterName,
	        i;
	
	    for (i = 0; i < sURLVariables.length; i++) {
	        sParameterName = sURLVariables[i].split('=');
	
	        if (sParameterName[0] === sParam) {
	            return sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
	        }
	    }
	};

	$(document).ready(function() {
		var detailsId = getUrlParameter('detailsId');
		/*
		var myRequest = new XMLHttpRequest();
		myRequest.open('GET', 'localhost:3000/api/getSneakerDetails');
		myRequest.send(sneakerId);
		
		myRequest.onreadystatechange = function() {
			if(myRequest.readyState === 4) {
				document.getElementById('detailPicture').innerHTML = myRequest.responseText.detailPicture;
				document.getElementById('detailName').innerHTML = myRequest.responseText.detailNameS;
				document.getElementById('detailDescription').innerHTML = myRequest.responseText.detailDescription;
				document.getElementById('detailPrice').innerHTML = myRequest.responseText.detailPrice;
			}};
		*/
			
		fetch('localhost:3000/api/getSneakerDetails?detailsId=' + detailsId)
			.then(function(response){
				currentSneaker = response.json()[0];
				document.getElementById('detailPicture').innerHTML = '<img src="Images/' currentSneaker.artikelNr '.jpg" >';
				document.getElementById('detailName').innerHTML = currentSneaker.artikelName;
				document.getElementById('detailDescription').innerHTML = currentSneaker.artikelBeschreibung;
				document.getElementById('detailPrice').innerHTML = currentSneaker.preis;
			});
	});
	
	function addProduct(){
		var warenkorb = JSON.parse(Window.localStorage.getItem("warenkorb"));
		if(typeof warenkorb === "undefined"){
			warenkorb = [];
		}
		warenkorb.push(currentSneaker);
		Window.localStorage.setItem("warenkorb", JSON.parse(warenkorb));
	}
</script>

<h1 id="title">SNEAKERSHOP.CH</h1>
<div id="nav">
	<pre>  <a>Home</a>		<a>Adidas</a>			<a>Nike</a>			<a>Converse</a>			<a>Vans</a>			<a>Puma</a></pre>
</div>
<div id="divSearch"><input id="search" type="search" value="search"></div>
<img src="../Images/shoppingCart.png" id="shoppingCart">

<div id="detailPicture">
</div>
<div id="detailName">

</div>
<div id="detailDescription">

</div>
<div id="detailSize">

</div>

<button onclick="addProduct()">Hinzufügen</button>
</body>
</html>