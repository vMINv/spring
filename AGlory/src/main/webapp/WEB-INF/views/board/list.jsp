<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목록</title>
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
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<!-- card -->
					<div class="card">
						<!-- card-header -->
						<div class="card-header">
							<h3 class="card-title">게시물 목록</h3>
						</div>
						<!-- END card-header -->
						<!-- card-body -->
						<div class="card-body">
							<table id="example1" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>번호</th>
										<th>작성자</th>
										<th>제목</th>
										<th>유형</th>
										<th>상태</th>
										<th>작성일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${boardList}" var="board">
										<tr>
											<td>${board.bid}</td>
											<td>${board.bwriter}</td>
											<td><a href="/board/detail?bid=${board.bid}">${board.btitle}</a></td>
											<td>${board.bcate}</td>
												<td><select
													onchange="updateStatus('${board.bid }', this)"
													class="form-select form-select-sm"
													aria-label=".form-select-sm example">
														<option value="1" ${board.bstatus=='1' ? 'selected' : '' }>1 : 신청완료</option>
														<option value="2" ${board.bstatus=='2' ? 'selected' : '' }>2 : 접수완료</option>
														<option value="3" ${board.bstatus=='3' ? 'selected' : '' }>3 : 처리중</option>
														<option value="4" ${board.bstatus=='4' ? 'selected' : '' }>4 : 처리완료</option>
														<option value="5" ${board.bstatus=='5' ? 'selected' : '' }>5 : 후속조치</option>
												</select></td>
											<td>${board.bdate}</td>
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
	
	function updateStatus(bid, e) {
		$.ajax({
			type : "POST",
			url : "/board/list",
			data : {
				bid : bid,
				bstatus : e.value
			},
			beforeSend : function(xhr) {
				xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			},
			success : function(result) {
				alert("상태 정보 변경이 완료되었습니다.")
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