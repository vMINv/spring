<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 등록</title>
<!-- Theme style -->
<link rel="stylesheet" href="/resources/Admin/dist/css/adminlte.min.css">
</head>
<body>
<%@ include file="../header.jsp" %>
	<div class="content-wrapper">
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
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col">
				<!-- card -->
				<div class="card card-primary">
					<div class="card-header">
						<h3 class="card-title">게시물 등록</h3>
						<div class="card-tools">
							<button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
								<i class="fas fa-minus"></i>
							</button>
						</div>
					</div>
					<form:form modelAttribute="NewBoard" action="./addboard?${_csrf.parameterName}=${_csrf.token}" class="form-horizontal" method="post">
						<fieldset>
							<!-- card-body -->
							<!-- <sec:authentication property="principal" var="user" /> -->
							<div class="card-body">
								<div class="form-group">
									<label>작성자</label>
									<form:input path="bwriter" type="text" value="admin" class="form-control" readonly="true" />
								</div>
								<div class="form-group">
									<label>제목</label> 
									<form:input path="btitle" type="text" class="form-control" required="true" />
								</div>
								<div class="form-group">
									<label>내용</label>
									<form:textarea path="bcontent" id="summernote" rows="4" class="form-control" />
								</div>
								<div class="form-group">
									<label>유형</label>
									<form:select path="bcate" class="form-control custom-select" required="true">
										<form:option value="" disabled="true" selected="true">선택하세요</form:option>
										<form:option value="버그처리">버그처리</form:option>
										<form:option value="선택기능">선택기능</form:option>
										<form:option value="기타">기타</form:option>
									</form:select>
								</div>
							</div>
							<!-- END card-body -->
							<!-- card-footer -->
							<div class="card-footer">
								<button type="submit" class="btn btn-primary">등록</button>
								<input type="button" class="btn btn-default float-right" value="취소" />
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
	
<%@ include file="../footer.jsp" %>
<!-- AdminLTE App -->
<script src="/resources/Admin/dist/js/adminlte.min.js"></script>
<script>
	$('#summernote').summernote({
	  placeholder: '입력란을 반드시 채워주세요.',
	  tabsize: 2,
	  height: 120,
	  toolbar: [
	    ['style', ['style']],
	    ['font', ['bold', 'underline', 'clear']],
	    ['color', ['color']],
	    ['para', ['ul', 'ol', 'paragraph']],
	    ['table', ['table']],
	    ['insert', ['link', 'picture', 'video']],
	    ['view', ['fullscreen', 'codeview', 'help']]
	  ]
	});
</script>
</body>
</html>