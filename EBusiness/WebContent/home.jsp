<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SNEAKERSHOP.CH</title>
<link href="home.css" rel="stylesheet" type="text/css">
<script src="jquery-3.4.1.min.js"></script>
</head>
<body>
<h1>SNEAKERSHOP.CH</h1>
<div id="nav">
	<pre>  <a>Home</a>		<a>Adidas</a>			<a>Nike</a>			<a>Converse</a>			<a>Vans</a>			<a>Puma</a></pre>
</div>
<div id="divSearch"><input id="search" type="search" value="search"></div>

//TODO<jsp:forward page="details.jsp"> <jsp:param name="detailsId" value="detailsId"/></jsp:forward>

<div><h2>Best seller</h2></div>
<div class="picture" id="1"><a href="details.jsp"><img src="Images/1.jpg" ></a></div>
<div class="picture" id="2"><a href="details.jsp"><img src="Images/2.jpg" ></a></div>
<div class="picture" id="3"><a href="details.jsp"><img src="Images/3.jpg" ></a></div>
<div class="picture" id="4"><a href="details.jsp"><img src="Images/4.jpg" ></a></div>
<div class="picture" id="5"><a href="details.jsp"><img src="Images/5.jpg" ></a></div>
<div class="picture" id="6"><a href="details.jsp"><img src="Images/6.jpg" ></a></div>
<div class="picture" id="7"><a href="details.jsp"><img src="Images/7.jpg" ></a></div>
<div class="picture" id="8"><a href="details.jsp"><img src="Images/8.jpg" ></a></div>



</body>

<script>
$(document).ready(function() {
	var detailsId = $('.picture').click($(this).attr('id'));
	console.log(detailsId);
});

</script>


</html>
