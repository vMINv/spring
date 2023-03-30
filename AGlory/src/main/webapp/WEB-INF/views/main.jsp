<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>      
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<title>a Glory</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

<link rel="stylesheet" href="/resources/Admin/plugins/fontawesome-free/css/all.min.css">

<link rel="stylesheet" href="/resources/Admin/dist/css/adminlte.min.css?v=3.2.0">


<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<link rel="stylesheet"
	href="/resources/Admin/plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet"
	href="/resources/Admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="/resources/Admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet"
	href="/resources/Admin/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
<link rel="stylesheet"
	href="/resources/Admin/dist/css/adminlte.min.css?v=3.2.0">

<script src="https://code.jquery.com/jquery-3.6.3.min.js"
	integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
	crossorigin="anonymous"></script>
	
<script nonce="48d77f4e-1681-473e-9bd5-c3789b0d65df">(function(w,d){!function(a,b,c,d){a[c]=a[c]||{};a[c].executed=[];a.zaraz={deferred:[],listeners:[]};a.zaraz.q=[];a.zaraz._f=function(e){return function(){var f=Array.prototype.slice.call(arguments);a.zaraz.q.push({m:e,a:f})}};for(const g of["track","set","debug"])a.zaraz[g]=a.zaraz._f(g);a.zaraz.init=()=>{var h=b.getElementsByTagName(d)[0],i=b.createElement(d),j=b.getElementsByTagName("title")[0];j&&(a[c].t=b.getElementsByTagName("title")[0].text);a[c].x=Math.random();a[c].w=a.screen.width;a[c].h=a.screen.height;a[c].j=a.innerHeight;a[c].e=a.innerWidth;a[c].l=a.location.href;a[c].r=b.referrer;a[c].k=a.screen.colorDepth;a[c].n=b.characterSet;a[c].o=(new Date).getTimezoneOffset();if(a.dataLayer)for(const n of Object.entries(Object.entries(dataLayer).reduce(((o,p)=>({...o[1],...p[1]})))))zaraz.set(n[0],n[1],{scope:"page"});a[c].q=[];for(;a.zaraz.q.length;){const q=a.zaraz.q.shift();a[c].q.push(q)}i.defer=!0;for(const r of[localStorage,sessionStorage])Object.keys(r||{}).filter((t=>t.startsWith("_zaraz_"))).forEach((s=>{try{a[c]["z_"+s.slice(7)]=JSON.parse(r.getItem(s))}catch{a[c]["z_"+s.slice(7)]=r.getItem(s)}}));i.referrerPolicy="origin";i.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(a[c])));h.parentNode.insertBefore(i,h)};["complete","interactive"].includes(b.readyState)?zaraz.init():a.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script></head>

</head>
<body class="hold-transition layout-top-nav">
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
		
<!-- content ----------------------------------------------------------------------->
		
		<!-- content-wrapper -->
		<div class="content-wrapper">
		
		
		
		
		
		
		
		
		
		
		
		
		
			<!-- content-header -->
			<div class="content-header">
				<div class="container">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">
								a Glory <small>관리 프로그램</small>
							</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="">Home</a></li>

							</ol>
						</div>
					</div>
				</div>
			</div>
			<!-- END content-header -->
			
			<!-- content -->
			<div class="content">
				<div class="container">
					<div class="row">
						
						<!-- 왼쪽 섹션 -->
						<div class="col-lg-6">
						
							<!-- 공지 목록 card -->
							<div class="card card-primary card-outline">
								<div class="card-header">
									<h5 class="card-title m-0">공지</h5>
								</div>
								<div class="card-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>번호</th>
												<th>분류</th>
												<th>제목</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${noticeList}" var="notice">
												<tr>
													<td>${notice.nid}</td>
													<td>${notice.ncate}</td>
													<td>${notice.ntitle}</td>
													<td><a
														href="javascript:detailNotice('${notice.nid}', '${notice.ntitle}', '${notice.ncontent}')"
														class="btn-outline-primary btn-sm">보기</a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								
							</div>
							<!-- END 공지 목록 card -->

							<!-- 게시물 목록 card -->
							<div class="card card-primary card-outline">
								<!-- card-header -->
								<div class="card-header">
									<h3 class="card-title">게시물</h3>
								</div>
								<!-- END card-header -->
								<!-- card-body -->
								<div class="card-body">
									<table id="example2" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>번호</th>
												<th>분류</th>
												<th>제목</th>
												<th>상태</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${boardList}" var="board">
												<tr>
													<td>${board.bid}</td>
													<td>${board.bcate}</td>
													<td>${board.btitle}</td>
													<td>${board.bstatus}</td>
													<td><a href='javascript:detailBoard("${board.bid}", "${fn:replace(board.btitle, '"', '\\"')}", "${fn:replace(board.bcontent, '"', '\\"')}")'
                                                    class="btn-outline-primary btn-sm">보기</a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<!-- END 게시물 목록 card -->
							
						</div>
						<!-- END 왼쪽 섹션 -->

						<!-- 오른쪽 섹션 -->
						<div class="col-lg-6">
						
							<!-- 게시글 내용 보기 card -->
							<div class="card card-primary card-outline">
								<div class="card-header">
									<h5 class="card-title m-0">글</h5>
								</div>
								<div class="card-body">
									<h6 class="card-title" id="title">제목</h6>
									<p class="card-text" id="content">내용</p>
								</div>
							</div>
							<!-- END 게시글 내용 보기 card -->
							
							<!-- 댓글 내용 보기 card -->
							<div class="card card-primary card-outline">
								<div class="card-header">
									<h5 class="card-title m-0">댓글</h5>
								</div>
								<div class="card-body">
									<p class="card-text" id="replies">내용</p>
								</div>
							</div>
							<!-- END 댓글 내용 보기 card -->
							
							<!-- 게시물 등록 card -->
							<div class="card card-primary card-outline">
								<div class="card-header">
									<h5 class="card-title m-0">게시물 등록</h5>
								</div>
								<div class="card-body">
									<div class="form-group row">
										<div class="col-lg-12">
											<input type="text" class="form-control" id="btitle" placeholder="글제목">
										</div>
									</div>
									<div class="form-group row">
										<div class="col-lg-12">
											<input type="text" class="form-control" id="bcontent" placeholder="내용">
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6">
											<select id="bcate" class="form-control custom-select">
												<option selected disabled>선택하세요</option>
												<option>버그처리</option>
												<option>신규기능</option>
												<option>기타유형</option>
											</select>
										</div>
										<div class="col-sm-6">
											<input type="hidden" class="form-control" id="bwriter" value="${user.username }">
											<a href="javascript:addboard()" class="btn-sm btn-primary float-right">등록</a>
										</div>
									</div>
								</div>
							</div>
							<!-- END 게시물 등록 card -->
							
						</div>
						<!-- END 오른쪽 섹션 -->
						
					</div>
				</div>
			</div>
			<!-- END content-header -->
		</div>
		<!-- END content-wrapper -->
		
<!-- END content ----------------------------------------------------------------------->
		
		<aside class="control-sidebar control-sidebar-dark"></aside>

		<!-- footer -->
		<footer class="main-footer">
			<div class="float-right d-none d-sm-inline">Anything you want</div>
			<strong>Copyright &copy; 2014-2021 <a
				href="https://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
		</footer>
		<!-- END footer -->
	</div>
	<!-- END wrapper -->

<script src="/resources/Admin/plugins/jquery/jquery.min.js"></script>

<script src="/resources/Admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="/resources/Admin/dist/js/adminlte.min.js?v=3.2.0"></script>

	<script
		src="/resources/Admin/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/resources/Admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="/resources/Admin/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="/resources/Admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
	<script
		src="/resources/Admin/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="/resources/Admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
	<script src="/resources/Admin/plugins/jszip/jszip.min.js"></script>
	<script src="/resources/Admin/plugins/pdfmake/pdfmake.min.js"></script>
	<script src="/resources/Admin/plugins/pdfmake/vfs_fonts.js"></script>
	<script
		src="/resources/Admin/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
	<script
		src="/resources/Admin/plugins/datatables-buttons/js/buttons.print.min.js"></script>
	<script
		src="/resources/Admin/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<script>
	$(function() {
		$('#example1').DataTable({
			"paging" : true,
			"lengthChange" : false,
			"searching" : false,
			"ordering" : true,
			"info" : true,
			"autoWidth" : false,
			"responsive" : true,
		});
		$('#example2').DataTable({
			"paging" : true,
			"lengthChange" : false,
			"searching" : false,
			"ordering" : true,
			"info" : true,
			"autoWidth" : false,
			"responsive" : true,
		});
	});
</script>

<script>
function addboard() {
	btitle = $("#btitle").val();
	bcontent = $("#bcontent").val();
	bcate = $("#bcate").val();
	bwriter = $("#bwriter").val();
	
	$.ajax({
        type:"POST",
        url:"/addboardx",
        data:{btitle : btitle,
        	bcontent : bcontent,
        	bcate : bcate,
        	bwriter : bwriter
        },
        beforeSend : function(xhr)
        {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
        },
        success: function(result) {
    		window.location.reload(); 
            alert("등록 완료")
        },
        error:function (request, status, error) {
            alert(request.status + " " + request.responseText);
        }
    })
    window.location.reload(); 
}
	
function detailBoard(id, title, msg) {
	document.getElementById('title').innerHTML=title;	
	document.getElementById('content').innerHTML=msg;	
	
	  $.ajax({
            type:"POST",
            url:"/detailBoardajax",
            data:{bid: id },
            dataType: "json",// 잭슨 드라이버  pom 추가할것
            beforeSend : function(xhr)
            {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
                xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
            },
            success: function(result) {

						var str = "";
						for(var i in result){
							str+='				<li class="list-group-item">';
							str+='					<div class="list-group-item list-group-item-secondary small">';
							str+='						<span>' + result[i].bwriter +  '</span>';
							str+='						<span class="small float-end"> [' + result[i].bdate + ']</span>';
							str+='					</div>';
							str+='					<div class="list-group-item">' + result[i].bcontent + '</div>';
							str+='				</li>';
						}
						$(".replies").html(str);
						document.getElementById('replies').innerHTML=str;	

            },
            error:function (request, status, error) {
               alert(request.status + " " + request.responseText);
            }
        })

}

function detailNotice(id, title, msg) {
	document.getElementById('title').innerHTML=title;	
	document.getElementById('content').innerHTML=msg;
	var str = "";
	document.getElementById('replies').innerHTML=str;	
}
</script>
</body>
</html>