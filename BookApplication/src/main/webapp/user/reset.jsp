<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>BookStore-welcome</title>
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
<body background="../../assests/images/Login.jpg">
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">BookStore</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="../index.jsp">Home</a></li>

			</ul>

		</div>
	</nav>


	<center>
		<h1 style="color: white; margin-top: 100px;">Update Password</h1>
	</center>
	<fieldset>
		<form action="/users/update" method="post">
			<div class="form-group">

				<label style="margin-left: 460px; color: white">Name:</label> <br>
				<input type="text" name="name" class="form-control"
					style="width: 400px; height: 40px; border-style: groove; margin-left: 460px;" />
				<br>
			</div>
			<br>
			<div class="form-group">

				<label style="margin-left: 460px; color: white">Email:</label> <br>
				<input type="email" name="email" class="form-control"
					style="width: 400px; height: 40px; border-style: groove; margin-left: 460px;" />
				<br>
			</div>
			<br>
			<div class="form-group">

				<label style="margin-left: 460px; color: white">Password:</label> <br>
				<input type="password" name="password" class="form-control"
					style="width: 400px; height: 40px; border-style: groove; margin-left: 460px;" />
				<br>
			</div>
			<br>

			<button id="submit" type="submit"
				style="background-color: #009900; color: #FFFFFF; width: 100px; height: 35px; margin-left: 620px;">Update</button>
		</form>
	</fieldset>

</body>

</html>
