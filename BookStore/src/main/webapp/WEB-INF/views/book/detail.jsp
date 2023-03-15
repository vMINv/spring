<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail</title>
</head>
<body>
	<h1>도서 상세보기</h1>
	<p>제목 : ${data.title }
	<p>종류 : ${data.category }
	<p>가격 : ${data.price }
	<p>날짜 : ${data.insert_date }
	<br>
	<br>
	<button onclick="location.href='/update?bookId=${bookId}'">수정</button>
	<button onclick="location.href='/list'">목록</button>
	<form method="POST" action="/delete">
		<input type="hidden" name="bookId" value="${bookId }"/>
		<input type="submit" value="삭제" />
	</form>
</body>
</html>