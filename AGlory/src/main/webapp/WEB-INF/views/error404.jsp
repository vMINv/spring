<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

<link rel="stylesheet" href="/resources/Admin/plugins/fontawesome-free/css/all.min.css">

<link rel="stylesheet" href="/resources/Admin/dist/css/adminlte.min.css?v=3.2.0">
<script nonce="af63e582-6959-423a-9ca7-6b5439ec7ef6">(function(w,d){!function(di,dj,dk,dl){di[dk]=di[dk]||{};di[dk].executed=[];di.zaraz={deferred:[],listeners:[]};di.zaraz.q=[];di.zaraz._f=function(dm){return function(){var dn=Array.prototype.slice.call(arguments);di.zaraz.q.push({m:dm,a:dn})}};for(const dp of["track","set","debug"])di.zaraz[dp]=di.zaraz._f(dp);di.zaraz.init=()=>{var dq=dj.getElementsByTagName(dl)[0],dr=dj.createElement(dl),ds=dj.getElementsByTagName("title")[0];ds&&(di[dk].t=dj.getElementsByTagName("title")[0].text);di[dk].x=Math.random();di[dk].w=di.screen.width;di[dk].h=di.screen.height;di[dk].j=di.innerHeight;di[dk].e=di.innerWidth;di[dk].l=di.location.href;di[dk].r=dj.referrer;di[dk].k=di.screen.colorDepth;di[dk].n=dj.characterSet;di[dk].o=(new Date).getTimezoneOffset();if(di.dataLayer)for(const dw of Object.entries(Object.entries(dataLayer).reduce(((dx,dy)=>({...dx[1],...dy[1]})))))zaraz.set(dw[0],dw[1],{scope:"page"});di[dk].q=[];for(;di.zaraz.q.length;){const dz=di.zaraz.q.shift();di[dk].q.push(dz)}dr.defer=!0;for(const dA of[localStorage,sessionStorage])Object.keys(dA||{}).filter((dC=>dC.startsWith("_zaraz_"))).forEach((dB=>{try{di[dk]["z_"+dB.slice(7)]=JSON.parse(dA.getItem(dB))}catch{di[dk]["z_"+dB.slice(7)]=dA.getItem(dB)}}));dr.referrerPolicy="origin";dr.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(di[dk])));dq.parentNode.insertBefore(dr,dq)};["complete","interactive"].includes(dj.readyState)?zaraz.init():di.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script></head>

</head>
<body class="hold-transition layout-top-nav">
${exception}
	<!-- wrapper -->
	<div class="wrapper">
<!-- nav ----------------------------------------------------------------------->
		<!-- nav -->
		<nav class="main-header navbar navbar-expand-md navbar-light navbar-white">
			<div class="container">
				<a href="/resources/Admin/index3.html" class="navbar-brand"> 
					<img src="/resources/Admin/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8"> 
					<span class="brand-text font-weight-light">a Glory</span>
				</a>
				<button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse order-3" id="navbarCollapse">
					<ul class="navbar-nav">
						<li class="nav-item">
							<a href="/main" class="nav-link">Home</a>
						</li>
						<sec:authentication property="principal" var="user" />
						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<li class="nav-item">
								<a href="/admin" class="nav-link">관리메뉴</a>
							</li>
						</sec:authorize>
					</ul>

					<form class="form-inline ml-0 ml-md-3">
						<div class="input-group input-group-sm">
							<input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
							<div class="input-group-append">
								<button class="btn btn-navbar" type="submit">
									<i class="fas fa-search"></i>
								</button>
							</div>
						</div>
					</form>
				</div>

				<ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
					<li class="nav-item dropdown">
						<a class="nav-link" data-toggle="dropdown" href="#"> 
							<i class="fas fa-comments"></i>
							<span class="badge badge-danger navbar-badge">3</span>
						</a>
						<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
							<a href="#" class="dropdown-item">
								<div class="media">
									<img src="/resources/Admin/dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
									<div class="media-body">
										<h3 class="dropdown-item-title"> Brad Diesel 
											<span class="float-right text-sm text-danger">
												<i class="fas fa-star"></i>
											</span>
										</h3>
										<p class="text-sm">Call me whenever you can...</p>
										<p class="text-sm text-muted">
											<i class="far fa-clock mr-1"></i> 4 Hours Ago
										</p>
									</div>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item">
								<div class="media">
									<img src="/resources/Admin/dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
									<div class="media-body">
										<h3 class="dropdown-item-title"> John Pierce 
											<span class="float-right text-sm text-muted">
												<i class="fas fa-star"></i>
											</span>
										</h3>
										<p class="text-sm">I got your message bro</p>
										<p class="text-sm text-muted">
											<i class="far fa-clock mr-1"></i> 4 Hours Ago
										</p>
									</div>
								</div>

							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item">

								<div class="media">
									<img src="/resources/Admin/dist/img/user3-128x128.jpg"
										alt="User Avatar" class="img-size-50 img-circle mr-3">
									<div class="media-body">
										<h3 class="dropdown-item-title">
											Nora Silvester <span class="float-right text-sm text-warning"><i
												class="fas fa-star"></i></span>
										</h3>
										<p class="text-sm">The subject goes here</p>
										<p class="text-sm text-muted">
											<i class="far fa-clock mr-1"></i> 4 Hours Ago
										</p>
									</div>
								</div>

							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item dropdown-footer">See All
								Messages</a>
						</div></li>

					<li class="nav-item dropdown"><a class="nav-link"
						data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
							class="badge badge-warning navbar-badge">15</span>
					</a>
						<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
							<span class="dropdown-header">15 Notifications</span>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item"> <i
								class="fas fa-envelope mr-2"></i> 4 new messages <span
								class="float-right text-muted text-sm">3 mins</span>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item"> <i
								class="fas fa-users mr-2"></i> 8 friend requests <span
								class="float-right text-muted text-sm">12 hours</span>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item"> <i
								class="fas fa-file mr-2"></i> 3 new reports <span
								class="float-right text-muted text-sm">2 days</span>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item dropdown-footer">See All
								Notifications</a>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-widget="control-sidebar" data-slide="true" href="#"
						role="button"> <i class="fas fa-th-large"></i>
					</a></li>
				</ul>
			</div>
		</nav>
		<!-- END nav -->
		<div class="content-wrapper">

			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>Error Page</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Error Page</li>
							</ol>
						</div>
					</div>
				</div>
			</section>

			<section class="content">
				<div class="error-page">
					<h2 class="headline text-warning">404</h2>
					<div class="error-content">
						<h3> <i class="fas fa-exclamation-triangle text-warning"></i>알 수 없는 에러가 발생하였습니다. </h3>
						<br>
						<p>
							<a href="/">로그인 화면으로 이동합니다.</a>
						</p>
						<form class="search-form">
							<div class="input-group">
								<input type="text" name="search" class="form-control"
									placeholder="Search">
								<div class="input-group-append">
									<button type="submit" name="submit" class="btn btn-warning">
										<i class="fas fa-search"></i>
									</button>
								</div>
							</div>

						</form>
					</div>

				</div>

			</section>

		</div>
	</div>

<script src="/resources/Admin/plugins/jquery/jquery.min.js"></script>

<script src="/resources/Admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="/resources/Admin/dist/js/adminlte.min.js?v=3.2.0"></script>

</body>
</html>