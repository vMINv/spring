<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Board</title>
</head>
<body>
	<form:form modelAttribute="NewBoard"
		action="./addBoard?${_csrf.parameterName}=${_csrf.token}"
		class="form-horizontal" method="post">
		<fieldset>
			<sec:authentication property="principal" var="user" />
			<form:input path="bwriter" type="hidden"
				value="${user.username }" class="form-control" />
			제목 :
			<form:input path="btitle" class="form-control" />
			내용 :
			<form:textarea path="bcontent" cols="50" rows="10"
				class="form-control" />
			<input type="submit" class="btn btn-primary" value="등록" />
		</fieldset>
	</form:form>
</body>
</html>