<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 보기</title>
<script nonce="9083c8cc-d8e4-4d21-bcb9-e9bec30fd1c5">
(function(w,d){!function(a,b,c,d){a[c]=a[c]||{};a[c].executed=[];a.zaraz={deferred:[],listeners:[]};a.zaraz.q=[];a.zaraz._f=function(e){return function(){var f=Array.prototype.slice.call(arguments);a.zaraz.q.push({m:e,a:f})}};for(const g of["track","set","debug"])a.zaraz[g]=a.zaraz._f(g);a.zaraz.init=()=>{var h=b.getElementsByTagName(d)[0],i=b.createElement(d),j=b.getElementsByTagName("title")[0];j&&(a[c].t=b.getElementsByTagName("title")[0].text);a[c].x=Math.random();a[c].w=a.screen.width;a[c].h=a.screen.height;a[c].j=a.innerHeight;a[c].e=a.innerWidth;a[c].l=a.location.href;a[c].r=b.referrer;a[c].k=a.screen.colorDepth;a[c].n=b.characterSet;a[c].o=(new Date).getTimezoneOffset();if(a.dataLayer)for(const n of Object.entries(Object.entries(dataLayer).reduce(((o,p)=>({...o[1],...p[1]})))))zaraz.set(n[0],n[1],{scope:"page"});a[c].q=[];for(;a.zaraz.q.length;){const q=a.zaraz.q.shift();a[c].q.push(q)}i.defer=!0;for(const r of[localStorage,sessionStorage])Object.keys(r||{}).filter((t=>t.startsWith("_zaraz_"))).forEach((s=>{try{a[c]["z_"+s.slice(7)]=JSON.parse(r.getItem(s))}catch{a[c]["z_"+s.slice(7)]=r.getItem(s)}}));i.referrerPolicy="origin";i.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(a[c])));h.parentNode.insertBefore(i,h)};["complete","interactive"].includes(b.readyState)?zaraz.init():a.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);
</script>
</head>
<body>
<%@ include file="../header.jsp" %>
<sec:authentication property="principal" var="user" />
	<!-- content-wrapper -->
	<div class="content-wrapper">
		<!-- content-header -->
		<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1 class="m-0">게시물</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">게시물</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<!-- END content-header -->
		<!-- Main -->
		<section class="content">
			<!-- card -->
			<div class="card">
				<!-- card-header -->
				<div class="card-header">
					<h3 class="card-title">[${board.bcate }] ${board.btitle }</h3>
					<div class="card-tools">
						<button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
							<i class="fas fa-minus"></i>
						</button>
					</div>
				</div>
				<!-- END card-header -->
				<!-- card-body -->
				<div class="card-body">
					<div class="row">
						<div class="row">
							<div class="col-12">
								<div class="post">
									<div class="user-block">
										<img class="img-circle img-bordered-sm" src="/resources/images/admin.jpg" alt="admin image">
										<span class="username">${board.bwriter }</span> 
										<span class="description">${board.bdate }</span>
									</div>
									<p>${board.bcontent }</p>
									<c:if test="${user.username==board.bwriter }">
										<p>[상태] ${board.bstatus }</p>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- END card-body -->
				<!-- card-footer -->
				<div class="card-footer">
					<c:if test="${user.username==board.bwriter }">
						<input type="button" onclick="location.href='/board/edit?bid=${board.bid}'" class="btn btn-outline-primary" value="수정" />
						<input type="button" onclick="removeBoard('${board.bid}')" class="btn btn-outline-warning" value="삭제" />
					</c:if>
					<input type="button" onclick="location.href='/board/list'" class="btn btn-default float-right" value="목록" />
				</div>
				<!-- END card-footer -->
			</div>
			<!-- END card -->
		</section>
		<!-- END Main -->
		
		<!-- Comment -->
		<section class="content">
			<div class="container-fluid">
				<div class="input-group input-group-sm">
					<input id="rpwriter" type="hidden" value="${user.username}">
					<input id="bid" type="hidden" name="bid" value="${board.bid}">
					<input id="bcontent" type="text" name="bcontent" class="form-control"> 
					<span class="input-group-append">
						<button type="button" onclick="replyNewFunction()" class="btn btn-default btn-flat">댓글 달기</button>
					</span>
				</div>
			</div>
		</section>
		<!-- END Comment -->
		
		<br>

		<!-- Comment List -->
		<section class="content">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">

						<div class="timeline">


							<c:forEach items="${replyList}" var="reply">
								<div>
									<i class="fas fa-user bg-green"></i>
									<div class="timeline-item">
										<span class="time"><i class="fas fa-clock"></i> ${reply.bdate }</span>
										<h3 class="timeline-header">
											${reply.bwriter }
										</h3>
										<div class="timeline-footer"><p>${reply.bcontent }</p>
											<c:if test="${user.username==reply.bwriter }">
												<button class="btn btn-danger btn-sm" onclick="removeReply('${reply.bid}')">삭제</button>
											</c:if>
										</div>
									</div>
								</div>
							</c:forEach>



							<div>
								<i class="fas fa-clock bg-gray"></i>
							</div>
						</div>
					</div>

				</div>
			</div>

		</section>

	</div>
	
<%@ include file="../footer.jsp" %>
<script>
	function removeBoard(bid) {
		$.ajax({
			type : "POST",
			url : "/board/removeboard",
			data : {
				bid : bid
			},
			beforeSend : function(xhr) {
				xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			},
			success : function(result) {
				window.location.href = '/board/list';
				alert("게시물이 삭제되었습니다.")
			},
			error : function(request, status, error) {
				alert(request.status + " " + request.responseText);
			}
		})
	
		window.location.href = '/board/list';
	}
	
	function removeReply(bid) {
		$.ajax({
			type : "POST",
			url : "/board/removereply",
			data : {
				bid : bid
			},
			beforeSend : function(xhr) {
				xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			},
			success : function(result) {
				alert("댓글이 삭제되었습니다.")
			},
			error : function(request, status, error) {
				alert(request.status + " " + request.responseText);
			}
		})
	
		window.location.reload();
	}
	
	function replyNewFunction() {
		$.ajax({
			type : "POST",
			url : "/board/replynew",
			data : {
				bid : document.getElementById('bid').value,
				bwriter : document.getElementById('rpwriter').value,
				bcontent : document.getElementById('bcontent').value
			},
			beforeSend : function(xhr) {
				xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			},
			success : function(result) {
				alert("답변 등록 성공");
			},
			error : function(request, status, error) {
				alert(request.status + " " + request.responseText);
			}
		});
		window.location.reload();
	}
</script>
</body>
</html>