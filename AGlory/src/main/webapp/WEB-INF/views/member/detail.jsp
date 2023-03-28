<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 보기</title>
<script nonce="9083c8cc-d8e4-4d21-bcb9-e9bec30fd1c5">
(function(w,d){!function(a,b,c,d){a[c]=a[c]||{};a[c].executed=[];a.zaraz={deferred:[],listeners:[]};a.zaraz.q=[];a.zaraz._f=function(e){return function(){var f=Array.prototype.slice.call(arguments);a.zaraz.q.push({m:e,a:f})}};for(const g of["track","set","debug"])a.zaraz[g]=a.zaraz._f(g);a.zaraz.init=()=>{var h=b.getElementsByTagName(d)[0],i=b.createElement(d),j=b.getElementsByTagName("title")[0];j&&(a[c].t=b.getElementsByTagName("title")[0].text);a[c].x=Math.random();a[c].w=a.screen.width;a[c].h=a.screen.height;a[c].j=a.innerHeight;a[c].e=a.innerWidth;a[c].l=a.location.href;a[c].r=b.referrer;a[c].k=a.screen.colorDepth;a[c].n=b.characterSet;a[c].o=(new Date).getTimezoneOffset();if(a.dataLayer)for(const n of Object.entries(Object.entries(dataLayer).reduce(((o,p)=>({...o[1],...p[1]})))))zaraz.set(n[0],n[1],{scope:"page"});a[c].q=[];for(;a.zaraz.q.length;){const q=a.zaraz.q.shift();a[c].q.push(q)}i.defer=!0;for(const r of[localStorage,sessionStorage])Object.keys(r||{}).filter((t=>t.startsWith("_zaraz_"))).forEach((s=>{try{a[c]["z_"+s.slice(7)]=JSON.parse(r.getItem(s))}catch{a[c]["z_"+s.slice(7)]=r.getItem(s)}}));i.referrerPolicy="origin";i.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(a[c])));h.parentNode.insertBefore(i,h)};["complete","interactive"].includes(b.readyState)?zaraz.init():a.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);
</script>
</head>
<body>
<%@ include file="../header.jsp" %>
	
	<!-- content-wrapper -->
	<div class="content-wrapper">
		<!-- content-header -->
		<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1 class="m-0">회원</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">회원</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<!-- END content-header -->
		<section class="content">
				<div class="card card-primary">
					<div class="card-header">
						<h3 class="card-title">About Me</h3>
					</div>
	
					<div class="card-body">
						<strong><i class="fas fa-book mr-1"></i> 아이디</strong>
						<p class="text-muted">${member.username }</p>
						<hr>
						<strong><i class="fas fa-book mr-1"></i> 이름</strong>
						<p class="text-muted">${member.mname }</p>
						<hr>
						<strong><i class="fas fa-book mr-1"></i> 이메일</strong>
						<p class="text-muted">${member.memail }</p>
						<hr>
						<strong><i class="fas fa-book mr-1"></i>
							전화번호</strong>
						<p class="text-muted">${member.mtel }</p>
						<hr>
						<strong><i class="fas fa-map-marker-alt mr-1"></i>
							권한</strong>
						<p class="text-muted">${member.authority }</p>
						<hr>
						<strong><i class="fas fa-map-marker-alt mr-1"></i>
							상태</strong>
						<p class="text-muted">${member.enabled }</p>
						<hr>
						<strong><i class="far fa-file-alt mr-1"></i> 가입일</strong>
						<p class="text-muted">${member.mdate }</p>
					</div>
					<!-- card-footer -->
					<div class="card-footer">
						<input type="button" onclick="location.href='/member/edit?mid=${member.mid}'" class="btn btn-outline-primary" value="수정" />
						<input type="button" onclick="location.href='/member/list'" class="btn btn-default float-right" value="목록" />
					</div>
					<!-- END card-footer -->
				</div>
		</section>
	</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
