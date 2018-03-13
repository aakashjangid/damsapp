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
	<h2 class=text-center>Book Appointment</h2>
	<br>

	<c:if test="${err!=null}">
		<div class="alert alert-danger" role="alert">${err}</div>
	</c:if>

	<form action="../appointment/showAvailableAppointments.htm"
		method="post" name="form" id="form">
		<div class="form-row">
			<div class="form-group col-md-4">
				<label for="first_name">Date</label> <input name="date_created"
					type="date" class="form-control" value="${date}"
					required="required" onchange="this.form.submit()" />
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-4">
				<label for="last_name">Slot</label> <select name="slot"
					class="form-control" required="required">
					<option value="1">Morning</option>
					<option value="2">Evening</option>
				</select>
			</div>
			<div class="form-group col-md-4">
				<label for="last_name">Time</label> <select name="time"
					class="form-control" required="required">
					<c:forEach items="${activeSlots}" var="activeSlot">
						<option value="${activeSlot.time}">${activeSlot.time}</option>
					</c:forEach>
				</select>
			</div>
		</div>
		<br>
		<button type="submit" class="btn btn-primary" onclick="changeAction()">BOOK</button>
	</form>
	<br>
	<br>
	<c:if test="${fn:length(testList) gt 0}">
		<table border="1" class="table table-striped">
			<tr>
				<th scope="row">Date</th>
				<th>Time</th>
				<th>Status</th>
			</tr>
			<c:forEach items="${testList}" var="element">
				<tr>
					<td>${element.date}</td>
					<td>${element.time}</td>
					<c:if test="${element.status==1}">
						<td>Available</td>
					</c:if>
					<c:if test="${element.status==2}">
						<td>Booked</td>
					</c:if>
				</tr>
			</c:forEach>
		</table>
	</c:if> </main>

	<!-- Footer  -->
	<%@include file="common/footer.jsp"%>

	<script type="text/javascript">
		function changeAction() {
			var form = document.getElementById('form');
			form.action = '../appointment/createAppointment.htm';
		}
	</script>

</body>
</html>
