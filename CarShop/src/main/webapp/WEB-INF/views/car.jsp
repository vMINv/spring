<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Detail</title>
<script>
function addToCart(action) {
	document.addForm.action = action;
	document.addForm.submit();
	alert("제품이 장바구니에 추가되었습니다.")
}
</script>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="alert alert-dark">
		<div class="container">
			<h1>차량 상세 보기</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<img
				src="<c:url value="/resources/images/${car.getCimage().getOriginalFilename()}"/>"
				style="width: 60%" />
			<h3>${car.cid}</h3>
			<p>${car.cname}
			<p>${car.cprice}만원
			<p>${car.ccate}
			<p>${car.cdesc}
			<p>
				<form:form name="addForm" method="put">
					<a href="javascript:addToCart('/cart/add/${car.cid }')" class="btn btn-primary">제품주문&raquo;</a>
					<a href="<c:url value="/cart"/>" class="btn btn-warning">장바구니&raquo;</a>
					<a href="<c:url value="/cars"/>" class="btn btn-secondary">제품목록&raquo;</a>
				</form:form>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>