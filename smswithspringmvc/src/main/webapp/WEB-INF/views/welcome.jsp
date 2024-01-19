<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WELCOME</title>
<style type="text/css">
body {
	height:800px;
	width:100%;
	font-family: Arial, sans-serif;
	background-image: url("https://techvidvan.com/tutorials/wp-content/uploads/sites/2/2023/02/student-management-system.webp");
	background-size: cover;
	margin: 0;
	padding: 0;
}

nav {
	background-color: #333;
	padding: 10px 0;
	text-align: center;
}

nav a {
	color: #fff;
	padding: 12px 18px;
	text-decoration: none;
	display: inline-block;
	transition: background-color 0.3s;
}

nav a:hover {
	background-color: #555;
}

div[align="center"] {
	
	height: 100vh;
	
	background-image: url("");
	background-repeat: no-repeat;
	background-size: cover;
}

</style>
</head>
<body>
	<%
	String email = (String) request.getAttribute("admin");
	%>
	<nav>
		<a href="home">HOME</a> <a href="add_student">ADD</a> <a
			href="edit_student">EDIT</a> <a href="delete_student">DELETE</a> <a
			href="search">SEARCH_BY_NAME </a><a href="search">SEARCH_BY_Id</a>
			<a href="search_em">SEARCH_BY_EMAIL</a>
			<a href="search_age">SEARCH_BY_AGE</a>
			<a href="get_students">ALL_STUDENTS</a> <a
			href="delete_admin?email=<%=email%>">DELETE_ADMIN</a> <a
			href="log_out">LOG_OUT</a>
	</nav>
</body>
</html>