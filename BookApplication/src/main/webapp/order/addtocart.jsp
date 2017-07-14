<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OrderItems</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
	body {
	background: url("../../assests/images/background-image.jpg");
	    height: 50%;
	
}

</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">BookStore</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="index.jsp">Home</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/users/logout">Hi,${user.name} <span
						class="glyphicon glyphicon-log-out"></span> Logout
				</a></li>
			</ul>
		</div>
	</nav>

	<center>

<br><br><br>
		<fieldset
			style="color: black; width: 600px; height: 100px; font-size: 20px">
			<b>ADD ITEMS TO THE CART<b><br>
				<br>

					<form action="../orderItems/addToCart" method="post">

						<input type="hidden" name="book_id" value="${BOOK_ORDER.id}" />
						<table style="width: 650px; height: 50px"
							class="table table-responsive" border="3">
							<thead style="color: white; background: black;">
								<tr>
									<center>
										<th>Book Name</th>
										<th>Price</th>
										<th>Quantity</th>
										<th>Cart</th>
									</center>

								</tr>
							</thead>
							<center>
								<tr>


									<td  style="color:white">${BOOK_ORDER.name}</td>

									<td  style="color:white">Rs. ${BOOK_ORDER.price}</td>
									<td><input style="align: center" type="number" name="qty"
										min="1" value="1" required /></td>


									<b><td ><button>
												<img style="height: 40px" alt=""
													src="../../assests/images/add-to-cart-button-blue.png">
											</button></td></b>

								</tr>
							</center>
						</table>
					</form>
		</fieldset>
	</center>

</body>
</html>