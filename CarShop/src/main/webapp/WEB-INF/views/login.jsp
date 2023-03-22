<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.b-example-divider {
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}

html, body {
	height: 100%;
}

body {
	/* display: flex; */
	align-items: center;
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

.form-signin {
	max-width: 330px;
	padding: 15px;
}

.form-signin .form-floating:focus-within {
	z-index: 2;
}

.form-signin input[type="email"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}
</style>
<!-- AJAX JQuery -->
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<!-- Kakao SDK -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
/* kakaologin 옛날 방식 */
Kakao.init('fc7abe9b9479ffa297474094a4964dcf');

function kakaologin() {
	window.Kakao.Auth.login({
		/* kakaologin 시 넘겨 받을 항목 */
		scope:'profile_nickname, account_email, gender',
		success: function (authObj) {window.Kakao.API.request({url:'/v2/user/me',
			success:res => {
				const nickname = res.kakao_account.profile.nickname;
				const email = res.kakao_account.email;
				const gender = res.kakao_account.gender;
				
				/* 콘솔로 확인 */
				/* console.log(nickname);
				console.log(email);
				console.log(gender); */
				
				kakaoProcess(nickname, email, gender);
			}
		})}
	})
}

/* kakao 승인 절차 ajax */
function kakaoProcess(nickname, email, gender){
	$.ajax({
		type:'POST',
		url:'/users/kakao',
		data:{nickname:nickname,
			email:email,
			gender:gender
		},
		beforeSend:function(xhr){
			/* Spring Security로 인해 전송 전에 헤더에 csrf 값을 넣어야한다 */
			xhr.setRequestHeader('${_csrf.headerName}', '${_csrf.token}');
		},
		success:function(result){
			alert('카카오 로그인 성공, 메인 화면으로 이동합니다.');
			window.location.assign('/');
		},
		error:function(request, status, error){
			alert('카카오 로그인 실패, 최초 회원 가입 필요');
			window.location.assign('/users/joinkakao')
		}
	})
}
</script>
</head>
<body class="text-center">
	<main class="form-signin w-100 m-auto">
		<form action="/login" method="post">
			<img class="mb-4" src="/resources/images/kermit.jpeg" width="72" height="57">
			<h1 class="h3 mb-3 fw-normal">로그인 하세요</h1>
			<div class="form-floating">
				<input type="text" name="username" class="form-control" placeholder="아이디를 입력하세요">
				<label>아이디</label>
			</div>
			<div class="form-floating">
				<input type="password" name="password" class="form-control" placeholder="암호를 입력하세요">
				<label>암호</label>
			</div>
			<div class="checkbox mb-3">
				<label><input type="checkbox" value="remember-me">Remember me</label>
			</div>
			<button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
			<a href="javascript:kakaologin()"><img src="/resources/images/kakao_login_medium_wide.png"></a>
			<p class="mt-5 mb-3 text-muted">&copy; 2017–2022</p>
		</form>
	</main>
</body>
</html>