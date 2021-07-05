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
<title><c:out value="${screen}"></c:out></title>
</head>
<body>
	<div>
		<table style="width: 100%; height: 100%;">
			<tr>
				<td style="width: 20%;">
					<ul class="list-group">
						<li class="list-group-item active">MENU</li>
						<li class="list-group-item">ADD STUDENT DETAILS</li>
						<li class="list-group-item">SEARCH STUDENT</li>
						<li class="list-group-item">LIST OF STUDENT</li>
					</ul>
				</td>
				<td style="width: 80%;margin-left:20%;margin-top:40%;">
				<%-- <form:form action="/addstudentdetail" modelAttribute="student">
				<h6>Student Name : </h6><form:input path="studentName"/>
				<h6>College Name : </h6><form:input path="collegeName"/>
				<h6>Contact Number : </h6><form:input path="phoneNumber"/>
				<h6>Branch : </h6><form:select path="branch">
					<form:option value=" " label="=======SELECT BRANCH====="></form:option>
					<form:option value="Electronics and TeleCommunication" label="Electronics and TeleCommunication"></form:option>
					<form:option value="Computer Science" label="Computer Science"></form:option>
					<form:option value="Information Technology" label="Information Technology"></form:option>
					<form:option value="Civil Engineering" label="Civil Engineering"></form:option>
					<form:option value="Mechanical Engineering" label="Mechanical Engineering"></form:option>
					<form:option value="Electrical Enginnering" label="Electrical Enginnering"></form:option>
				</form:select></br>
				<form:button class="my-5" type="submit">Submit My Details</form:button>

				</form:form> --%>
				
				
				</td>
			</tr>


		</table>

	</div>
</body>
</html>