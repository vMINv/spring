<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board List</title>
</head>
<body>
	<%@ include file="../includes/header.jsp"%>
	<div class="container">
		<div class="alert alert-dark" role="alert">게시판</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<!-- 게시글 리스트 -->
			<c:forEach items="${boardList }" var="board">
				<div class="col-md-4">
					<h3>${board.btitle }</h3>
					<p>${board.bcontent }</p>
					<p>${board.bauthor }</p>
					<p>${board.date }</p>
				</div>
			</c:forEach>
		</div>
	</div>
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>