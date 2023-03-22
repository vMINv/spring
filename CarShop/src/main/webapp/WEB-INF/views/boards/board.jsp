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
<title>게시물 보기</title>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"
	integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
	crossorigin="anonymous"></script>

<script>
	function addcartFunction() {
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

	<!-- 주 게시물 -->
	<div class="card">
		<h5 class="card-header">${board.btitle}</h5>
		<div class="card-body">
			<h5 class="card-title">${board.bcontent}</h5>
			<br>
			<br>
			<br>
			<div class="d-flex justify-content-end">
				<p class="btn btn-success btn-sm">조회수 [ ${board.bview} ]</p>
				<p class="btn btn-primary btn-sm">좋아요 [ ${board.blike} ]</p>
				<p class="btn btn-danger btn-sm">싫어요 [ ${board.bhate} ]</p>
			</div>
			<div class="d-flex justify-content-end badge bg-light text-dark">${board.bdate}</div>
		</div>
	</div>

	<!-- 답변 게시물 -->

	<div class="card">
		<div class="card-body">답변 게시물 리스트</div>




	<!-- 답변 등록 -->
	<sec:authentication property="principal" var="user" />
	<input id="bwriter" type="hidden" value="${user.username}"/>
	<input id="bid" type="hidden" name="bid" value="${board.bid}">
	
<div class="card text-center">
  <div class="card-header">
    작성자 : ${user.username}
  </div>
  <div class="card-body">
    <h5 class="card-title">답변 등록</h5>
    <p class="card-text">
    	<textarea name="bcontent" id="bcontent" rows="5" class="form-control"></textarea>

    
    </p>
    <a href="#" class="btn btn-primary" onclick="replyNewFunction()">등록</a>
  </div>
  <div class="card-footer text-muted">
    2 days ago
  </div>
</div>

</div>

<div class="my-5"></div>

</body>
</html>
