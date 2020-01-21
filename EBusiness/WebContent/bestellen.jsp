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
	<div id="divShoppingCart">
		<a href="warenkorb.jsp"><img id="shoppingCart" src="Images/shoppingCart.png" /></a>
	</div>
	<div id="navigation">
		<table>
			<tr>
				<td><a class="nav" href="home.jsp">Home</a></td>
				<td><a class="nav" href="BrandsHome/adidas.jsp">Adidas</a></td>
				<td><a class="nav" href="BrandsHome/nike.jsp">Nike</a></td>
				<td><a class="nav" href="BrandsHome/converse.jsp">Converse</a></td>
				<td><a class="nav" href="BrandsHome/puma.jsp">Puma</a></td>
				<td><input id="search" class="nav" type="search" value="search">
				</td>
			</tr>
		</table>
	</div>
	<br>
	<br>
	<br>
	<form action="home.jsp">
	<div>
		<table id="formularTable" class="formular">
			<tr>
				<td>Nachname:</td><td><input type="text" name="nachname" class="formular"></td>
			</tr>
			<tr>
				<td>Vorname:</td><td><input type="text" name="vorname" class="formular"></td>
			</tr>
			<tr>
				<td>Strasse, Nr:</td><td><input type="text" name="strasse" class="formular"></td>
			</tr>
			<tr>
				<td>PLZ:</td><td><input type="text" name="plz" class="formular"></td>
			</tr>
			<tr>
				<td>Stadt/Dorf:</td><td><input type="text" name="bezeichnung" class="formular"></td>
			</tr>
			<tr>
				<td><br></td>
			</tr>
			<tr>
				<td><input type="submit" name="bestellen"></td>
			</tr>
		</table>
	</div>
	</form>
</body>
</html>