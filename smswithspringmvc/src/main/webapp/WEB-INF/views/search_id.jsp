<%@page import="java.util.List"%>
<%@page import="com.jspiders.smswithspringmvc.pojo.StudentPOJO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="home.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SEARCH BY ID</title>
<style type="text/css">
body {
	font-family: Arial, sans-serif;
	background-color: grey;
	margin: 0;
	padding: 0;
}

div {
	margin-top: 50px;
}

table {
	width: 80%;
	border-collapse: collapse;
	background-color: #2B2A4C;
	border: 1px solid #ccc;
	margin-bottom: 20px;
	color: white;
	box-shadow: 0px 0px 10px white;
}

th, td {
	padding: 10px;
	text-align: left;
}

th{
	background-color: black;
	box-shadow: 0px 0px 10px white;
}
tr:nth-child(even) {
	background-color: #f2f2f2; /* Alternate row color */
	color: black;
}

div[align="center"] {
	display: flex;
	justify-content: center;
	align-items: center;
	height: auto;
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
	background-color: black;
	border: none;
	border-radius: 4px;
	color: #fff;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s;
}

input[type="submit"]:hover {
	
	box-shadow: 0px 0px 10px white;
}

h1 {
	color: black;
	text-shadow: 0px 0px 10px white;
}
</style>
</head>
<body>
	<div align="center">
		<form action="search_id" method="post">
			<table border="1px solid">
				<tr>
					<td>ID</td>
					<td><input type="text" name="id"></td>
				</tr>
			</table>
			<input type="submit" value="SEARCH">
		</form>
	</div>
	<%
	@SuppressWarnings("unchecked")
	StudentPOJO studentPOJO = (StudentPOJO) request.getAttribute("students");
	if (studentPOJO != null ) {
	%>
	<div align="center">
		<table border="1px solid">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Age</th>
			</tr>
			
			<tr>
			
				<td><%=studentPOJO.getId()%></td>
				<td><%=studentPOJO.getName()%></td>
				<td><%=studentPOJO.getEmail()%></td>
				<td><%=studentPOJO.getMobile()%></td>
				<td><%=studentPOJO.getAge()%></td>
			</tr>
			
		</table>
	</div>
	<%
	} else {
	%>
	<div align="center">
		<h1>Students not found.</h1>
	</div>
	<%
	}
	%>
</body>
</html>