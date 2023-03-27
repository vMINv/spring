<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="/resources/Admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<script nonce="23fc059c-e509-4bcc-b2ef-34b3587be9fc">(function(w,d){!function(a,b,c,d){a[c]=a[c]||{};a[c].executed=[];a.zaraz={deferred:[],listeners:[]};a.zaraz.q=[];a.zaraz._f=function(e){return function(){var f=Array.prototype.slice.call(arguments);a.zaraz.q.push({m:e,a:f})}};for(const g of["track","set","debug"])a.zaraz[g]=a.zaraz._f(g);a.zaraz.init=()=>{var h=b.getElementsByTagName(d)[0],i=b.createElement(d),j=b.getElementsByTagName("title")[0];j&&(a[c].t=b.getElementsByTagName("title")[0].text);a[c].x=Math.random();a[c].w=a.screen.width;a[c].h=a.screen.height;a[c].j=a.innerHeight;a[c].e=a.innerWidth;a[c].l=a.location.href;a[c].r=b.referrer;a[c].k=a.screen.colorDepth;a[c].n=b.characterSet;a[c].o=(new Date).getTimezoneOffset();if(a.dataLayer)for(const n of Object.entries(Object.entries(dataLayer).reduce(((o,p)=>({...o[1],...p[1]})))))zaraz.set(n[0],n[1],{scope:"page"});a[c].q=[];for(;a.zaraz.q.length;){const q=a.zaraz.q.shift();a[c].q.push(q)}i.defer=!0;for(const r of[localStorage,sessionStorage])Object.keys(r||{}).filter((t=>t.startsWith("_zaraz_"))).forEach((s=>{try{a[c]["z_"+s.slice(7)]=JSON.parse(r.getItem(s))}catch{a[c]["z_"+s.slice(7)]=r.getItem(s)}}));i.referrerPolicy="origin";i.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(a[c])));h.parentNode.insertBefore(i,h)};["complete","interactive"].includes(b.readyState)?zaraz.init():a.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script></head>
<body class="hold-transition register-page">
<%@ include file="../header.jsp" %>
	<div class="content-wrapper">
		<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1 class="m-0">가입</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">가입</li>
						</ol>
					</div>
				</div>
			</div>
		</div>	
	<!-- Register -->
	<div class="register-box">
		<!-- card -->
		<div class="card card-outline card-primary">
			<div class="card-header text-center">
				<a href="/resources/Admin/index2.html" class="h1"><b>A Glory</b></a>
			</div>
			<form:form modelAttribute="NewMember" action="./addmember?${_csrf.parameterName}=${_csrf.token}" class="form-horizontal" method="post">
				<fieldset>
					<!-- card-body -->
					<div class="card-body">
						<div class="input-group mb-3">
							<form:input path="username" type="text" class="form-control" placeholder="아이디" required="true" />
							<div class="input-group-append">
								<div class="input-group-text">
									<span class="fas fa-user"></span>
								</div>
							</div>
						</div>
						<div class="input-group mb-3">
							<form:input path="password" type="password" class="form-control" placeholder="비밀번호" required="true" />
							<div class="input-group-append">
								<div class="input-group-text">
									<span class="fas fa-lock"></span>
								</div>
							</div>
						</div>
						<div class="input-group mb-3">
							<form:input path="mname" type="text" class="form-control" placeholder="이름" required="true" />
							<div class="input-group-append">
								<div class="input-group-text">
									<span class="fas fa-user"></span>
								</div>
							</div>
						</div>
						<div class="input-group mb-3">
							<form:input path="memail" type="email" class="form-control" placeholder="이메일" required="true" />
							<div class="input-group-append">
								<div class="input-group-text">
									<span class="fas fa-envelope"></span>
								</div>
							</div>
						</div>
						<div class="input-group mb-3">
							<form:input path="mtel" type="tel" class="form-control" placeholder="전화번호" required="true" />
							<div class="input-group-append">
								<div class="input-group-text">
									<span class="fas fa-user"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-8">
								<div class="icheck-primary">
									<input type="checkbox" id="agreeTerms" name="terms" value="agree"> 
									<label for="agreeTerms"> I agree to the <a href="#">terms</a></label>
								</div>
							</div>
							<div class="col-4">
								<button type="submit" class="btn btn-primary btn-block">가입</button>
							</div>
						</div>
						<div class="social-auth-links text-center">
							<a href="#" class="btn btn-block btn-primary"> 
								<i class="fab fa-facebook mr-2"></i> Sign up using Facebook
							</a> 
							<a href="#" class="btn btn-block btn-danger"> 
								<i class="fab fa-google-plus mr-2"></i> Sign up using Google+
							</a>
						</div>
						<a href="login.html" class="text-center">I already have a membership</a>
					</div>
					<!-- END card-body -->
				</fieldset>
			</form:form>
		</div>
		<!-- END card -->
	</div>
	<!-- END Register -->
	</div>
<%@ include file="../footer.jsp" %>
</body>
</html>