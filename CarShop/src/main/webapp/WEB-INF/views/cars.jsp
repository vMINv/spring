<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car List</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="container">
		<div class="alert alert-dark" role="alert">차량 보기</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<!-- 차량 리스트 -->
			<c:forEach items="${carList }" var="car">
				<div class="col-md-4">
					<h3>${car.cid }</h3>
					<p>${car.cname }</p>
					<p>${car.cprice } 만원</p>
				</div>
			</c:forEach>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>