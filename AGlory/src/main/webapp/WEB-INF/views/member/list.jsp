<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<!-- DataTables -->
<link rel="stylesheet" href="/resources/Admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="/resources/Admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" href="/resources/Admin/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
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
	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<!-- card -->
					<div class="card">
						<!-- card-header -->
						<div class="card-header">
							<h3 class="card-title">회원 목록</h3>
						</div>
						<!-- END card-header -->
						<!-- card-body -->
						<div class="card-body">
							<table id="example1" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>번호</th>
										<th>아이디</th>
										<th>이름</th>
										<th>Auth</th>
										<th>Enabled</th>
										<th>삭제</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${memberList}" var="member">
										<tr>
											<td>${member.mid}</td>
											<td><a href="/member/detail?mid=${member.mid}">${member.username}</a></td>
											<td>${member.mname}</td>
											<td><select
												onchange="updateAuth('${member.username }', this)"
												class="form-select form-select-sm"
												aria-label=".form-select-sm example">
													<option value="ROLE_USER" ${member.authority=='ROLE_USER' ? 'selected' : '' }>ROLE_USER</option>
													<option value="ROLE_MANAGER" ${member.authority=='ROLE_MANAGER' ? 'selected' : '' }>ROLE_MANAGER</option>
													<option value="ROLE_ADMIN" ${member.authority=='ROLE_ADMIN' ? 'selected' : '' }>ROLE_ADMIN</option>
											</select></td>
											<td><select
												onchange="updateEnabled('${member.username }', this)"
												class="form-select form-select-sm"
												aria-label=".form-select-sm example">
													<option value="0" ${member.enabled=='0' ? 'selected' : '' }>0</option>
													<option value="1" ${member.enabled=='1' ? 'selected' : '' }>1</option>
													<option value="2" ${member.enabled=='2' ? 'selected' : '' }>2</option>
											</select></td>
											<td><button class="btn btn-outline-primary" onclick="removeMember('${member.mid}')">삭제</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- END card-body -->
					</div>
					<!-- END card -->
				</div>
			</div>
		</div>
	</section>
	<!-- END Main content -->
	</div>
	
<%@ include file="../footer.jsp" %>

<!-- DataTables  & Plugins -->
<script src="/resources/Admin/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/resources/Admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="/resources/Admin/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="/resources/Admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="/resources/Admin/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="/resources/Admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="/resources/Admin/plugins/jszip/jszip.min.js"></script>
<script src="/resources/Admin/plugins/pdfmake/pdfmake.min.js"></script>
<script src="/resources/Admin/plugins/pdfmake/vfs_fonts.js"></script>
<script src="/resources/Admin/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="/resources/Admin/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="/resources/Admin/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- Page specific script -->
<script>
	$(function() {
		$("#example1").DataTable(
			{
				"responsive" : true,
				"lengthChange" : false,
				"autoWidth" : false,
				"buttons" : [ "copy", "csv", "excel", "pdf", "print",
						"colvis" ]
			}
		).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
	});
	
	function updateAuth(username, e) {
		$.ajax({
			type : "POST",
			url : "/member/updateAuth",
			data : {
				username : username,
				authority : e.value
			},
			beforeSend : function(xhr) {
				xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			},
			success : function(result) {
				alert("권한 변경이 완료되었습니다.")
			},
			error : function(request, status, error) {
				alert(request.status + " " + request.responseText);
			}
		})

		window.location.reload();
	}
	
	function updateEnabled(username, e) {
		$.ajax({
			type : "POST",
			url : "/member/updateEnabled",
			data : {
				username : username,
				enabled : e.value
			},
			beforeSend : function(xhr) {
				xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			},
			success : function(result) {
				alert("변경이 완료되었습니다.")
			},
			error : function(request, status, error) {
				alert(request.status + " " + request.responseText);
			}
		})

		window.location.reload();
	}
	
	function removeMember(mid) {
		$.ajax({
			type : "POST",
			url : "/member/remove",
			data : {
				mid : mid
			},
			beforeSend : function(xhr) {
				xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			},
			success : function(result) {
				alert("회원이 삭제되었습니다.")
			},
			error : function(request, status, error) {
				alert(request.status + " " + request.responseText);
			}
		})
	
		window.location.reload();
	}
</script>
</body>
</html>