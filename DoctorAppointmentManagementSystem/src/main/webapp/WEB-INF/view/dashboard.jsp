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
<s:url var="dashboard_js" value="/static/js/dashboard.js" />

<link rel="stylesheet" type="text/css" href="${url_bootstrap}">
<link rel="stylesheet" type="text/css"
	href="${url_sticky_footer_navbar}">
</head>
<body>
	<!-- header  -->
	<%@include file="common/header.jsp"%>

	<!-- Begin page content -->
	<main role="main"> 

	
	<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron" style="background-color: white;">
		<div class="container">
			<img src="../static/images/Banner_image_02.jpg" class="img-fluid"
				alt="Responsive image"> <img src="../static/images/as.jpeg"
				class="img-fluid" alt="Responsive image">
		</div>
	</div>

	<div class="container">
		<!-- Example row of columns -->
		<div class="row">
			<div class="col-md-4">
				<h2>Book</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn btn-secondary"
						href="../appointment/createAppointmentForm.htm" role="button">Book
						Appointment &raquo;</a>
				</p>
			</div>
			<div class="col-md-4">
				<h2>List</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn btn-secondary"
						href="../appointment/listAppointmentPage.htm" role="button">Show
						Appointments &raquo;</a>
				</p>
			</div>
			<div class="col-md-4">
				<h2>Payment</h2>
				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in,
					egestas eget quam. Vestibulum id ligula porta felis euismod semper.
					Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum
					nibh, ut fermentum massa .</p>
				<p>
					<a class="btn btn-secondary" href="#" role="button">Complete
						Payment &raquo;</a>
				</p>
			</div>
		</div>

		<hr>

	</div>
	
	
	<!-- /container --> </main>

	<!-- Footer  -->
	<%@include file="common/footer.jsp"%>

	<script type="text/javascript" src="${dashboard_js}"></script>
</body>
</html>
