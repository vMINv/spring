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
		action="./join?${_csrf.parameterName}=${_csrf.token}"
		class="form-horizontal" method="post">
		<fieldset>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">ID</label>
				<form:input path="username" class="form-control" />
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Password</label>
				<form:input path="password" class="form-control" />
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Name</label>
				<form:input path="uname" class="form-control" />
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Mail</label>
				<form:input path="uemail" class="form-control" />
				<div class="form-text">추후 카카오 로그인을 이용하시려면 카카오 계정과 동일한 이메일을 등록 해주세요.</div>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</fieldset>
	</form:form>
</body>
</html>