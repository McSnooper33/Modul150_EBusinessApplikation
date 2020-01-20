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
		<img id="shoppingCart" src="Images/shoppingCart.png" />
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
	<table>
		<tr>
			<td><div id="detailPicture"></div></td><td><table id="sizeTable">
			<tr>
				<td>Size:<br><input type="radio" name="size">38</td>
			</tr>
			<tr>
				<td><input type="radio" name="size">39</td>
			</tr>
			<tr>
				<td><input type="radio" name="size">40</td>
			</tr>
			<tr>
				<td><input type="radio" name="size">41</td>
			</tr>
			<tr>
				<td><input type="radio" name="size">42</td>
			</tr>
			<tr>
				<td><input type="radio" name="size">43</td>
			</tr>
			<tr>
				<td><br><br><br></td>
			</tr>
			<tr>
				<td>Price:<div id="detailPrice"></div></td>
			</tr>
		</table></td>
		</tr>
		<tr>
			<td><div id="detailName"></div></td>
		</tr>
		<tr>
			<td><div id="detailDescription"></div></td>
		</tr>
	</table>
	
	<div id="buttonAdd">

	<button onclick="addProduct()">Hinzufügen</button>
	</div>
</body>
</html>