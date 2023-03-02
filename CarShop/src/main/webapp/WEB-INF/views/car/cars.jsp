<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cars</title>
</head>
<body>
	<%@ include file="../includes/header.jsp"%>
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
					<p>${car.cprice }만원</p>
					<p>
						<a href="<c:url value="/cars/car?id=${car.cid }"/>"
							class="btn btn-Secondaty" role="button">상세보기</a>
					</p>
				</div>
			</c:forEach>
		</div>
	</div>
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>