<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management System</title>
<style type="text/css">
body {
	font-family: Arial, sans-serif;
	background-image:url("https://wallpapercave.com/wp/wp4009127.jpg");
	
	background-repeat:no-repeat;
	background-size:cover;
	margin: 0;
	padding: 0;
}

h1{
	font-size:50px;
    text-shadow:0px 0px 30px white;
    font-family:sans-serif;
	margin-top: 70px;
}

div{
	margin: 105px 635px 0px 600px;
}

table {
	width:300px;
	border-collapse: collapse;
	background-color: #200E3A;
	border: 1px solid #ccc;
	color: white;
	text-indent: center;
}

td {
	padding: 10px;
	text-align: left;
}

input[type="text"] {
	width: 100%;
	padding: 8px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
}

input[type="submit"] {
	width: 100%;
	padding: 10px;
	background-color: #D80032;
	border: none;
	border-radius: 4px;
	color: #fff;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s;
}

input[type="submit"]:hover {
	background-color: white;
	color: black;
}

div[align="center"] {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}
</style>
</head>
<body>
	
		<h1 style=" background-color:grey" align="center">WELCOME TO STUDENT MANAGMENT SYSTEM</h1>
	<div >
		<form action="add_admin" method="post">
			<table border="1px solid">
				<tr>
					<td>UserName</td>
					<td><input type="text" name="userName"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="text" name="password"></td>
				</tr>
			</table>
			<input type="submit" value="SIGN UP">
		</form>
	</div>
</body>
</html>