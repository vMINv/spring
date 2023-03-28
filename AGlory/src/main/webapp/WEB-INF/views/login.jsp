<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Log in</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<link rel="stylesheet" href="/resources/Admin/plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet" href="/resources/Admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<link rel="stylesheet" href="/resources/Admin/dist/css/adminlte.min.css?v=3.2.0">
<script nonce="b437a8eb-4b1d-4871-af2f-4e26031482f8">(function(w,d){!function(a,b,c,d){a[c]=a[c]||{};a[c].executed=[];a.zaraz={deferred:[],listeners:[]};a.zaraz.q=[];a.zaraz._f=function(e){return function(){var f=Array.prototype.slice.call(arguments);a.zaraz.q.push({m:e,a:f})}};for(const g of["track","set","debug"])a.zaraz[g]=a.zaraz._f(g);a.zaraz.init=()=>{var h=b.getElementsByTagName(d)[0],i=b.createElement(d),j=b.getElementsByTagName("title")[0];j&&(a[c].t=b.getElementsByTagName("title")[0].text);a[c].x=Math.random();a[c].w=a.screen.width;a[c].h=a.screen.height;a[c].j=a.innerHeight;a[c].e=a.innerWidth;a[c].l=a.location.href;a[c].r=b.referrer;a[c].k=a.screen.colorDepth;a[c].n=b.characterSet;a[c].o=(new Date).getTimezoneOffset();if(a.dataLayer)for(const n of Object.entries(Object.entries(dataLayer).reduce(((o,p)=>({...o[1],...p[1]})))))zaraz.set(n[0],n[1],{scope:"page"});a[c].q=[];for(;a.zaraz.q.length;){const q=a.zaraz.q.shift();a[c].q.push(q)}i.defer=!0;for(const r of[localStorage,sessionStorage])Object.keys(r||{}).filter((t=>t.startsWith("_zaraz_"))).forEach((s=>{try{a[c]["z_"+s.slice(7)]=JSON.parse(r.getItem(s))}catch{a[c]["z_"+s.slice(7)]=r.getItem(s)}}));i.referrerPolicy="origin";i.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(a[c])));h.parentNode.insertBefore(i,h)};["complete","interactive"].includes(b.readyState)?zaraz.init():a.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script>
</head>
<body class="hold-transition login-page">

	<div class="login-box">
		<div class="login-logo">
			<a href="/resources/Admin/index2.html"><b>A</b>Glory</a>
		</div>
		<div class="card">
			<div class="card-body login-card-body">
				<p class="login-box-msg">외부인은 로그인이 불가합니다.</p>
				<form action="/login" method="post">
					<div class="input-group mb-3">
						<input name="username" type="text" class="form-control" placeholder="아이디">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-envelope"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input name="password" type="password" class="form-control" placeholder="비밀번호">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<button type="submit" class="btn btn-primary btn-block">로그인</button>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						</div>

					</div>
				</form>
				<div class="social-auth-links text-center mb-3">
					<br>
					<a href="#" class="btn btn-block btn-primary"> 
						<i class="fab fa-facebook mr-2"></i> Sign in using Facebook
					</a> 
					<a href="#" class="btn btn-block btn-danger"> 
						<i class="fab fa-google-plus mr-2"></i> Sign in using Google+
					</a>
				</div>
				<p class="mb-1">
					<a href="forgot-password.html">비밀번호 재설정</a>
				</p>
				<p class="mb-0">
					<a href="/member/addmember" class="text-center">회원 가입</a>
				</p>
			</div>
		</div>
	</div>

<script src="/resources/Admin/plugins/jquery/jquery.min.js"></script>
<script src="/resources/Admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/resources/Admin/dist/js/adminlte.min.js?v=3.2.0"></script>
</body>
</html>
