<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee details</title>
</head>
<body style="background-color:silver">
<h1>Employee details</h1>
	<table border="1" cellpadding="2" cellspacing="2" style="background-color:pink">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Address</th>
			<th>Hike</th>
			<th>salary</th>
		</tr>
		<c:forEach var="employee" items="${empdetails}">
			<tr>
				<td>${employee.id}</td>
				<td>${employee.name}</td>
				<td>${employee.address}</td>
				<td>${employee.hike}</td>
				<td>${employee.salary}</td>
			</tr>
		</c:forEach>


	</table>
</body>
</html>