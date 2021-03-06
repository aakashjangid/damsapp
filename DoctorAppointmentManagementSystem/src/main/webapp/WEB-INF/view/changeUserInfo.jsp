<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DAMS APP - Home Page</title>
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
	<h1>User Info</h1>
	<br>

	<c:if test="${err!=null}">
		<div class="alert alert-danger" role="alert">${err}</div>
	</c:if> <form:form action="../user/changeInfo.htm" method="POST" modelAttribute="command">
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="first_name">First Name</label>
				<form:input path="user.first_name" class="form-control"
					placeholder="First name" required="required" value="${user.first_name}"/>
			</div>
			<div class="form-group col-md-6">
				<label for="last_name">Last Name</label>
				<form:input path="user.last_name" class="form-control"
					placeholder="Last name" required="required" value="${user.last_name}"/>
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputContact4">Contact</label>
				<form:input path="user.contact" class="form-control"
					id="inputContact4" placeholder="Contact" required="required" value="${user.contact}"/>
			</div>
			<div class="form-group col-md-6">
				<label for="inputEmail4">Email</label>
				<form:input path="user.email" class="form-control" id="inputEmail4"
					placeholder="Email" required="required" value="${user.email}"/>
			</div>
		</div>
		<div class="form-group">
			<label for="inputAddress">Address</label>
			<form:input path="user.address" class="form-control"
				id="inputAddress" placeholder="1234 Main St" required="required" value="${user.address}"/>
		</div>
		<br>
		<button type="submit" class="btn btn-primary">Update</button>
	</form:form> </main>

	<!-- Footer  -->
	<%@include file="common/footer.jsp"%>
</body>
</html>
