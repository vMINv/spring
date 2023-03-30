<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="header.jsp"%>


<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<link rel="stylesheet"
	href="resources/admin/plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet"
	href="resources/admin/plugins/daterangepicker/daterangepicker.css">
<link rel="stylesheet"
	href="resources/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<link rel="stylesheet"
	href="resources/admin/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
<link rel="stylesheet"
	href="resources/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<link rel="stylesheet"
	href="resources/admin/plugins/select2/css/select2.min.css">
<link rel="stylesheet"
	href="resources/admin/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
<link rel="stylesheet"
	href="resources/admin/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
<link rel="stylesheet"
	href="resources/admin/plugins/bs-stepper/css/bs-stepper.min.css">
<link rel="stylesheet"
	href="resources/admin/plugins/dropzone/min/dropzone.min.css">
<link rel="stylesheet"
	href="resources/admin/dist/css/adminlte.min.css?v=3.2.0">





<script src="https://code.jquery.com/jquery-3.6.3.min.js"
	integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
	crossorigin="anonymous"></script>

<script>
	function addtodo() {
		todo = $("#todo").val();
		tdue = $("#tdue").val();

		$.ajax({
			type : "POST",
			url : "/addtodo",
			data : {
				todo : todo,
				tdue : tdue
			},
			beforeSend : function(xhr) { /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
				xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			},
			success : function(result) {
				alert("등록 완료")
			},
			error : function(request, status, error) {
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
											<h3>${n4}</h3>
											<p>후속 조치</p>
										</div>
										<div class="icon">
											<i class="ion ion-pie-graph"></i>
										</div>
										<a href="#" class="small-box-footer">More info <i
											class="fas fa-arrow-circle-right"></i></a>
									</div>
								</div>

							</div>
						</div>
					</section>

					<div class="row">
						<div class="col-lg-6">
					<section>
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

										<c:forEach items="${todoList }" var="todo">
											<li><span class="handle"> <i
													class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
											</span>
												<div class="icheck-primary d-inline ml-2">
													<input type="checkbox" value="" name="todo1"
														id="todoCheck1"> <label for="todoCheck1"></label>
												</div> <span class="text">${todo.todo }</span> <small
												class="badge badge-danger"><i class="far fa-clock"></i>${todo.tdue}</small>
												<div class="tools">
													<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
												</div></li>
										</c:forEach>

									</ul>
								</div>


								<div class="input-group date" id="reservationdate"
									data-target-input="nearest">
									<input id="tdue" type="text"
										class="form-control datetimepicker-input"
										data-target="#reservationdate" />
									<div class="input-group-append" data-target="#reservationdate"
										data-toggle="datetimepicker">
										<div class="input-group-text">
											<i class="fa fa-calendar"></i>
										</div>
									</div>
								</div>

								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<a href="javascript:addtodo()" class="btn btn-danger">등록</a>
									</div>

									<input id="todo" type="text" class="form-control">
								</div>



							</div>
					</section>
						</div>
						
						
						
						
						
						
						
						<div class="col-lg-6">
					<section>
						<div class="card direct-chat direct-chat-primary">
							<div class="card-header">
								<h3 class="card-title">Direct Chat</h3>
								<div class="card-tools">
									<span title="3 New Messages" class="badge badge-primary">3</span>
									<button type="button" class="btn btn-tool"
										data-card-widget="collapse">
										<i class="fas fa-minus"></i>
									</button>
									<button type="button" class="btn btn-tool" title="Contacts"
										data-widget="chat-pane-toggle">
										<i class="fas fa-comments"></i>
									</button>
									<button type="button" class="btn btn-tool"
										data-card-widget="remove">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>

							<div class="card-body">
<!------------------------------------  -->
								<div class="direct-chat-messages">

									<c:forEach items="${chatList}" var="chat" varStatus="status">
										
										<c:if test="${chat.bwriter!='admin' }">
											<div class="direct-chat-msg">
												<div class="direct-chat-infos clearfix">
													<span class="direct-chat-name float-left">${chat.bwriter }</span>
													<span class="direct-chat-timestamp float-right">
														${chat.bdate }</span>
												</div>
												<img class="direct-chat-img"
													src="/resources/Admin/dist/img/user1-128x128.jpg"
													alt="message user image">
												<div class="direct-chat-text">${chat.bcontent }</div>
											</div>
										</c:if>

										<c:if test="${chat.bwriter=='admin' }">
											<div class="direct-chat-msg right">
												<div class="direct-chat-infos clearfix">
													<span class="direct-chat-name float-right">Admin</span> <span
														class="direct-chat-timestamp float-left">${chat.bdate }</span>
												</div>
												<img class="direct-chat-img"
													src="/resources/Admin/dist/img/user3-128x128.jpg"
													alt="message user image">
												<div class="direct-chat-text">${chat.bcontent }</div>
											</div>
										</c:if>

									</c:forEach>




								</div>

										<!------------------------------------  -->
								<div class="direct-chat-contacts">
									<ul class="contacts-list">
										<li><a href="#"> <img class="contacts-list-img"
												src="/resources/Admin/dist/img/user1-128x128.jpg"
												alt="User Avatar">
												<div class="contacts-list-info">
													<span class="contacts-list-name"> Count Dracula <small
														class="contacts-list-date float-right">2/28/2015</small>
													</span> <span class="contacts-list-msg">How have you been?
														I was...</span>
												</div>

										</a></li>

										<li><a href="#"> <img class="contacts-list-img"
												src="/resources/Admin/dist/img/user7-128x128.jpg"
												alt="User Avatar">
												<div class="contacts-list-info">
													<span class="contacts-list-name"> Sarah Doe <small
														class="contacts-list-date float-right">2/23/2015</small>
													</span> <span class="contacts-list-msg">I will be waiting
														for...</span>
												</div>

										</a></li>

										<li><a href="#"> <img class="contacts-list-img"
												src="/resources/Admin/dist/img/user3-128x128.jpg"
												alt="User Avatar">
												<div class="contacts-list-info">
													<span class="contacts-list-name"> Nadia Jolie <small
														class="contacts-list-date float-right">2/20/2015</small>
													</span> <span class="contacts-list-msg">I'll call you back
														at...</span>
												</div>

										</a></li>

										<li><a href="#"> <img class="contacts-list-img"
												src="/resources/Admin/dist/img/user5-128x128.jpg"
												alt="User Avatar">
												<div class="contacts-list-info">
													<span class="contacts-list-name"> Nora S. Vans <small
														class="contacts-list-date float-right">2/10/2015</small>
													</span> <span class="contacts-list-msg">Where is your
														new...</span>
												</div>

										</a></li>

										<li><a href="#"> <img class="contacts-list-img"
												src="/resources/Admin/dist/img/user6-128x128.jpg"
												alt="User Avatar">
												<div class="contacts-list-info">
													<span class="contacts-list-name"> John K. <small
														class="contacts-list-date float-right">1/27/2015</small>
													</span> <span class="contacts-list-msg">Can I take a look
														at...</span>
												</div>

										</a></li>

										<li><a href="#"> <img class="contacts-list-img"
												src="/resources/Admin/dist/img/user8-128x128.jpg"
												alt="User Avatar">
												<div class="contacts-list-info">
													<span class="contacts-list-name"> Kenneth M. <small
														class="contacts-list-date float-right">1/4/2015</small>
													</span> <span class="contacts-list-msg">Never mind I
														found...</span>
												</div>

										</a></li>

									</ul>

								</div>

							</div>

							<div class="card-footer">
								<form action="#" method="post">
									<div class="input-group">
										<input type="text" name="message"
											placeholder="Type Message ..." class="form-control">
										<span class="input-group-append">
											<button type="button" class="btn btn-primary">Send</button>
										</span>
									</div>
								</form>
							</div>

						</div>

					</section>
						</div>







</div>
				</div>
				<!-- /.col-md-6 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@ include file="footer.jsp"%>

<script src="resources/admin/plugins/jquery/jquery.min.js"></script>
<script
	src="resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="resources/admin/plugins/select2/js/select2.full.min.js"></script>
<script
	src="resources/admin/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<script src="resources/admin/plugins/moment/moment.min.js"></script>
<script src="resources/admin/plugins/inputmask/jquery.inputmask.min.js"></script>
<script src="resources/admin/plugins/daterangepicker/daterangepicker.js"></script>
<script
	src="resources/admin/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<script
	src="resources/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<script
	src="resources/admin/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<script src="resources/admin/plugins/bs-stepper/js/bs-stepper.min.js"></script>
<script src="resources/admin/plugins/dropzone/min/dropzone.min.js"></script>
<script src="resources/admin/dist/js/adminlte.min.js?v=3.2.0"></script>
<script src="resources/admin/dist/js/demo.js"></script>

<script>
	$(function() {
		//Initialize Select2 Elements
		$('.select2').select2()

		//Initialize Select2 Elements
		$('.select2bs4').select2({
			theme : 'bootstrap4'
		})

		//Datemask dd/mm/yyyy
		$('#datemask').inputmask('dd/mm/yyyy', {
			'placeholder' : 'dd/mm/yyyy'
		})
		//Datemask2 mm/dd/yyyy
		$('#datemask2').inputmask('mm/dd/yyyy', {
			'placeholder' : 'mm/dd/yyyy'
		})
		//Money Euro
		$('[data-mask]').inputmask()

		//Date picker
		$('#reservationdate').datetimepicker({
			format : 'L'
		});

		//Date and time picker
		$('#reservationdatetime').datetimepicker({
			icons : {
				time : 'far fa-clock'
			}
		});

		//Date range picker
		$('#reservation').daterangepicker()
		//Date range picker with time picker
		$('#reservationtime').daterangepicker({
			timePicker : true,
			timePickerIncrement : 30,
			locale : {
				format : 'MM/DD/YYYY hh:mm A'
			}
		})
		//Date range as a button
		$('#daterange-btn').daterangepicker(
				{
					ranges : {
						'Today' : [ moment(), moment() ],
						'Yesterday' : [ moment().subtract(1, 'days'),
								moment().subtract(1, 'days') ],
						'Last 7 Days' : [ moment().subtract(6, 'days'),
								moment() ],
						'Last 30 Days' : [ moment().subtract(29, 'days'),
								moment() ],
						'This Month' : [ moment().startOf('month'),
								moment().endOf('month') ],
						'Last Month' : [
								moment().subtract(1, 'month').startOf('month'),
								moment().subtract(1, 'month').endOf('month') ]
					},
					startDate : moment().subtract(29, 'days'),
					endDate : moment()
				},
				function(start, end) {
					$('#reportrange span').html(
							start.format('MMMM D, YYYY') + ' - '
									+ end.format('MMMM D, YYYY'))
				})

		//Timepicker
		$('#timepicker').datetimepicker({
			format : 'LT'
		})

		//Bootstrap Duallistbox
		$('.duallistbox').bootstrapDualListbox()

		//Colorpicker
		$('.my-colorpicker1').colorpicker()
		//color picker with addon
		$('.my-colorpicker2').colorpicker()

		$('.my-colorpicker2').on(
				'colorpickerChange',
				function(event) {
					$('.my-colorpicker2 .fa-square').css('color',
							event.color.toString());
				})

		$("input[data-bootstrap-switch]").each(function() {
			$(this).bootstrapSwitch('state', $(this).prop('checked'));
		})

	})
	// BS-Stepper Init
	document.addEventListener('DOMContentLoaded', function() {
		window.stepper = new Stepper(document.querySelector('.bs-stepper'))
	})

	// DropzoneJS Demo Code Start
	Dropzone.autoDiscover = false

	// Get the template HTML and remove it from the doumenthe template HTML and remove it from the doument
	var previewNode = document.querySelector("#template")
	previewNode.id = ""
	var previewTemplate = previewNode.parentNode.innerHTML
	previewNode.parentNode.removeChild(previewNode)

	var myDropzone = new Dropzone(document.body, { // Make the whole body a dropzone
		url : "/target-url", // Set the url
		thumbnailWidth : 80,
		thumbnailHeight : 80,
		parallelUploads : 20,
		previewTemplate : previewTemplate,
		autoQueue : false, // Make sure the files aren't queued until manually added
		previewsContainer : "#previews", // Define the container to display the previews
		clickable : ".fileinput-button" // Define the element that should be used as click trigger to select files.
	})

	myDropzone.on("addedfile", function(file) {
		// Hookup the start button
		file.previewElement.querySelector(".start").onclick = function() {
			myDropzone.enqueueFile(file)
		}
	})

	// Update the total progress bar
	myDropzone
			.on(
					"totaluploadprogress",
					function(progress) {
						document.querySelector("#total-progress .progress-bar").style.width = progress
								+ "%"
					})

	myDropzone.on("sending", function(file) {
		// Show the total progress bar when upload starts
		document.querySelector("#total-progress").style.opacity = "1"
		// And disable the start button
		file.previewElement.querySelector(".start").setAttribute("disabled",
				"disabled")
	})

	// Hide the total progress bar when nothing's uploading anymore
	myDropzone.on("queuecomplete", function(progress) {
		document.querySelector("#total-progress").style.opacity = "0"
	})

	// Setup the buttons for all transfers
	// The "add files" button doesn't need to be setup because the config
	// `clickable` has already been specified.
	document.querySelector("#actions .start").onclick = function() {
		myDropzone.enqueueFiles(myDropzone.getFilesWithStatus(Dropzone.ADDED))
	}
	document.querySelector("#actions .cancel").onclick = function() {
		myDropzone.removeAllFiles(true)
	}
	// DropzoneJS Demo Code End
</script>