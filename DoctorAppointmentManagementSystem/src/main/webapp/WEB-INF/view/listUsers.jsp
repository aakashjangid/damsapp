<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DAMS APP - Create Appointment</title>
<s:url var="url_bootstrap" value="/static/css/bootstrap.min.css" />
<s:url var="url_sticky_footer_navbar"
	value="/static/css/sticky-footer-navbar.css" />

<link rel="stylesheet" type="text/css" href="${url_bootstrap}">
<link rel="stylesheet" type="text/css"
	href="${url_sticky_footer_navbar}">
</head>
<body>
	<!-- header  -->
	<%@include file="common/header.jsp"%>
	<br>

	<!-- Begin page content -->
	<main role="main" class="container">
	<h2 class=text-center>Patients</h2>
	<br>
	<c:if test="${msg!=null}">
		<div class="alert alert-success" role="alert">${msg}</div>
	</c:if> <c:if test="${list!=null}">
		<table border="1" class="table table-striped">
			<tr>
				<th scope="row">First Name</th>
				<th>Last Name</th>
				<th>Contact</th>
				<th>Email</th>
				<th>Address</th>
				<th>Status</th>
				<th>Options</th>
			</tr>
			<c:forEach items="${list}" var="element">
				<tr>
					<td>${element.first_name}</td>
					<td>${element.last_name}</td>
					<td>${element.contact}</td>
					<td>${element.email}</td>
					<td>${element.address}</td>
					<c:if test="${element.status==1}">
						<td>Active</td>
					</c:if>
					<c:if test="${element.status==2}">
						<td>Blocked</td>
					</c:if>
					<td><a href="../user/blockUser.htm?userId=${element.id}">Block</a>&nbsp;| <a href="#">Edit</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	
	</main>

	<!-- Footer  -->
	<%@include file="common/footer.jsp"%>
</body>
</html>
