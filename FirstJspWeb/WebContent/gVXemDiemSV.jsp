<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<head>
<title>::. Điểm của sinh viên .::</title>
<link rel="icon"
	href="http://dkdt.fit.hcmute.edu.vn/public/images/it_spkt.png"
	type="image/x-icon">
<link rel="shortcut icon"
	href="http://dkdt.fit.hcmute.edu.vn/public/images/it_spkt.png">
<link rel="stylesheet" media="all" type="text/css"
	href="css/bootstrap.min.css">
<link rel="stylesheet" media="all" type="text/css" href="css/style.css">
<link rel="stylesheet" media="all" type="text/css"
	href="css/footable.core.css">
<link rel="stylesheet" media="all" type="text/css"
	href="css/footable.standalone.css">
<link rel="stylesheet" media="all" type="text/css"
	href="css/font-awesome.min.css">
<link href="css/demo_page.css" rel="stylesheet" type="text/css" />
<link href="css/demo_table.css" rel="stylesheet" type="text/css" />
<link href="css/demo_table_jui.css" rel="stylesheet" type="text/css" />

<link href="css/jquery-ui-1.8.24.custom.css" rel="stylesheet"
	type="text/css" media="all" />
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jquery.dataTables.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#companies").dataTable({
			"sPaginationType" : "full_numbers",
			"bJQueryUI" : true
		});
	});
</script>
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<style type="text/css"></style>
<script type="text/javascript" src="js/footable.js"></script>
<script type="text/javascript" src="js/my_script.js"></script>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script
	src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
	<div id="menu">
		<li class="list-group-item" id="time"
			style="font-size: 11px; background-color: #3b5998; font-weight: bold; color: rgb(250, 250, 250);">03
			gi? 53 phút, ngày 02 tháng 10, 2014</li>
		<li class="list-group-item"
			style="text-align: right; font-weight: bold; font-family: verdana; background-color: #efefef;">Danh
			M?c</li> <a href="index.jsp" class="list-group-item "><span
			class="pull-right"><i class="icon-chevron-right"></i></span>Trang chủ</a>
		<a href="" class="list-group-item "><span class="pull-right"><i
				class="icon-chevron-right"></i></span>T</a> <a href="" class="list-group-item "><span
			class="pull-right"><i class="icon-chevron-right"></i></span>Danh sách
			đề tài</a><a href="danhSachDiem.jsp" class="list-group-item "><span
			class="pull-right"><i class="icon-chevron-right"></i></span>Danh sách
			điểm</a> <a href="danhSachChiaSe.jsp" class="list-group-item "><span
			class="pull-right"><i class="icon-chevron-right"></i></span>Đề tài
			được chia sẻ</a>
		<hr />
	</div>
	<div id="container">
		<div id="mobile-bar">
			<span style="cursor: pointer;" class="pull-left" href="javascript:;"
				onclick="slideMenu(); return false;" id="slideicon"><i
				class="icon-reorder"></i></span> <span data-toggle="modal"
				href="#thong_tin" class="pull-right btn btn-default btn-sm" id="#">Sign
				Out</span>
			<p style="text-align: center; font-weight: bold;">SV: Phạm Văn A</p>
		</div>
		<div id="navigation">
			<div id="banner-desktop">
				<div class="container">
					<div id="banner">
						<div id="login-area">
							<a data-toggle="modal" href="#thong_tin"><i>SV </i>: Phạm Văn
								A</a>
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
									<a href="index.jsp" class="list-group-item "><span
										class="pull-right"></span>Trang Chủ</a> <a href=""
										class="list-group-item "><span class="pull-right"></span>Danh
										sách đề tài</a><a href="danhSachDiem.jsp" class="list-group-item "><span
										class="pull-right"></span>Danh sách điểm</a> <a
										href="danhSachChiaSe.jsp" class="list-group-item "><span
										class="pull-right"></span>Đề tài được chia sẻ</a>
								</div>
								<!-- /panel-default -->

								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 id="mobile_sinhvien">Hệ thống</h4>
									</div>
									<a href="index.jsp" class="list-group-item"><span
										class="pull-right"></span>Ðăng xuất</a>
								</div>
								<!-- /panel-default -->


							</div>


							<!-- ########################### Form ###########################-->
							<!-- =========================Tìm ki?m box================================ -->
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
						<li class="active">Trang giảng viên xem điểm sinh viên</li>
					</ol>
				</div>
				<div class="col-md-9">
					<div class="breadcrumb" id="container">
						<div id="demo_jui">
							<table id="companies" class="display">
								<thead>
									<tr>
										<th>Chọn đề tài</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<div id="search">
												<select class="form-control text-center" id="search_cn">
													<option value="" selected="">Concept map</option>
													<option value="">Mind map</option>
													<option value="">Artificial Intelligence</option>
												</select>
											</div> <br>
											<div>
												<table width="800" border="1">
													<tbody>
														<tr bgcolor="#C9C7C7">
															<td>MSSV</td>
															<td>Tên SV</td>
															<td>Điểm</td>
														</tr>
														<tr>
															<td>11110043</td>
															<td>Nguyen Van B</td>
															<td>8</td>															
														</tr>
													</tbody>
												</table>

											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div id="footer">
			<hr />
			<h5 class="text-center text-danger">Khoa công nghệ thông tin -
				Đại Học Sư Phạm Kỹ Thuật</h5>
			<h5 class="text-center text-danger">Số 1, Võ Văn Ngân, Thủ Đức,
				TP. Hồ Chí Minh</h5>
		</div>
	</div>

</body>
</html>
