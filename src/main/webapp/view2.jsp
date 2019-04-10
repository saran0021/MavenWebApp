<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>employee edit page</title>
</head>
<body style="background-color:silver">
	<h1>Edit Employee Details</h1>
	<br>
	<br>
	<form action="editemp">
		Employee Id:<input type="text" name="empid" placeholder="enter Id"/><br>
		<br> Hike Percentage:<input type="text" name="emphike" placeholder="enter the hike"/><br>
		<br> <input type="submit" value="update" />


	</form>

</body>
</html>