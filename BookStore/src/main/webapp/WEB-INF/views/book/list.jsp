<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	<h1>도서 목록</h1>
	<p>
	<form>
		<input type="text" placeholder="검색" name="keyword" value="${keyword}" />
		<input type="submit" value="검색" />
	</form>
	</p>
	<table>
		<thead>
			<tr>
				<td>제목</td>
				<td>종류</td>
				<td>가격</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="row" items="${data }">
				<tr>
					<td><a href="/detail?bookId=${row.book_id }">${row.title }</a>
					</td>
					<td>${row.category }</td>
					<td>${row.price }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	<br>
	<button onclick="location.href='/create'">도서등록</button>
</body>
</html>