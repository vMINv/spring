<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 목록</title>
<!-- DataTables -->
<link rel="stylesheet" href="/resources/Admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="/resources/Admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" href="/resources/Admin/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
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
						<h1 class="m-0">공지</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">공지</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<!-- END content-header -->
		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<!-- card -->
						<div class="card">
							<!-- card-header -->
							<div class="card-header">
								<h3 class="card-title">공지 목록</h3>
							</div>
							<!-- END card-header -->
							<!-- card-body -->
							<div class="card-body">
								<table id="example1" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>유형</th>
											<th>작성일</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${noticeList}" var="notice">
											<tr>
												<td>${notice.nid}</td>
												<td><a href="/notice/detail?nid=${notice.nid}">${notice.ntitle}</a></td>
												<td><select
													onchange="updateCategory('${notice.nid }', this)"
													class="form-select form-select-sm"
													aria-label=".form-select-sm example">
														<option selected>${notice.ncate}</option>
														<option value="버그처리">버그처리</option>
														<option value="선택기능">선택기능</option>
														<option value="기타">기타</option>
												</select></td>
												<td>${notice.ndate}</td>
											</tr>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>유형</th>
											<th>작성일</th>
										</tr>
									</tfoot>
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
	<!-- END content-wrapper -->
	
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
<!-- AdminLTE App -->
<script src="/resources/Admin/dist/js/adminlte.min.js"></script>
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
	
	function updateCategory(nid, e) {
		$.ajax({
			type : "POST",
			url : "/notice/list",
			data : {
				nid : nid,
				category : e.value
			},
			/* beforeSend : function(xhr) {
				xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			}, */
			success : function(result) {
				alert("유형 정보 변경이 완료되었습니다.")
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