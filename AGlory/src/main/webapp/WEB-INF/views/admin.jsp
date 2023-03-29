<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"
	integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
	crossorigin="anonymous"></script>


<%@ include file="header.jsp"%>

<script>
	function addtodo(){
		todo = ${"#todo"}.val();
		
		$.ajax({
            type:"POST",
            url:"/addtodo",
            data:{todo: todo },
            beforeSend : function(xhr)
            {
                xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
            },
            success: function(result) {
                alert("등록 완료")
            },
            error:function (request, status, error) {
                alert(request.status + " " + request.responseText);
            }
        })

        window.location.reload();
	}
</script>



<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0">관리자 페이지</h1>
				</div>
				<!-- /.col -->
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">홈</a></li>
						<li class="breadcrumb-item active">관리자 페이지</li>
					</ol>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->

	<!-- Main content -->
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">


					<!-------------------- 여기서 부터 모든 페이지의 본문 삽입 -------------------->



					<section class="content">
						<div class="container-fluid">

							<div class="row">
								<div class="col-lg-3 col-6">

									<div class="small-box bg-info">
										<div class="inner">
											<h3>${n1}</h3>
											<p>신청 완료</p>
										</div>
										<div class="icon">
											<i class="ion ion-bag"></i>
										</div>
										<a href="#" class="small-box-footer">More info <i
											class="fas fa-arrow-circle-right"></i></a>
									</div>
								</div>

								<div class="col-lg-3 col-6">

									<div class="small-box bg-success">
										<div class="inner">
											<h3>${n2}</h3>
											<p>접수 완료</p>
										</div>
										<div class="icon">
											<i class="ion ion-stats-bars"></i>
										</div>
										<a href="#" class="small-box-footer">More info <i
											class="fas fa-arrow-circle-right"></i></a>
									</div>
								</div>

								<div class="col-lg-3 col-6">

									<div class="small-box bg-warning">
										<div class="inner">
											<h3>${n3}</h3>
											<p>처리 중</p>
										</div>
										<div class="icon">
											<i class="ion ion-person-add"></i>
										</div>
										<a href="#" class="small-box-footer">More info <i
											class="fas fa-arrow-circle-right"></i></a>
									</div>
								</div>

								<div class="col-lg-3 col-6">

									<div class="small-box bg-danger">
										<div class="inner">
											<h3>${n5}</h3>
											<p>후속 조치</p>
										</div>
										<div class="icon">
											<i class="ion ion-pie-graph"></i>
										</div>
										<a href="#" class="small-box-footer">More info <i
											class="fas fa-arrow-circle-right"></i></a>
									</div>
								</div>



















								<div class="col-lg-6 float-left">
									<div class="card">
										<div class="card-header">
											<h3 class="card-title">
												<i class="ion ion-clipboard mr-1"></i> To Do List
											</h3>
											<div class="card-tools">
												<ul class="pagination pagination-sm">
													<li class="page-item"><a href="#" class="page-link">&laquo;</a></li>
													<li class="page-item"><a href="#" class="page-link">1</a></li>
													<li class="page-item"><a href="#" class="page-link">2</a></li>
													<li class="page-item"><a href="#" class="page-link">3</a></li>
													<li class="page-item"><a href="#" class="page-link">&raquo;</a></li>
												</ul>
											</div>
										</div>

										<div class="card-body">
											<ul class="todo-list" data-widget="todo-list">






												<c:forEach items="${todoList}" var="list">
													<li><span class="handle"> <i
															class="fas fa-ellipsis-v"></i> <i
															class="fas fa-ellipsis-v"></i>
													</span>
														<div class="icheck-primary d-inline ml-2">
															<input type="checkbox" value="" name="todo6"
																id="todoCheck6"> <label for="todoCheck6"></label>
														</div> <span class="text">${list.todo}</span> <small
														class="badge badge-secondary"><i
															class="far fa-clock"></i>${list.tdue}</small>
														<div class="tools">
															<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
														</div></li>
												</c:forEach>




											</ul>
										</div>

										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<a href="javascript:addtodo()" class="btn btn-danger">등록</a>
											</div>

											<input id="todo" type="text" class="form-control">
										</div>
										</div>
										</div>
										</div>
										</div>
					</section>
</div>


































					<!-------------------- 여기까지 모든 페이지의 본문 삽입 -------------------->




					<!-- /.col-md-12 -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->




	<%@ include file="footer.jsp"%>