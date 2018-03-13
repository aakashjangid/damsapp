<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
	<h2 class=text-center>Appointment History</h2>
	<br>

	<c:if test="${err!=null}">
		<div class="alert alert-danger" role="alert">${err}</div>
	</c:if>

	<form action="../appointment/adminAppointments.htm" method="post"
		name="form" id="form">
		<div class="form-row">
			<div class="form-group col-md-4">
				<label for="first_name">Date</label> <input name="date_created"
					type="date" class="form-control" value="${date}"
					required="required" />
			</div>
		</div>

		<br>
		<button type="submit" class="btn btn-primary">SHOW</button>
	</form>
	<br>
	<br>
	<c:if test="${fn:length(list) gt 0}">
		<table border="1" class="table table-striped">
			<tr>
				<th scope="row">Date</th>
				<th>Start Time</th>
				<th>Slot</th>
				<th>End Time</th>
				<th>Status</th>
				<th>Cancel</th>
				<th>Options</th>
			</tr>
			<c:forEach items="${list}" var="element">
				<tr>
					<td>${element.date_created}</td>
					<td>${element.start_time}</td>
					<c:if test="${element.slot==1}">
						<td>Morning</td>
					</c:if>
					<c:if test="${element.slot==2}">
						<td>Evening</td>
					</c:if>
					<td>${element.end_time}</td>
					<c:if test="${element.status==1}">
						<td>Incomplete</td>
					</c:if>
					<c:if test="${element.status==2}">
						<td>Completed</td>
					</c:if>
					<c:if test="${element.cancel==1}">
						<td>Active</td>
					</c:if>
					<c:if test="${element.cancel==2}">
						<td>Cancelled</td>
					</c:if>
					<td><a href="../appointment/cancelAppointment.htm?appId=${element.id}">Cancel</a>&nbsp; <a href="#">Complete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if> </main>

	<!-- Footer  -->
	<%@include file="common/footer.jsp"%>

</body>
</html>
