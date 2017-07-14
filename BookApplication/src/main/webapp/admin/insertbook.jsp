<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Books</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
h2 {
margin-top:165px;
margin-left:120px;


}
form{
margin-top:165px;
margin-bottom:130px;

margin-left:425px;

margin-right:425px;
 
}

body {
	background: url("../../assests/images/background-image.jpg")
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
<form action="../admin/save" method="post">
			<div class="form-group">
	<h2>INSERT BOOK</h2>

    <label for="name">Book Name:</label>

				<input style="width: 450px" placeholder="Enter the Name of Book" type="text"
					class="form-control" size="20" name="name">
			</div>
			<div class="form-group">

    <label for="price">Book Price:</label>

				<input style="width: 450px" placeholder="Enter the Price of Book" type="text"
					class="form-control" size="20" name="price">
			</div>
			<div class="form-group">
    <label for="date">Released Date:</label>


				<input style="width: 450px" placeholder="Enter the Book Released Date" type="date"
					class="form-control" size="20" name="released_date">
			</div>
			
			<input  style="font-size:20px" type="submit" class="btn btn-success btn-sm" value="Insert">

		</form>
</body>
</html>