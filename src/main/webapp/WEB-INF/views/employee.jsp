<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<html>
<head>
	<title>Employee</title>
</head>
<body>
<br>
<h3>Employee</h3>
	<table>
		<tr>
			<td>ID:</td><td>${employee.id}</td>
		</tr>
		<tr>
			<td>First Name:</td><td>${employee.firstName}</td>
		</tr>
		<tr>
			<td>Last Name:</td><td>${employee.lastName}</td>
		</tr>
		<tr>
			<td>Gender:</td><td>${employee.gender}</td>
		</tr>
		<tr>
			<td>Birth Date:</td><td><fmt:formatDate pattern="MM/dd/yyyy" value="${employee.birthDate}" /></td>
		</tr>
	</table>
</body>
</html>
