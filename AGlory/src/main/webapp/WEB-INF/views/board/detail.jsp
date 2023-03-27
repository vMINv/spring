<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 보기</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<link rel="stylesheet" href="/resources/Admin/plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet" href="/resources/Admin/dist/css/adminlte.min.css?v=3.2.0">
<script nonce="9083c8cc-d8e4-4d21-bcb9-e9bec30fd1c5">
(function(w,d){!function(a,b,c,d){a[c]=a[c]||{};a[c].executed=[];a.zaraz={deferred:[],listeners:[]};a.zaraz.q=[];a.zaraz._f=function(e){return function(){var f=Array.prototype.slice.call(arguments);a.zaraz.q.push({m:e,a:f})}};for(const g of["track","set","debug"])a.zaraz[g]=a.zaraz._f(g);a.zaraz.init=()=>{var h=b.getElementsByTagName(d)[0],i=b.createElement(d),j=b.getElementsByTagName("title")[0];j&&(a[c].t=b.getElementsByTagName("title")[0].text);a[c].x=Math.random();a[c].w=a.screen.width;a[c].h=a.screen.height;a[c].j=a.innerHeight;a[c].e=a.innerWidth;a[c].l=a.location.href;a[c].r=b.referrer;a[c].k=a.screen.colorDepth;a[c].n=b.characterSet;a[c].o=(new Date).getTimezoneOffset();if(a.dataLayer)for(const n of Object.entries(Object.entries(dataLayer).reduce(((o,p)=>({...o[1],...p[1]})))))zaraz.set(n[0],n[1],{scope:"page"});a[c].q=[];for(;a.zaraz.q.length;){const q=a.zaraz.q.shift();a[c].q.push(q)}i.defer=!0;for(const r of[localStorage,sessionStorage])Object.keys(r||{}).filter((t=>t.startsWith("_zaraz_"))).forEach((s=>{try{a[c]["z_"+s.slice(7)]=JSON.parse(r.getItem(s))}catch{a[c]["z_"+s.slice(7)]=r.getItem(s)}}));i.referrerPolicy="origin";i.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(a[c])));h.parentNode.insertBefore(i,h)};["complete","interactive"].includes(b.readyState)?zaraz.init():a.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);
</script>
</head>
<body>

	<%-- <!-- 주 게시물 -->
	<div class="card">
		<h5 class="card-header">${board.btitle}</h5>
		<div class="card-body">
			<h5 class="card-title">${board.bcontent}</h5>
			<br> <br> <br>
			<div class="d-flex justify-content-end">
				<p class="btn btn-success btn-sm">조회수 [ ${board.bview} ]</p>
				<a href="javascript:checkFunction('${board.bid}', 'blike')"
					class="btn btn-primary btn-sm">좋아요 [ ${board.blike} ]</a> <a
					href="javascript:checkFunction('${board.bid}', 'bhate')"
					class="btn btn-danger btn-sm">싫어요 [ ${board.bhate} ]</a>
			</div>
			<div class="d-flex justify-content-end badge bg-light text-dark">${board.bdate}</div>
		</div>
	</div> --%>




	<section class="content">
		<div class="card">
			<div class="card-header">
				<h3 class="card-title">게시물</h3>
				<div class="card-tools">
					<button type="button" class="btn btn-tool"
						data-card-widget="collapse" title="Collapse">
						<i class="fas fa-minus"></i>
					</button>
					<button type="button" class="btn btn-tool"
						data-card-widget="remove" title="Remove">
						<i class="fas fa-times"></i>
					</button>
				</div>
			</div>
			<div class="card-body">
				<div class="row">
					<div class="row">
						<div class="col-12">
							<div class="post">
								<div class="user-block">
									<img class="img-circle img-bordered-sm" src="/resources/Admin/dist/img/user1-128x128.jpg" alt="user image">
									<span class="username">${board.bwriter }</span> 
									<span class="description">${board.bdate }</span>
								</div>
								<p>${board.bcontent }</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

<script src="/resources/Admin/plugins/jquery/jquery.min.js"></script>
<script src="/resources/Admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/resources/Admin/dist/js/adminlte.min.js?v=3.2.0"></script>
<script src="/resources/Admin/dist/js/demo.js"></script>
</body>
</html>
