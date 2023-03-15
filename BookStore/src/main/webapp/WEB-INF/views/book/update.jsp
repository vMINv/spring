<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
</head>
<body>
	<h1>도서 수정</h1>
	<form method="post">
		<p>
			제목 : <input type="text" name="title" value="${data.title }"/>
		<p>
			종류 : <input type="text" name="category" value="${data.category }"/>
		<p>
			가격 : <input type="text" name="price" value="${data.price }"/>
		<p>
			<input type="submit" value="저장" />
			<button onclick="location.href='/'">목록</button>
	</form>
</body>
</html>