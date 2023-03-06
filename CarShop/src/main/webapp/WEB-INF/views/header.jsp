<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">

<nav class="navbar navbar-expand navbar-dark bg-dark fixed-top"
	aria-label="Second navbar example">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">CarShop</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarsExample02" aria-controls="navbarsExample02"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExample02">
			<ul class="navbar-nav me-auto">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/">홈</a></li>
				<li class="nav-item"><a class="nav-link" href="/cars">차량 보기</a></li>
				<li class="nav-item"><a class="nav-link" href="/boards">게시판</a>
				</li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> 회원관리
				</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/login">로그인</a></li>
						<li><a class="dropdown-item" href="/logout">로그아웃</a></li>
					</ul></li>
			</ul>
			<c:choose>
			<c:when test="${isLogOn == true}">
			<form method="post" action="/logout">
				<input type="submit" class="btn btn-success" value="Logout" />
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
			</c:when>
			<c:otherwise>
				<form method="post" action="/login">
				<input type="submit" class="btn btn-primary" value="Login" />
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
			</c:otherwise>
			</c:choose>
		</div>
	</div>
</nav>


