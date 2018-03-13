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
	<h1>Change Password</h1>
	<br>

	<c:if test="${err!=null}">
		<div class="alert alert-danger" role="alert">${err}</div>
	</c:if> <form:form action="../user/changePassword.htm" method="POST"
		modelAttribute="command">
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputPassword">Old Password</label>
				<form:password path="oldPassword" class="form-control"
					id="inputPassword" placeholder="Old Password" required="required" />
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputPassword">New Password</label>
				<form:password path="newPassword" class="form-control"
					id="inputPassword" placeholder="New Password" required="required" />
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputPassword">Confirm New Password</label>
				<form:password path="reNewPassword" class="form-control"
					id="inputPassword" placeholder="Confirm New Password" required="required" />
			</div>
		</div>
		<br>
		<button type="submit" class="btn btn-primary">Update</button>
	</form:form> </main>

	<!-- Footer  -->
	<%@include file="common/footer.jsp"%>
</body>
</html>
