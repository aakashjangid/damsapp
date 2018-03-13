<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DAMS APP - Home Page</title>
<s:url var="url_bootstrap" value="/static/css/bootstrap.min.css" />
<s:url var="url_signin" value="/static/css/signin.css" />
<s:url var="url_sticky_footer_navbar"
	value="/static/css/sticky-footer-navbar.css" />

<link rel="stylesheet" type="text/css" href="${url_bootstrap}">
<link rel="stylesheet" type="text/css" href="${url_signin}">
<link rel="stylesheet" type="text/css"
	href="${url_sticky_footer_navbar}">
</head>
<body>
	<!-- header  -->
	<%@include file="common/header.jsp"%>
	<br>

	<!-- Begin page content -->
	<main role="main" class="container">
	<div class="text-center">

		<form:form class="form-signin" action="./processLogin.htm"
			method="POST" modelAttribute="loginCommand">
			<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>

			<c:if test="${msg!=null}">
				<div class="alert alert-success" role="alert">${msg}</div>
			</c:if>
			<c:if test="${err!=null}">
				<div class="alert alert-danger" role="alert">${err}</div>
			</c:if>

			<label for="inputEmail" class="sr-only">Login Name</label>
			<form:input path="loginname" class="form-control"
				placeholder="Login Name" required="required" />
			<label for="inputPassword" class="sr-only">Password</label>
			<form:password path="password" class="form-control"
				placeholder="Password" required="required" />
			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
				in</button>
		</form:form>
	</div>
	</main>

	<!-- Footer  -->
	<%@include file="common/footer.jsp"%>
</body>
</html>
