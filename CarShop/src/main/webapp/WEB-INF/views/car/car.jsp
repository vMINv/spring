<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>car</title>
</head>
<body>
	<%@ include file="../includes/header.jsp"%>
	<div class="container">
		<div class="alert alert-dark" role="alert">차량 상세 보기</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<!-- 차량 -->
			<div class="col-md-4">
				<h3>${car.cid }</h3>
				<p>${car.cname }</p>
				<p>${car.cprice }만원</p>
				<p>${car.ccate }</p>
				<p>${car.cdesc }</p>
			</div>
		</div>
	</div>
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>