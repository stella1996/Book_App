<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>BookStore-Admin</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
p {
	margin-top: 200px;
	margin-bottom: 100px;
	margin-right: 150px;
	margin-left: 150px;
}

body {
	background: url("../../assests/images/background-image.jpg")
}
#mySidenav a {
    position: absolute;
    left: -80px;
    transition: 0.5s;
    padding: 15px;
    width: 98px;
    text-decoration: none;
    font-size: 20px;
    color: white;
    border-radius: 0 5px 5px 0;
	margin-top:150px;
}

#mySidenav a:hover {
    left: 0;
}

#insert {
    top: 20px;
    background-color: #4CAF50;
}

#update {
    top: 80px;
    background-color: #2196F3;
}

#delete {
    top: 140px;
    background-color: #00FFFF;
}
#listallusers {
    top: 200px;
    background-color: #800080;
}
#listallorders {
    top: 260px;
    background-color: #FF00FF;
}


</style>
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

	<div class="container">

		<Center>
			<h1>
				<b><p style="color: #FFEBCD">Hi Admin,Insert more books to attract customers</p>
			</h1>
		</center>
		<b>
	</div>
	<br><br>
<div id="mySidenav" class="sidenav">
  <a href="../admin/insertbook.jsp" id="insert">Insert</a>
  <a href="../admin/updatebook.jsp" id="update">Update</a>
  <a href="../admin/deletebook.jsp" id="delete">Delete</a>
  <a href="/admin/listallusers" id="listallusers">Users</a>
    <a href="/admin/listallorders" id="listallorders">Orders</a>
  
  
</div>

 
</body>
</html>