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
	<form:form modelAttribute="NewUser"
		action="./join?${_csrf.parameterName}=${_csrf.token}" method="post">
		<fieldset>
			<div class="row mb-3">
				<label class="col-sm-2 col-form-label">ID</label>
				<div class="col-sm-10">
					<form:input path="username" class="form-control" required="true" />
				</div>
			</div>
			<div class="row mb-3">
				<label class="col-sm-2 col-form-label">Password</label>
				<div class="col-sm-10">
					<form:input path="password" id="password" class="form-control" required="true" />
				</div>
			</div>
			<div class="row mb-3">
				<label class="col-sm-2 col-form-label">Name</label>
				<div class="col-sm-10">
					<form:input path="uname" class="form-control" required="true" />
				</div>
			</div>
			<div class="row mb-3">
				<label class="col-sm-2 col-form-label">Mail</label>
				<div class="col-sm-10">
					<form:input path="uemail" class="form-control" placeholder="name@example.com" required="true" />
					<div class="form-text">추후 카카오 로그인을 이용하시려면 카카오 계정과 동일한 이메일을 등록 해주세요.</div>
				</div>
			</div>
			<div class="d-flex justify-content-end">
				<input type="submit" class="btn btn-primary" value="Submit" />
			</div>
		</fieldset>
	</form:form>
</body>
</html>