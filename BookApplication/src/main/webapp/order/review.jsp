<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Review</title>
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
		<h2>Kindly Submit for better service</h2>
		<form action="../users/review" method="post">
			<div class="form-group">


				<input style="width: 450px" placeholder="UserName" type="text"
					class="form-control" size="20" name="name">
			</div>
			<div class="form-group">

				<textarea style="width: 450px" placeholder="Review" name="review"
					class="form-control" rows="4" cols="20">
</textarea>
				<br>
				<br>
			</div>
			<input type="submit" class="btn btn-success btn-sm" value="Submit">

		</form>
	</center>
</body>
</html>