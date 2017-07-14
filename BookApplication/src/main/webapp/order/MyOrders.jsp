<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List My Orders</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">BookStore</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/users/logout">Hi,${user.name} <span
						class="glyphicon glyphicon-log-out"></span> Logout
				</a></li>
			</ul>
		</div>
	</nav>

	<center>
		<h1>MY ORDERS</h1>
	</center>
	<div class="content">
		<div class="container-fluid">

			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong><i class="fa fa-list"></i> My Orders</strong>
						</div>
						<div class="panel-body">
							<table id="ordersTbl" border="1"
								class="table table-striped table-bordered">
								<thead>
									<tr>
										<th width="10%">Order Id</th>
										<th>Order Items</th>
										<th>Quantity</th>

										<th>Offer Amount</th>
										<th>Status</th>
										<th>Ordered Date</th>
										<th>Cancelled Date</th>


									</tr>
								</thead>
								<tbody>
									<c:forEach items="${MY_ORDERS}" var="order">
										<tr>
											<c:forEach items="${order.orderItems}" var="item">

												<td>${order.id}</td>



												<td>

													<ul>
														<li>${item.book.name}</li>
														<td>${item.quantity}</td>

													</ul>
												</td>

												<td>Rs. ${order.totalPrice }</td>
												<td>${order.status}</td>
												<td>${order.orderedDate }</td>
												<td>${order.cancelledDate }</td>


												<c:if test="${order.status == 'ORDERED'}">
													<td><a
														href="../order/updateStatus?id=${order.id}&status=CANCELLED"
														class="btn btn-danger btn-sm">Cancel Order </a></td>
												</c:if>
										</tr>

									</c:forEach>
									</c:forEach>




								</tbody>

							</table>
							<center>
								<a href="../order/myorderedlist?id=${order.id}"
									class="btn btn-success btn-sm">Order List </a> <a
									href="../order/mycancelledlist?id=${order.id}"
									class="btn btn-danger btn-sm">Cancel List </a> <a
									href="../order/review" class="btn btn-success btn-sm">Review
								</a>
							</center>


						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<script>
		$(document).ready(function() {
			$("#ordersTbl").DataTable();
		});
	</script>
</body>
</html>