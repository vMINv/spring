<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board Detail</title>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"
	integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
	crossorigin="anonymous"></script>
<script>
	function replyNewFunction() {
		$.ajax({
			type : "POST",
			url : "/cart/ajaxadd",
			data : {
				cid : "${car.cid}"
			},
			beforeSend : function(xhr) { /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
				xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			},
			success : function(result) {
				alert("제품이 장바구니에 추가되었습니다.");
			},
			error : function(request, status, error) {
				alert(request.status + " " + request.responseText);
			}
		})
	}
</script>
</head>
<body>
	<!-- 게시물 -->
	<div class="card">
		<h5 class="card-header">${board.btitle }</h5>
		<div class="card-body">
			<h5 class="card-title">${board.bcontent }</h5>
			<div class="d-flex justify-content-end">
				<a href="#" class="btn btn-success btn-sm">조회수 ${board.bview }</a> <a
					href="#" class="btn btn-primary btn-sm">좋아요 ${board.blike }</a> <a
					href="#" class="btn btn-danger btn-sm">싫어요 ${board.bhate }</a>
			</div>
			<div class="d-flex justify-content-end badge bg-light text-dark">${board.bdate }</div>
		</div>
	</div>
	<!-- END 게시물 -->
	<!-- 답변 리스트 -->
	<div class="card">
		<div class="card-body">답변 게시물</div>
	</div>
	<!-- END 답변 리스트 -->
	<!-- 답변 등록 -->
	<sec:authentication property="principal" var="user" />
	<input name="bwriter" type="hidden" value="${user.username }" />
	<input name="bid" type="hidden" value="${board.bid }">
	<textarea name="bcontent" rows="5" class="form-control"></textarea>
	<button type="button" class="btn btn-primary my2"
		onclick="replyNewFunction()">답변등록</button>
	<!-- END 답변 등록 -->
	<div class="my-5"></div>
</body>
</html>