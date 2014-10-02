<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>::. Quản trị tài khoản .::</title>
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
			style="font-size: 11px; background-color: #3b5998; font-weight: bold; color: rgb(250, 250, 250);">03
			giờ 53 phút, ngày 02 tháng 10, 2014</li>
		<li class="list-group-item"
			style="text-align: right; font-weight: bold; font-family: verdana; background-color: #efefef;">Danh
			Mục</li> 
			<a href="index.jsp"
			class="list-group-item "><span class="pull-right"><i
			class="icon-chevron-right"></i></span>Trang Chủ</a> 
			<!-- <a href="http://dkdt.fit.hcmute.edu.vn/danh-sach-loai-de-tai.html"
			class="list-group-item "><span class="pull-right"><i
			class="icon-chevron-right"></i></span>Xem Danh Sách Đề Tài</a> 
			<a href="http://dkdt.fit.hcmute.edu.vn/danh-sach-loai-de-tai.html"
			class="list-group-item "><span class="pull-right"><i
			class="icon-chevron-right"></i></span>Xem Điểm</a>
			<a href="http://dkdt.fit.hcmute.edu.vn/danh-sach-loai-de-tai.html"
			class="list-group-item "><span class="pull-right"><i
			class="icon-chevron-right"></i></span>Xem Bài Được Share</a> -->
		<hr />
		<!-- /.modal -->


	</div>
	<div id="container">
		<div id="mobile-bar">
			<span style="cursor: pointer;" class="pull-left" href="javascript:;"
				onclick="slideMenu(); return false;" id="slideicon"><i
				class="icon-reorder"></i></span> <span data-toggle="modal"
				href="#thong_tin" class="pull-right btn btn-default btn-sm" id="#">Sign
				Out</span>
			<p style="text-align: center; font-weight: bold;">SV: Quách Tĩnh</p>
		</div>
		<div id="navigation">
			<div id="banner-desktop">
				<div class="container">
					<div id="banner">
						<div id="login-area">
							<a data-toggle="modal" href="#thong_tin"><i>SV </i>: Quách Tĩnh </a>
						</div>
					</div>
				</div>
			</div>





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
									<a href="index.jsp"
										class="list-group-item "><span class="pull-right"><i
											class="icon-chevron-right"></i></span>Trang Chủ</a> 
									<a
										class="list-group-item "><span class="pull-right">
										<i class="icon-chevron-right" ></i></span>Xem Danh Sách Đề Tài </a> 
										<a
										class="list-group-item "><span class="pull-right">
										<i class="icon-chevron-right"></i></span>Xem Điểm</a>
										<a 
										class="list-group-item "><span class="pull-right">
										<i class="icon-chevron-right"></i></span><a1>Xem Bài Được Share</a1></a>
										</div>
								<!-- /panel-default -->

								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 id="mobile_sinhvien">Hệ thống</h4>
									</div>
									<a href="index.jsp" class="list-group-item"><span
										class="pull-right"><i class="icon-chevron-right"></i></span>Đăng
										xuất</a>
									<div class="modal fade" id="change_info">
										<div class="modal-dialog">										
											<!-- /.modal-content -->
										</div>
										<!-- /.modal-dialog -->
									</div>
									<!-- /.modal -->
								</div>
								<!-- /panel-default -->


							</div>


							<!-- ########################### Form ###########################-->
							<!-- =========================Tìm kiếm box================================ -->
							<div class="modal fade" id="seach_box">
								<div class="modal-dialog">
									<div class="modal-content">

										<form action="http://dkdt.fit.hcmute.edu.vn/tim-kiem.chn"
											method="post" id="cpa-form">
											<div class="modal-body">
												<div id="err_tk"></div>
										</form>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
							<!-- /.modal -->
						</div>


					</div>
				</div>
				<div class="col-md-9">
					<ol class="breadcrumb">
						<li><a href="index.jsp">Trang chủ</a></li>
						<li class="active">Trang Sinh Viên</li>
                        <li class="active">Xem Danh Bài Được Share</li>
					</ol>

					<div class="panel panel-default">
						<div style="color: rgb(7, 132, 163);" class="panel-heading">
							<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Quản
								trị tài khoản</h4>
						</div>
						<div class="panel-body">
							<div class="alert alert-info">
							  <div id="avatar" style="float: left; margin-right: 20px;">
									<object style="width: 92px; height: 92px;"
										class="img-thumbnail img-responsive"
										data="http://online.hcmute.edu.vn/HinhSV/11110087.jpg">
										<img style="width: 82px; height: 82px;" class="img-responsive"
											src="http://dkdt.fit.hcmute.edu.vn/public/images/upload-image/noavatar92.png" />
									</object>
								</div>
Chào mừng <span> Sinh Viên </span> <strong class="text-danger">Quách Tĩnh</strong> <br>
đến với hệ thống ConceptMap Khoa Công Nghệ Thông
								Tin <br>
								<div class="clearfix"></div>
							</div>

							<!--
<h3 class="text-info">Thông tin cấu hình : </h3>
<hr />
<ul>
    -->
<style>
#img-cover img {
	width: 80px !important;
	height: 80px !important;
}
</style>
<div>
<table width="800" border="1">
  <tbody>
    <tr bgcolor="#C9C7C7">
      <td>MSSV </td>
      <td>TênSV</td>
      <td>TênĐT</td>
      <td>Concept Map</td>
    </tr>
    <tr>
      <td>11980148</td>
      <td>Hoàng Dung</td>
      <td>Mind Map</td>
      <td><a href=""><a1>Xem </a1></a></td>
    </tr>
    <tr>
      <td>11980123</td>
      <td>Dương Quá</td>
      <td>Giám Sát</td>
      <td><a href=""><a1>Xem</a1></a></td>
    </tr>
  </tbody>
</table>

</div>							
							<script>
								$(document)
										.ready(
												function() {
													$("input")
															.change(
																	function(e) {
																		for (var i = 0; i < e.originalEvent.srcElement.files.length; i++) {
																			var file = e.originalEvent.srcElement.files[i];

																			var img = document
																					.createElement("img");
																			var reader = new FileReader();
																			reader.onloadend = function() {
																				img.src = reader.result;
																			}
																			reader
																					.readAsDataURL(file);
																			$(
																					"#img-cover")
																					.show();
																			$(
																					"#img-cover")
																					.html(
																							img);
																			$(
																					"#upload")
																					.show();
																		}
																	});
													//upload ajax
													$("#upload")
															.click(
																	function() {
																		//alert("ok");
																		var imgVal = $(
																				'#uploadImage')
																				.val();
																		if (imgVal == '') {
																			alert("Bạn chưa chọn hình");
																			return false;
																		}
																	})
												})
							</script>
						</div>
					</div>				
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div id="footer">
			<hr />
			<h5 class="text-center text-danger">Khoa Công nghệ Thông tin -
				Đại học Sư phạm Kỹ thuật TP. Hồ Chí Minh</h5>
			<h5 class="text-center text-danger">Số 1, Võ Văn Ngân, Thủ Đức,
				TP. Hồ Chí Minh</h5>
		</div>
	</div>
	<!-- End #container -->

</body>
</html>
