<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BookStore-OrderNow</title>
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
		</div>
	</nav>

	<center>



<h1 style="color:black; font-size: 20px">
				<b>LIST OF ORDERS</b>
			</h1>

		<form>
										    <div style='float:none'>
		
				<table class="table table-responsive" style="width: 550px; height: 50px"
				border="1">
							<thead style="color: white; background: black;">
					<tr>
						<th style="font-size: 20px">Id</th>
						<th style="font-size: 20px">ItemName</th>
						<th style="font-size: 20px">Quantity</th>
						<th style="font-size: 20px">TotalCost</th>
						<th style="font-size: 20px">Remove</th>

					</tr>
				</thead>
				<tbody>


					<c:forEach items="${MY_CART.orderItems}" var="orderItem"
						varStatus="id">
						<tr>
							<td style="color:white">${id.index+1}</td>

							<td style="color:white">${orderItem.book.name}</td>
							<td style="color:white">${orderItem.quantity}</td>
							<td style="color:white">Rs.${orderItem.quantity*orderItem.book.price}</td>
							<td style="color:white"><a href="/order/remove?id=${id.index}"><img
									style="height: 40px" alt=""
									src="../../assests/images/remove-from-cart-icon.jpg"></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
		</div>
										    <div style='float:none'>
		
		
		<button>
			<a href="/books/list"><img style="height: 50px; width: 100px"
				alt="" src="../../assests/images/continue.PNG"></a>
		</button>

				<img  src="../../assests/images/special-offer-PNG.png" title="Special offer is available-Continue shopping" height="62" width="142"/>
</div>
</center>
<center>
		<div class="col-md-4a">
			<h1 style="color: black; font-size: 20px">
				<b>PRICE DETAILS</b>
			</h1>


			<c:set var="total_amount" value="0" />
			<c:forEach items="${MY_CART.orderItems}" var="orderItem">
				<c:set var="total_amount"
					value="${total_amount + orderItem.book.price*orderItem.quantity}" />
			</c:forEach>
						<c:set var="offer_amount" value="0" />
			
			<c:if test="${total_amount<500}">
						
						<c:set var="offer_amount" value="${offer_amount+total_amount*(90/100)}" />
						
												</c:if>
						<c:if test="${total_amount>500}">
						
						<c:set var="offer_amount"
											value="${offer_amount+total_amount*(80/100)}" />
						
												</c:if></tr>

			<form name="orderForm" action="../order/save" method="post">

				<c:set var = "offer_amount" value="${offer_amount}"  />
				
      <fmt:parseNumber var = "offer_amount" integerOnly = "true" 
         type = "number" value="${offer_amount}"  />
      			<input type="hidden" name="offer_amount" value="${offer_amount}" />
      
			
				<table class="table table-responsive" border="5"
					style="width: 550px; height: 30px">

					<tbody>
						<tr>
							<td style="color:white">Price</td>
							<td style="color:white">Rs. ${total_amount}</td>
						</tr>
						<tr>
							<td style="color:white">Delivery Charges</td>
							<td style="color:white">FREE</td>
						</tr>
						<tr>
							<td style="color:white">Amount Payable </td>
							<td style="color:white">Rs. ${total_amount}</td>
						</tr>
						<tr>
									<td style="color:white"><b>**Offer Amount**</b></td>
													<td style="color:white"><b>Rs. ${offer_amount}</b></td>
						
						
						
						<tr>
						
							<td colspan="2" align="center">

								<button style="font-size:20px;height:30px" type="submit" class="btn btn-success"><p><b>Order</b></p>
								</button>
							</td>


						</tr>
					</tbody>
				</table>
				
			</form>
		</div>
</center>

	
</body>
</html>