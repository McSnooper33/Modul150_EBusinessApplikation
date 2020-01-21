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


<script>
	var warenkorb = JSON.parse(window.localStorage.getItem("warenkorb"));
	for (var currentWarenkorbItem = 0; currentWarenkorbItem < warenkorb.size(); currentWarenkorbItem + 1) {
		$('#content')
				.append(
						"<table><tr><td><div id='warenkorbPicture'" + currentWarenkorbItem + " class='warenkorbListe'></div></td></tr><tr><td><div id='warenkorbBezeichnung'" + currentWarenkorbItem + " class='warenkorbListe'></div></td></tr><tr><td><div id='warenkorbPreis'" + currentWarenkorbItem + " class='warenkorbListe'></div></td></tr></table>")

		document.getElementById('warenkorbPicture' + currentWarenkorbItem).innerHTML = '<img src="Images/' + warenkorb[currentWarenkorbItem].getArtikelNr + '.jpg" >';
		document.getElementById('warenkorbName' + currentWarenkorbItem).innerHTML = warenkorb[currentWarenkorbItem].getArtikelName;
		document.getElementById('warenkorbPrice' + currentWarenkorbItem).innerHTML = warenkorb[currentWarenkorbItem].getPreis;
	}
</script>
</head>
<body>
	<div id="content">
		<h1>SNEAKERSHOP.CH</h1>
		<div id="divShoppingCart">
			<a href="warenkorb.jsp"><img id="shoppingCart" src="Images/shoppingCart.png" /></a>
		</div>
		<div id="navigation">
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
	</div>
	<div id="warenkorbPreisTotal"></div>
	<form action="bestellen.jsp">
		<input type="submit" value="bestellen" />
	</form>
</body>
</html>