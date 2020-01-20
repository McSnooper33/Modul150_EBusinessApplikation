<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SNEAKERSHOP.CH</title>
<link href="css/home.css" rel="stylesheet" type="text/css">
<script src="jquery-3.4.1.min.js"></script>
<script src="js/frontend.js"></script>
</head>
<body>
<h1>SNEAKERSHOP.CH</h1>
<div id="divShoppingCart"><img id="shoppingCart" src="Images/shoppingCart.png"/></div>
<div id="navigation">
	<table>
		<tr>
			<td> 
				<a class="nav">Home</a>
			</td>
			<td>
				<a class="nav">Adidas</a>
			</td>
			<td>
				<a class="nav">Nike</a>
			</td>
			<td>
				<a class="nav">Converse</a>
			</td>
			<td>
				<a class="nav">Puma</a>
			</td>
			<td>
				<input id="search" class="nav" type="search" value="search">
			</td>
		</tr>
	</table>
</div>


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