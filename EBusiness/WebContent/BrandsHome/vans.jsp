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
		<a href="../warenkorb.jsp"><img id="shoppingCart" src="../Images/shoppingCart.png" /></a>
	</div>
	<div id="navigation">
		<table>
			<tr>
				<td><a class="nav" href="../home.jsp">Home</a></td>
				<td><a class="nav" href="adidas.jsp">Adidas</a></td>
				<td><a class="nav" href="nike.jsp">Nike</a></td>
				<td><a class="nav" href="converse.jsp">Converse</a></td>
				<td><a class="nav" href="puma.jsp">Puma</a></td>
				<td><input id="search" class="nav" type="search" value="search">
				</td>
			</tr>
		</table>
	</div>
	<div>
		<h2>VANS</h2>
	</div>
	<div class="picture" id="12">
		<a href="details.jsp?detailsId=12"><img src="../Images/12.jpg"></a>
	</div>
	<div class="picture" id="13">
		<a href="details.jsp?detailsId=13"><img src="../Images/13.jpg"></a>
	</div>
</body>
</html>