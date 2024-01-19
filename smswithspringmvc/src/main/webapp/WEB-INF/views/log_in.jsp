<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOG IN</title>
<style type="text/css">
body {
	font-family: Arial, sans-serif;
	background-image:url("https://wallpaperaccess.com/full/1690160.jpg");
	background-size:cover;
	background-repeat:no-repeat;
	margin: 0;
	padding: 0;
}

table {
	margin-top:60px;
	width: 300px;
	border-collapse: collapse;
	background-color: #B4B4B3 ;
	border: 1px solid #ccc;
}

td {
	padding: 10px;
	text-align: left;
}

input[type="text"], input[type="password"] {
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
	background-color:#27005D;
	border: none;
	border-radius: 4px;
	color: #fff;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s;
}

input[type="submit"]:hover {
	color: #D2001A;
	box-shadow: 5px 5px 10px black;
}

a {
	text-decoration: none;
	color: white;
	margin-top:15px;
	display: block;
	font-size: 20px;
	background-color: grey;
}

a:hover {
	text-decoration: underline;
	color: #27005D;
	text-shadow: 0px 0px 10px F78CA2;
}

div[align="center"] {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: auto;
}

h1 {
    font-size:50px;
    text-shadow:0px 0px 20px white;
    font-family:sans-serif;
	margin-top: 40px;
	color: #22668D;
}
#msg{
color: black;
}
</style>
</head>
<body>
<h1 style="color:black;" align="center">WELCOME TO LOG IN PAGE</h1>
	<div align="center">
		<form action="log_in" method="post">
			<table border="1px solid">
				<tr>
					<td>Email</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="text" name="password"></td>
				</tr>
			</table>
			<input type="submit" value="LOG IN">
		</form>
	</div>
	<div align="center">
		<a href="add_admin">New user? Create account</a>
	</div>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h1 id=msg><%=message%></h1>
	</div>
	<%
	}
	%>
</body>
</html>