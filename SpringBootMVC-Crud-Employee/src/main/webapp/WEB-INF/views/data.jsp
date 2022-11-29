
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Data</title>
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

a {
	color: blue;
	padding: 6px 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	text-decoration: none;
	font-family: cursive;
}

h2{
font-family: cursive;
}
</style>
</head>
<body>

	<h2>Welcome To Employee Data Page</h2>

	<c:if test="${empty list}">
		<h4>No Data Found</h4>
	</c:if>


	<c:if test="${!empty list}">

		<table>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Salary</th>
				<th>Department</th>
				<th>Operation</th>
			</tr>

			<c:forEach items="${list}" var="ob">
				<tr>
					<td>${ob.empId}</td>
					<td>${ob.empName}</td>
					<td>${ob.empSal}</td>
					<td>${ob.empDept}</td>
					<td><a href="/SpringBootMVC-Crud-Employee/view?id=${ob.empId}">View</a>
					</td>
				</tr>
			</c:forEach>

		</table>

	</c:if>
	<br>
	<a style="background-color: red; color: white;"
		href="/SpringBootMVC-Crud-Employee/reg">Register</a> ${msg}

</body>
</html>