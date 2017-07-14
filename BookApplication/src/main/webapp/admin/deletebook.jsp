<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Books</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
h2 {
margin-top:165px;
margin-left:100px;


}
form{
margin-top:165px;
margin-bottom:130px;

margin-left:425px;

margin-right:425px;
 
}
table {
	width: 125px;
}
	
	body {
	background: url("../../assests/images/background-image.jpg");
	    height: 50%;
	
}

</style>
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

  <form class="form-inline"  action="../admin/delete" method="post">
  <h2>DELETE BOOK</h2>
   <h3>Enter the book name  to delete that book</h3>

  <div class="form-group">
    <label for="name">Book Name:</label>
    <input type="text" class="form-control" name="name" placeholder="Enter the Book Name " >
  </div>
	
<input type="submit" class="btn btn-success btn-sm" value="Delete">

		</form>
</body>
</html>