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



	<div>
		<h2>Best seller</h2>
	</div>
	<div class="picture" id="1">
		<a href="details.jsp?detailsId=1"><img src="Images/1.jpg"></a>
	</div>
	<div class="picture" id="2">
		<a href="details.jsp?detailsId=2"><img src="Images/2.jpg"></a>
	</div>
	<div class="picture" id="3">
		<a href="details.jsp?detailsId=3"><img src="Images/3.jpg"></a>
	</div>
	<div class="picture" id="4">
		<a href="details.jsp?detailsId=4"><img src="Images/4.jpg"></a>
	</div>
	<div class="picture" id="5">
		<a href="details.jsp?detailsId=5"><img src="Images/5.jpg"></a>
	</div>
	<div class="picture" id="6">
		<a href="details.jsp?detailsId=6"><img src="Images/6.jpg"></a>
	</div>
	<div class="picture" id="7">
		<a href="details.jsp?detailsId=7"><img src="Images/7.jpg"></a>
	</div>
	<div class="picture" id="8">
		<a href="details.jsp?detailsId=8"><img src="Images/8.jpg"></a>
	</div>

<div class="footer">
  <a id="shopName">SNEAKERSHOP.CH</a>
  <a id="email">sneakershop@gmail.com</a>
</div>
</body>

</html>
