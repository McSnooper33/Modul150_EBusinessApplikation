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

<jsp:forward page="details.jsp"> <jsp:param name="detailsId" value="detailsId"/></jsp:forward>



<script>
	$(document).ready(function() {
		var sneakerId = request.getParameter("detailsId");
		var myRequest = new XMLHttpRequest();
		myRequest.open('GET', '/api/getSneakerDetails');
		myRequest.send(sneakerId);
		
		myRequest.onreadystatechange = function() {
			if(myRequest.readyState === 4) {
				document.getElementById('detailPicture').innerHTML = myRequest.responseText.detailPicture;
				document.getElementById('detailName').innerHTML = myRequest.responseText.detailNameS;
				document.getElementById('detailDescription').innerHTML = myRequest.responseText.detailDescription;
				document.getElementById('detailPrice').innerHTML = myRequest.responseText.detailPrice;
			}};
		
	});
	
</script>
</html>