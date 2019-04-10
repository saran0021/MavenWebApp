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
	<table border="1" cellpadding="2" cellspacing="2" style="background-color:lightyellow">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Address</th>
			<th>Hike</th>
			<!-- <th>Edit</th> -->
		</tr>

		<c:forEach var="emp" items="${message}">
			<tr>
				<td>${emp.id}</td>
				<td>${emp.name}</td>
				<td>${emp.address}</td>
				<td>${emp.hike}</td>
				<!-- <td><a href="view2.jsp" >edit hike</a> -->
			</tr>
		</c:forEach>


	</table>
	<br><br>
	<h3><a href="view2.jsp" >Click here to edit hike</a></h3>
</body>
</html>