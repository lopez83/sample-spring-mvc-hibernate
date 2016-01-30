<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<title>Employee</title>
<link
	href="<c:url value='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css' />"
	rel="stylesheet"></link>
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
</head>
<body>
	<h1>Add a Person</h1>

	<form:form commandName="employee" modelAttribute="employee">
		<form:input type="hidden" path="id" id="id" />

		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="firstName">First
					Name</label>
				<div class="col-md-7">
					<form:input type="text" path="firstName" id="firstName"
						class="form-control input-sm" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="firstName">Last
					Name</label>
				<div class="col-md-7">
					<form:input type="text" path="lastName" id="lastName"
						class="form-control input-sm" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="firstName">Birth
					Date</label>
				<div class="col-md-7">
					<form:input type="date" path="birthDate" id="birthDate"
						class="form-control input-sm" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="hireDate">Hire
					Date</label>
				<div class="col-md-7">
					<form:input type="date" path="hireDate" id="hireDate"
						class="form-control input-sm" />
				</div>
			</div>
		</div>

		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="gender">Gender</label>
				<div class="col-md-7">
					<form:select id="gender" path="gender">
						<form:option value="M">Male</form:option>
						<form:option value="F">Female</form:option>
					</form:select>
				</div>
			</div>
		</div>


		<input type="submit" value="Add Employee"
			class="btn btn-primary btn-sm" />
	</form:form>
</body>
<script>
$(document).ready(function() {
    $(function() {
        $("#birthDate").datepicker({
            dateFormat: 'mm-dd-yy'
        });
        $("#hireDate").datepicker({
            dateFormat: 'mm-dd-yy'
        });
    });
});
</script>
</html>
