<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<title><c:out value="${screen}"></c:out></title>
</head>
<body>
<h1 class="center">Employee Details</h1>
	<table class="table table-dark">
		<tr>
			<td scope="col">EMPLOYEE ID</td>
			<td scope="col">EMPLOYEE NAME</td>
			<td scope="col">COMPANY</td>
			<td scope="col">CONTACT</td>
		</tr>
		<c:out value="${screen}"></c:out>
		<c:forEach items="${empEntity}" var="item">
			<tr>
				<td scope="row"><c:out value="${item.empId}"></c:out></td>
				<td scope="row"><c:out value="${item.empName}"></c:out></td>
				<td scope="row"><c:out value="${item.company}"></c:out></td>
				<td scope="row"><c:out value="${item.phoneNumber}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>





















