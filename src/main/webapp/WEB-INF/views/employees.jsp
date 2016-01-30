<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<html>
<head>
	<title>Employees</title>
	<style type="text/css">
		.tableC  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<br>
<h3>Employees List</h3>
<c:if test="${!empty listEmployees}">
	<table class="tableC">
	<tr>
		<th width="70">ID</th>
		<th width="120">First Name</th>
		<th width="120">Last Name</th>
		<th width="60">Gender</th>
		<th width="60">Birth Date</th>
	</tr>
	<c:forEach items="${listEmployees}" var="employee">
		<tr>
			<td><a href='./${employee.id}'>${employee.id}</a></td>
			<td>${employee.firstName}</td>
			<td>${employee.lastName}</td>
			<td>${employee.gender}</td>
			<td><fmt:formatDate pattern="MM-dd-yyyy" value="${employee.birthDate}" /></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>
