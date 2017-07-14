<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ReviewSuccess</title>
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
			<li class="active"><a href="../index.jsp">Home</a></li>

		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/users/logout">Hi,${user.name} <span
					class="glyphicon glyphicon-log-out"></span> Logout
			</a></li>
		</ul>
	</div>
	</nav>
	<center>
	<br><br><br><br>	<br><br>
		<h1 style="color: black">Review Submitted Successfully</h1>
		<br>

		<h2 style="color: black">Your review was sent to the admin</h2>
	</center>

</body>
</html>