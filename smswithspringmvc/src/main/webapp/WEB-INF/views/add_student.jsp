<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="home.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD STUDENT</title>
<style type="text/css">
body {
 	height:100%vh;
	font-family: Arial, sans-serif;
	background-color: grey;
	margin: 0;
	padding: 0;
}
#div{
	margin: 40px 600px 0px 620px;
}

table {
	width: 300px;
	border-collapse: collapse;
	background-color: #392467;
	border: 1px solid #ccc;
	color: white;
}
table:hover{
 box-shadow: 0px 0px 10px white;
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
	width: 300px;
	padding: 10px;
	background-color: black;
	border: none;
	border-radius: 4px;
	color: #fff;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s;
	margin-top: 20px;
	
	font-size: 15px;
}

input[type="submit"]:hover {
	box-shadow: 0px 0px 10px blue;
	
}

div[align="center"] {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

h1 {
	margin: 15px 50px 0px 650px;
	color:black;
	text-shadow: 0px 0px 10px white;
}
</style>
</head>
<body>
	<div id=div>
		<form action="add_student" method="post">
			<table border="1px solid">
				<tr>
					<td>Name</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>Mobile</td>
					<td><input type="text" name="mobile"></td>
				</tr>
				<tr>
					<td>Age</td>
					<td><input type="text" name="age"></td>
				</tr>
			</table>
			<input type="submit" value="ADD">
		</form>
	</div>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div>
		<h1><%=message%></h1>
	</div>
	<%
	}
	%>
</body>
</html>
