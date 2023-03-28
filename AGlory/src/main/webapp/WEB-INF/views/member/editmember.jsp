<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 수정</title>
<!-- Theme style -->
<link rel="stylesheet" href="/resources/Admin/dist/css/adminlte.min.css">
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
		<!-- Main content -->
		<section class="content">
			<div class="row">
				<div class="col">
					<!-- card -->
					<div class="card card-primary">
						<!-- card-header -->
						<div class="card-header">
							<h3 class="card-title">회원 수정</h3>
							<div class="card-tools">
								<button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
									<i class="fas fa-minus"></i>
								</button>
							</div>
						</div>
						<!-- END card-header -->
						<form:form modelAttribute="EditMember"
							action="./edit?${_csrf.parameterName}=${_csrf.token}&mid=${member.mid }"
							class="form-horizontal" 
							method="post">
							<fieldset>
								<form:input path="username" type="hidden" value="${member.username }" class="form-control" />
								<!-- card-body -->
								<!-- <sec:authentication property="principal" var="user" /> -->
								<div class="card-body">
									<div class="form-group">
										<label>이름</label>
										<form:input path="mname" type="text" value="${member.mname }" class="form-control" />
									</div>
									<div class="form-group">
										<label>이메일</label>
										<form:input path="memail" type="email" value="${member.memail }" class="form-control" />
									</div>
									<div class="form-group">
										<label>전화번호</label>
										<form:input path="mtel" type="tel" value="${member.mtel }" class="form-control" />
									</div>
								</div>
								<!-- END card-body -->
								<!-- card-footer -->
								<div class="card-footer">
									<button type="submit" class="btn btn-primary">수정</button>
									<input type="button" onclick="location.href='/member/detail?mid=${member.mid}'" class="btn btn-default float-right" value="취소" />
								</div>
								<!-- END card-footer -->
							</fieldset>
						</form:form>
					</div>
					<!-- END card -->
				</div>
			</div>
		</section>
		<!-- END Main content -->
	</div>
	<!-- END content-wrapper -->
	
<%@ include file="../footer.jsp" %>
</body>
</html>