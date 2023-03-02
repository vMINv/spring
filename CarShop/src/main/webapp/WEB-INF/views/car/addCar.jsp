<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addCar</title>
</head>
<body>
	<%@ include file="../includes/header.jsp"%>
	<div class="container">
		<div class="alert alert-dark" role="alert">차량 등록 하기</div>
	</div>
	<div class="container">
		<form:form modelAttribute="NewCar" class="form-horizontal">
			<legend>${addTitle }</legend>
			<fieldset>
				자동차 ID :
				<form:input path="cid" class="form-control" />
				자동차 이름 :
				<form:input path="cname" class="form-control" />
				자동차 가격 :
				<form:input path="cprice" class="form-control" />
				자동차 카테고리 :
				<form:input path="ccate" class="form-control" />
				자동차 소개 :
				<form:textarea path="cdesc" cols="50" rows="2" class="form-control" />
				<br>
				<input type="submit" class="btn btn-primary" value="등록" />
			</fieldset>
		</form:form>
	</div>
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>