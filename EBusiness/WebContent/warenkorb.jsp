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
	<div id="content">
		<h1>SNEAKERSHOP.CH</h1>
		<div id="divShoppingCart">
			<a href="warenkorb.jsp"><img id="shoppingCart"
				src="Images/shoppingCart.png" /></a>
		</div>
		<div id="navigation">
			<table>
				<tr>
					<td><a class="nav" href="home.jsp">Home</a></td>
					<td><a class="nav" href="BrandsHome/adidas.jsp">Adidas</a></td>
					<td><a class="nav" href="BrandsHome/nike.jsp">Nike</a></td>
					<td><a class="nav" href="BrandsHome/converse.jsp">Converse</a></td>
					<td><a class="nav" href="BrandsHome/puma.jsp">Puma</a></td>
					<td><input id="search" class="nav" type="search"
						value="search"></td>
				</tr>
			</table>
		</div>
	</div>
	<br>
	<br>
	AKTUELLER WARENKORB
	<div id="warenkorbPreisTotal">Preis Total: </div>
	<form action="bestellen.jsp">
	<br>
	<br>
		<input type="submit" value="bestellen" />
	</form>
</body>
</html>