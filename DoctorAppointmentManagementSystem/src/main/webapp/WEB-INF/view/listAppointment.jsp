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
<style type="text/css">
.disabled {
	pointer-events: none;
	cursor: default;
	text-decoration: line-through;
	color: gray;
}
</style>
</head>
<body>
	<!-- header  -->
	<%@include file="common/header.jsp"%>
	<br>

	<!-- Begin page content -->
	<main role="main" class="container">
	<h2 class=text-center>Appointments</h2>
	<br>
	<c:if test="${msg!=null}">
		<div class="alert alert-success" role="alert">${msg}</div>
	</c:if> <c:if test="${err!=null}">
		<div class="alert alert-danger" role="alert">${err}</div>
	</c:if> <c:if test="${fn:length(list) gt 0}">
		<table border="1" class="table table-striped">
			<tr>
				<th scope="row">Date</th>
				<th>Start Time</th>
				<th>Slot</th>
				<th>End Time</th>
				<th>Status</th>
				<th>Cancel</th>
				<th>Reason</th>
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
						<td>Active</td>
					</c:if>
					<c:if test="${element.status==2}">
						<td>Inactive</td>
					</c:if>
					<c:if test="${element.cancel==1}">
						<td>No</td>
					</c:if>
					<c:if test="${element.cancel==2}">
						<td>Cancelled</td>
					</c:if>
					<td>${element.cancel_reason}</td>
					<c:if test="${element.cancel==1}">
						<td><a
							href="../appointment/cancelAppointment.htm?appId=${element.id}">Cancel</a>&nbsp;
							<a href="#">Edit</a></td>
					</c:if>
					<c:if test="${element.cancel==2}">
						<td><a
							href="../appointment/cancelAppointment.htm?appId=${element.id}"
							class="disabled">Cancel</a>&nbsp; <a href="#">Edit</a></td>
					</c:if>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<p>
		<strong>Note : </strong>
	</p>
	<ul>
		<li>A person can only book a single appointment for a day.</li>
		<li>The Appointment will be valid till 15 minutes.</li>
		<li>You have to reach there 15 minutes prior to your appointment.</li>
	</ul>
	</main>

	<!-- Footer  -->
	<%@include file="common/footer.jsp"%>
</body>
</html>
