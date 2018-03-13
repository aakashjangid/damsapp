<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
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

	<!-- Begin page content -->
	<main role="main" class="container">
	<h1 class="mt-5">Doctor's Appointment Management System - Spring
		App</h1>
	<p class="lead">This is the Spring Application. This is a POC we
		have created. The following technologies are used to create this
		application -</p>
	<ul>
		<li>Java SE</li>
		<li>Java EE(Servlet & JSP)</li>
		<li>Spring IOC</li>
		<li>Spring MVC</li>
		<li>Spring JDBC</li>
		<li>Spring Security</li>
		<li>Bootstrap, HTML, CSS</li>
		<li>MySQL</li>
	</ul>
	</main>

	<!-- Footer  -->
	<%@include file="common/footer.jsp"%>
</body>
</html>
