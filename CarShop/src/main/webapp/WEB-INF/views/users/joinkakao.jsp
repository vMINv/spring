<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kakao 회원 등록</title>
</head>
<body>
<h3>카카오 로그인을 위해 카카오 이메일을 아이디로 사용해주세요</h3>
	<form:form modelAttribute="NewUser"
		action="./joinkakao?${_csrf.parameterName}=${_csrf.token}"
		class="form-horizontal" method="post">
		<fieldset>
			id :
			<form:input path="username" class="form-control" />
			pw :
			<form:input path="password" class="form-control" />
			name :
			<form:input path="uname" class="form-control" />
			mail :
			<form:input path="uemail" class="form-control" />
			<input type="submit" class="btn btn-primary" value="등록" />
		</fieldset>
	</form:form>

</body>
</html>