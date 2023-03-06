<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user</title>
</head>
<body>
	<form:form method="post" modelAttribute="user">
		<!-- 폼 백업 객체로 동작하는 모델의 속성 지정 -->
		<form:hidden path="guid" />
		<fieldset>
			<form:label path="name">Name</form:label>
			<form:input path="name" type="text" required />
		</fieldset>
		<fieldset>
			<form:label path="userId">User ID</form:label>
			<form:input path="userId" type="text" required />
		</fieldset>
		<input class="btn btn-success" type="submit" value="Submit" />
	</form:form>
</body>
</html>