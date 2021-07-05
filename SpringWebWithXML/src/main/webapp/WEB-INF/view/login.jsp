<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Login Page</title>
</head>
<body style="font-family: monospace;">
	<!-- <a href="login">login</a> -->

	<div class="p-3 mb-2 bg-warning text-dark">
		<h1 align="center" class="h1">Spring Web Application</h1>
	</div>

	<form:form action="home" class="center" modelAttribute="login">
		<div
			style="background-color: green;margin-top: -0.5%;color: white; width: 30%; margin-left: 40%; padding-block: 4%;border-radius: 5%;">

			<div style="margin-left: 8%; margin-right: 8%;">
				<strong>Username:</strong><br>
				<form:input path="userName" placeholder="enter your username" class="form-control" />
			</div>
			<br>
			<div style="margin-left: 8%; margin-right: 8%;">
				<strong>Password:</strong><br>
				<form:input path="password" placeholder="enter your password" class="form-control" />
			</div>
			<br>
			<div style="margin-left: 8%; margin-right: 8%;">
				<form:button type="submit" class="btn btn-primary"><strong>Login</strong></form:button>
			</div><br>
			<div style="margin-left: 8%; margin-right: 8%;">Are you new user? If yes then,Please <a href="Register" style="color:red;">click here</a></div>
		</div>
	</form:form>
	
	<div style="vertical-align:bottom;color:white;background-color: red;position: absolute;bottom: 0;width: 100%;">GOGO</div>

</body>
</html>
