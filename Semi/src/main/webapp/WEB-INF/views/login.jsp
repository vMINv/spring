<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="/login" method="post">
		<fieldset>
			<div class="row mb-3">
				<label class="col-sm-2 col-form-label">ID</label>
				<div class="col-sm-10">
					<form:input path="username" class="form-control" placeholder="ID" />
				</div>
			</div>
			<div class="row mb-3">
				<label class="col-sm-2 col-form-label">Password</label>
				<div class="col-sm-10">
					<form:input path="password" class="form-control" placeholder="Password" />
				</div>
			</div>
			<div class="d-flex justify-content-end">
				<button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
				<form:input type="hidden" path="${_csrf.parameterName}" value="${_csrf.token}" />
			</div>
		</fieldset>
	</form:form>
</body>
</html>