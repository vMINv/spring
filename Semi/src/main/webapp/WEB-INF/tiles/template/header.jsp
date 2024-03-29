<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<div class="container">
	<header
		class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
		<a href="/"
			class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
			<svg class="bi me-2" width="40" height="32" role="img"
				aria-label="Bootstrap">
				<use xlink:href="#bootstrap" /></svg>
		</a>
		<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
			<li><a href="#" class="nav-link px-2 link-secondary">Home</a></li>
			<li><a href="#" class="nav-link px-2 link-dark">Features</a></li>
			<li><a href="#" class="nav-link px-2 link-dark">Pricing</a></li>
			<li><a href="#" class="nav-link px-2 link-dark">FAQs</a></li>
			<li><a href="#" class="nav-link px-2 link-dark">About</a></li>
		</ul>
		<div class="col-md-3 text-end">
			<button type="button" class="btn btn-outline-primary me-2">Login</button>
			<button type="button" class="btn btn-primary">Sign-up</button>
		</div>
	</header>
</div>