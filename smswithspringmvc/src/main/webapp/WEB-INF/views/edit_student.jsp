<%@page import="com.jspiders.smswithspringmvc.pojo.StudentPOJO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="home.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE STUDENT</title>
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
	color:white;
	width: 80%;
	border-collapse: collapse;
	background-color: #2B2A4C;
	border: 1px solid #ccc;
	margin-bottom: 20px;
}

#ip{
	box-shadow: 0px 0px 10px white;
}

th, td {
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
	padding: 10px 20px;
	background-color: #FF9209;
	border: none;
	border-radius: 4px;
	color: #fff;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s;
	color:black;
}

input[type="submit"]:hover {
	box-shadow: 0px 0px 10px black;
}

div[align="center"] {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: auto;
}

h1 {
	margin-top: 20px;
	color:black;
	text-shadow: 0px 0px 10px white;
}
</style>
</head>
<body>
	<div align="center">
		<form action="edit_student" method="post">
			<table border="1px solid">
				<tr id=ip>
					<td>Enter Id</td>
					<td><input type="text" name="id"></td>
				</tr>
			</table>
			<input type="submit" value="EDIT">
		</form>
	</div>
	<%
	@SuppressWarnings("unchecked")
	List<StudentPOJO> students = (List<StudentPOJO>) request.getAttribute("students");
	if (students != null && students.size() > 0) {
	%>
	<div align="center" id=op>
		<table border="1px solid">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Age</th>
			</tr>
			<%
			for (StudentPOJO student : students) {
			%>
			<tr>
				<td><%=student.getId()%></td>
				<td><%=student.getName()%></td>
				<td><%=student.getEmail()%></td>
				<td><%=student.getMobile()%></td>
				<td><%=student.getAge()%></td>
			</tr>
			<%
			}
			%>
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
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h1><%=message%></h1>
	</div>
	<%
	}
	%>
</body>
</html>