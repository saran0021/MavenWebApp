<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
</head>
<body style="background-color:silver">
<h1 style="background-color:green">Login Page</h1>
<form action="checking" >
userID:<input type="text" name="userid" placeholder="enter user id"/><br><br>
username:<input type="text" name="username" placeholder="enter user name"/><br><br>
userpassword:<input type="password" name="userpass" placeholder="enter password"/><br><br>

<input type="submit" value="Login"/>
</form><br><br>
<h3 style="background-color:green">Today's date: <%= (new java.util.Date()).toLocaleString()%></h3>

</body>
</html>