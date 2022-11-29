<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View</title>

<style type="text/css">
th, td {
	padding: 8px;
	text-align: left;
	border-collapse: collapse;
	font-family: cursive;
}

th {
	background-color: #04AA6D;
	color: white;
}

td {
	background-color: #EFE5C1;
}
a{
	color:blue;
	padding: 6px 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	margin-top: 15px;
	text-decoration: none;
	font-family: cursive;
}
h2{
font-family: cursive;
}
</style>
</head>
<body>

	<h2>Welcome to Employee View Page</h2>

	<table>

		<tr>
			<th>Id</th>
			<td>${emp.empId}</td>
		</tr>
		<tr>
			<th>Name</th>
			<td>${emp.empName}</td>
		</tr>
		<tr>
			<th>Gender</th>
			<td>${emp.empGen}</td>
		</tr>
		<tr>
			<th>Salary</th>
			<td>${emp.empSal}</td>
		</tr>
		<tr>
			<th>Department</th>
			<td>${emp.empDept}</td>
		</tr>
		<tr>
			<th>Projects</th>
			<td>${emp.empPrjs}</td>
		</tr>
		<tr>
			<th>Delete</th>
			<td><a
				href="/SpringBootMVC-Crud-Employee/delete?id=${emp.empId}">Delete</a>
			</td>
		</tr>
		<tr>
			<th>Projects</th>
			<td><a
				href="/SpringBootMVC-Crud-Employee/getUpdate?id=${emp.empId}">Update</a>
			</td>
		</tr>

	</table>

	<br>
	<a style=" background-color: yellow; color:black " href="/SpringBootMVC-Crud-Employee/all">View All</a> &nbsp;
	<a style="margin-left: 17px; background-color: red; color:white "href="/SpringBootMVC-Crud-Employee/reg">Register</a> ${msg}

</body>
</html>