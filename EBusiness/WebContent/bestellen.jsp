<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SNEAKERSHOP.CH</title>
<link href="../css/home.css" rel="stylesheet" type="text/css">
<script src="jquery-3.4.1.min.js"></script>
<script src="js/frontend.js"></script>
</head>
<body>
	<h1>SNEAKERSHOP.CH</h1>
	<div id="divShoppingCart">
		<img id="shoppingCart" src="Images/shoppingCart.png" />
	</div>
	<div id="navigation">
		<table>
			<tr>
				<td><a class="nav">Home</a></td>
				<td><a class="nav">Adidas</a></td>
				<td><a class="nav">Nike</a></td>
				<td><a class="nav">Converse</a></td>
				<td><a class="nav">Puma</a></td>
				<td><input id="search" class="nav" type="search" value="search">
				</td>
			</tr>
		</table>
	</div>
	<form action="home.jsp" method="post"></form>
	<div id="formular">
		<table>
			<tr>
				<td>Nachname: <input type="text" name="nachname"></td>
			</tr>
			<tr>
				<td>Vorname: <input type="text" name="vorname"></td>
			</tr>
			<tr>
				<td>Strasse, Nr <input type="text" name="strasse"></td>
			</tr>
			<tr>
				<td>PLZ <input type="text" name="plz"></td>
			</tr>
			<tr>
				<td>Stadt/Dorf<input type="text" name="bezeichnung"></td>
			</tr>
			<tr>
				<td><input type="submit" name="bestellen">Bestellen</td>
			</tr>
		</table>
	</div>
</body>
</html>