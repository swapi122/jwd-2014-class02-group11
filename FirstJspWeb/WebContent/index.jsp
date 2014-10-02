<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>::. Thông báo .::</title>
<link rel="icon"
	href="http://dkdt.fit.hcmute.edu.vn/public/images/it_spkt.png"
	type="image/x-icon">
<link rel="shortcut icon"
	href="http://dkdt.fit.hcmute.edu.vn/public/images/it_spkt.png">
<link rel="stylesheet" media="all" type="text/css"
	href="./css/bootstrap.min.css">
<link rel="stylesheet" media="all" type="text/css"
	href="./css/style.css">
<link rel="stylesheet" media="all" type="text/css"
	href="./css/footable.core.css">
<link rel="stylesheet" media="all" type="text/css"
	href="./css/footable.standalone.css">
<link rel="stylesheet" media="all" type="text/css"
	href="./css/font-awesome.min.css">
<script type="text/javascript" src="./js/jquery-1.10.2.min.js"></script>
<style type="text/css"></style>
<script type="text/javascript" src="./js/footable.js"></script>
<script type="text/javascript" src="./js/my_script.js"></script>
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
<!--[if gt IE 8]>
      <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" >
  <![endif]-->
<!-- Font Awesom core -->
<!--[if IE 7]>
    <link rel="stylesheet" href="http://dkdt.fit.hcmute.edu.vn/public/font-awesome/css/font-awesome-ie7.min.css">
    <link rel="stylesheet" href="http://dkdt.fit.hcmute.edu.vn/public/font-awesome/css/bootstrap-ie7.css">
  <![endif]-->
</head>
<body>
	<div id="menu">
		<li class="list-group-item" id="time"
			style="font-size: 11px; background-color: #3b5998; font-weight: bold; color: rgb(250, 250, 250);">16
			giờ 15 phút, ngày 01 tháng 10, 2014</li>
		<li class="list-group-item"
			style="text-align: right; font-weight: bold; font-family: verdana; background-color: #efefef;">Danh
			Mục</li> <a href="http://dkdt.fit.hcmute.edu.vn/trang-chu.chn"
			class="list-group-item active"><span class="pull-right"><i
				class="icon-chevron-right"></i></span>Trang Chủ</a> <a
			href="http://dkdt.fit.hcmute.edu.vn/danh-sach-loai-de-tai.html"
			class="list-group-item "><span class="pull-right"><i
				class="icon-chevron-right"></i></span>Danh sách đề tài</a> <a
			href="http://dkdt.fit.hcmute.edu.vn/danh-sach-giang-vien/page/1.html"
			class="list-group-item "><span class="pull-right"><i
				class="icon-chevron-right"></i></span>Thông tin giảng viên</a> <a
			href="http://dkdt.fit.hcmute.edu.vn/danh-sach-sinh-vien/page/1.html"
			class="list-group-item "><span class="pull-right"><i
				class="icon-chevron-right"></i></span>Thông tin sinh viên</a> <a
			href="http://dkdt.fit.hcmute.edu.vn/huong-dan-dang-ky.html"
			class="list-group-item "><span class="pull-right"><i
				class="icon-chevron-right"></i></span>Hướng dẫn đăng ký</a> <a
			href="http://dkdt.fit.hcmute.edu.vn/thong-ke.html"
			class="list-group-item "><span class="pull-right"><i
				class="icon-chevron-right"></i></span>Thống kê</a> <a data-toggle="modal"
			href="http://dkdt.fit.hcmute.edu.vn/#seach_box"
			class="list-group-item"><span class="pull-right"><i
				class="icon-chevron-right"></i></span>Tìm kiếm</a>
		<hr>


	</div>
	<div id="container">
		<div id="mobile-bar">
			<span style="cursor: pointer;" class="pull-left" href="javascript:;"
				onclick="slideMenu(); return false;" id="slideicon"><i
				class="icon-reorder"></i></span> <span data-toggle="modal"
				href="#dang_nhap" class="pull-right btn btn-default btn-sm" id="#">Sign
				In</span>
			<p style="text-align: center; font-weight: bold;">Đăng ký đề tài</p>
		</div>
		<div id="navigation">
			<div id="banner-desktop">
				<div class="container">
					<div id="banner">
						<div id="login-area">
							<a data-toggle="modal"
								href="http://dkdt.fit.hcmute.edu.vn/#dang_nhap">Đăng nhập</a>
						</div>
					</div>
				</div>
			</div>
			<!-- ############################ Đăng nhập ############################## -->
			<div class="modal fade" id="dang_nhap">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title">Đăng nhập</h4>
						</div>
						<form method="post"
							action="http://dkdt.fit.hcmute.edu.vn/xu-ly-dang-nhap"
							id="frm-login">
							<div class="modal-body">
								<div id="err_login"></div>
								<div id="login_here">
									<label>Username : </label> <input type="text"
										class="form-control" name="username" id="username"> <label>Password
										: </label> <input type="password" class="form-control" name="password"
										id="password"> <br> <a
										href="http://dkdt.fit.hcmute.edu.vn/quen-mat-khau.html"
										class="text-danger">Quên mật khẩu</a>
										<P>Sinh viên: <INPUT TYPE="radio" NAME="phai" VALUE="nam">
										Giảng viên: <INPUT TYPE="radio" NAME="phai" VALUE="nu"></P>
								</div>
								<br>
								<div id="waiting" style="display: none;">
									<div class="progress progress-striped active">
										<div class="progress-bar" role="progressbar"
											aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"
											style="width: 100%"></div>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="submit" class="btn btn-primary" id="login_btn">Đăng
									nhập</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</form>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<!-- ===================================Thông tin người dùng=========================-->
			<div class="modal fade" id="thong_tin">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title">Thông tin người dùng</h4>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<!-- ===================================Ajax Login=========================-->
			<script>
				$(document)
						.ready(
								function() {
									$("#frm-login")
											.submit(
													function(e) {
														if ($("#username")
																.val() == '') {
															$('#err_login')
																	.html(
																			'<div class="alert alert-danger">Username chưa nhập</div>');
															$("#username")
																	.focus();
															return false;
														} else if ($(
																"#password")
																.val() == '') {
															$('#err_login')
																	.html(
																			'<div class="alert alert-danger">Password chưa nhập</div>');
															$("#password")
																	.focus();
															return false;
														} else {
															var form_data_login = {
																username : $(
																		"#username")
																		.val(),
																password : $(
																		"#password")
																		.val()
															};
															$
																	.ajax({
																		url : 'http://dkdt.fit.hcmute.edu.vn/xu-ly-dang-nhap',
																		type : 'POST',
																		async : true,
																		data : form_data_login,
																		success : function(
																				msg_login) {
																			//alert(msg);
																			if (msg_login == 'false') {
																				$(
																						'#err_login')
																						.html(
																								'<div class="alert alert-danger">Tên hoặc mật khẩu không chính xác</div>');
																				$(
																						"#password")
																						.val(
																								"");
																				$(
																						"#password")
																						.focus();
																				return false;
																			} else {
																				$(
																						"#login_here")
																						.hide();
																				$(
																						".modal-footer")
																						.hide();

																				$(
																						'#err_login')
																						.html(
																								'<div class="alert alert-success"><strong>Đăng nhập thành công</strong><span> Hệ thống tự chuyển sau vài giây ...</span></div>');
																				setTimeout(
																						function() {
																							window.location.href = ''
																									+ msg_login
																									+ '';
																						},
																						2000);
																			}
																		}
																	});
															return false;
														}
													});
								})
				//Load wating bar
				$(document).ajaxStart(function() {
					$("#waiting").show();
				}).ajaxStop(function() {
					$("#waiting").hide();
				});
			</script>

		</div>
		<div id="wrapper">
			<div class="container">
				<div class="row">
					<div id="left-content">
						<div class="col-md-3">
							<!-- Menu desktop -->
							<div id="desktop-menu">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 id="mobile_home">Danh Mục</h4>
									</div>
									<a href="" class="list-group-item active"><span
										class="pull-right"><i class="icon-chevron-right"></i></span>Trang
										Chủ</a><a href="" class="list-group-item "><span
										class="pull-right"><i class="icon-chevron-right"></i></span>Thông
										tin giảng viên</a> <a href="" class="list-group-item "><span
										class="pull-right"><i class="icon-chevron-right"></i></span>Thông
										tin sinh viên</a>
								</div>
								<!-- /panel-default -->

								<!--============================Bench==================-->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 id="mobile_thongke">&nbsp;</h4>
									</div>
								</div>
							</div>

							<!-- Modal Who online -->
							<div class="modal fade" id="who_online" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">×</button>
											<h4 class="modal-title" id="myModalLabel">Online Users</h4>
										</div>
										<div class="modal-body">
											<table class="table table-striped footable-loaded footable">
												<thead>
													<tr>
														<td>STT</td>
														<td>Tên SV</td>
													</tr>
												</thead>
											</table>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div>
							<!-- ########################### Form ###########################-->
							<!-- =========================Tìm kiếm box================================ -->
							<div class="modal fade" id="seach_box">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">×</button>
											<h4 class="modal-title">Tìm kiếm</h4>
										</div>
										<form action="http://dkdt.fit.hcmute.edu.vn/tim-kiem.chn"
											method="post" id="cpa-form">
											<div class="modal-body">
												<div id="err_tk"></div>
												<select class="form-control text-center" name="param_option"
													id="tim_kiem_tong_hop">
													<option value="timkiemgiangvien">Tìm kiếm giảng
														viên</option>
													<option value="timkiemsinhvien">Tìm kiếm sinh viên</option>
													<option value="timkiemdetai">Tìm kiếm đề tài</option>
												</select> <br> <label>Nhập từ khoá :</label> <input type="text"
													class="form-control" id="parameter1" name="param_textbox"
													value="" placeholder="Tìm kiếm gì đó ....">
												<div class="clear"></div>
												<div id="search_advance">
													<br>
													<div id="type_detai" style="display: none;">
														<fieldset>
															<legend>Chọn loại đề tài</legend>
															<input checked="" type="radio" name="group_loaidt"
																value="40"> Tiểu luận chuyên ngành | K 2011<br>
															<input type="radio" name="group_loaidt" value="39">
															Đề tài tốt nghiệp | K 2010<br> <input type="radio"
																name="group_loaidt" value="38"> Tiểu luận chuyên
															ngành | K 2010<br> <input type="radio"
																name="group_loaidt" value="5"> Đề tài tốt nghiệp
															| K 2009<br>
														</fieldset>
													</div>
													<!-- End #search_advance -->
												</div>
												<!--End body -->
												<div class="modal-footer">
													<button type="submit" class="btn btn-primary"
														id="timkiem_btn">Tìm kiếm</button>
													<button type="button" class="btn btn-default"
														data-dismiss="modal">Close</button>
												</div>

											</div>
										</form>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal-dialog -->
								</div>
								<!-- /.modal -->
							</div>
							<!-- ===================================Ajax========================= -->
							<script>
								$(document)
										.ready(
												function() {
													$("#cpa-form")
															.submit(
																	function(e) {
																		if ($(
																				"#parameter1")
																				.val() == '') {
																			$(
																					'#err_tk')
																					.html(
																							'<div class="alert alert-danger">Vui lòng nhập từ khoá tìm kiếm</div>');
																			$(
																					"#parameter1")
																					.focus();
																			return false;
																		}
																	});
												})
							</script>

						</div>
					</div>
					<div class="col-md-9">
						<ol class="breadcrumb">
							<li><a href="./Home_files/Home.htm">Home</a></li>
							<li class="active">Thông báo</li>
						</ol>
						<div class="well-sm">
							<span> <span id="random_tin"> <i
									class="icon-bullhorn"></i>&nbsp; <img
									src="./images/bullet-blue-icon.png"> <small>
										<a href=""> Thông báo giảng viên đã thêm đề tài mới, tất
											cả các sinh viên lớp 111101 vào xem chi tiết để bắt đầu làm
											bài. <small style="color: rgb(87, 87, 87);"></small>
									</a>
								</small> <img src="./images/new1.gif">
							</span> <span id="time_bar"> <span id="time"
									class="label label-primary pull-right"><i
										class="icon-time"></i></span><br>
							</span>
							</span>
						</div>
						<div class="panel panel-default">
							<div style="color: rgb(7, 132, 163);" class="panel-heading">
								<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Thông
									báo</h4>
							</div>
							<div class="panel-body">
								<ul class="list-unstyled">

									<a href="">
										<li class="article-area">
											<p>
												<span class="btn btn-primary btn-sm">01/10/2014 -
													22:00</span> Thông báo giảng viên đã thêm đề tài mới, tất cả các
												sinh viên lớp 111101 vào xem chi tiết để bắt đầu làm bài. <img
													src="./images/new1.gif">
											</p>
									</li>
									</a>



									<a href="">
										<li class="article-area">
											<p>&nbsp;</p>
									</li>
									</a>
									<a href="">
										<li class="article-area"></li>
									</a>


								</ul>
							</div>
						</div>
						<ol class="breadcrumb">
							<li><a href="./Home_files/Home.htm">Home</a></li>
							<li class="active">Thông báo</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div id="footer">
				<hr>
				<h5 class="text-center text-danger">Khoa Công nghệ Thông tin -
					Đại học Sư phạm Kỹ thuật TP. Hồ Chí Minh</h5>
				<h5 class="text-center text-danger">Số 1, Võ Văn Ngân, Thủ Đức,
					TP. Hồ Chí Minh</h5>
			</div>
		</div>
	</div>
	<!-- End #container -->
	<div id="loading">
		<span>Đang tải ...</span>
	</div>
	<script type="text/javascript" src="./js/bootstrap.min.js"></script>

</body>
</html>