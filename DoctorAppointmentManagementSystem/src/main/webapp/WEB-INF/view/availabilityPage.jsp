<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
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
	<h2 class=text-center>Make Availability</h2>
	<br>

	<c:if test="${err!=null}">
		<div class="alert alert-danger" role="alert">${err}</div>
	</c:if>

	<form action="../availability/makeAvailability.htm" method="post"
		name="form" id="form">
		<div class="form-row">
			<div class="form-group col-md-4">
				<label for="first_name">Date</label> <input name="date"
					type="date" class="form-control" value="${date}"
					required="required" />
			</div>
		</div>

		<br>
		<button type="submit" class="btn btn-primary">Available</button>
	</form>
	<h3 class=text-center>Available on these Dates -</h3><br>
	<c:if test="${list!=null}">
		<table border="1" class="table table-striped">
			<tr>
				<th scope="row">Date</th>
				<th>Availability</th>
				<th>Cancel</th>
			</tr>
		
			<c:forEach items="${list}" var="element">
				<tr>
					<td>${element.date}</td>
					<td>Available</td>
					<td><a href="../availability/cancelAvailability.htm?date=${element.date}">Cancel</a></td>
				</tr>
			</c:forEach>
		</table>
	
	</c:if> </main>

	<!-- Footer  -->
	<%@include file="common/footer.jsp"%>

</body>
</html>
