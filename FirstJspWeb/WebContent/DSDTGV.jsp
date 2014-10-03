 <%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
			Mục</li> <a href="index.jsp"
			class="list-group-item "><span class="pull-right"></span>Trang Chủ</a> <a
			href=""
			class="list-group-item "><span class="pull-right"></span><a1>Thêm đề tài</a1></a> <a
			href=""
			class="list-group-item "><span class="pull-right"></span>Danh sách đề tài</a><a
			href=""
			class="list-group-item "><span class="pull-right"></span>Xem điểm</a> <a
			href=""
			class="list-group-item "><span class="pull-right"></span>Vẽ Concept Map</a><a
			href=""
			class="list-group-item "><span class="pull-right"></span>Thông tin giảng viên</a>



		<hr />

		<div class="modal fade" id="change_info">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">Đổi thông tin cá nhân</h4>
					</div>
					<form>
						<div class="modal-body">
							<label>Email</label> <input type="text" class="form-control"
								name="email" value="" /> <label>Số điện thoại</label> <input
								type="text" name="phone" class="form-control" value="" /> <br />
							<div id="err"></div>
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


	</div>
	<div id="container">
		<div id="mobile-bar">
			<span style="cursor: pointer;" class="pull-left" href="javascript:;"
				onclick="slideMenu(); return false;" id="slideicon"><i
				class="icon-reorder"></i></span> <span data-toggle="modal"
				href="#thong_tin" class="pull-right btn btn-default btn-sm" id="#">Sign
				Out</span>
			<p style="text-align: center; font-weight: bold;">GV: Nguyễn Văn
				A</p>
		</div>
		<div id="navigation">
			<div id="banner-desktop">
				<div class="container">
					<div id="banner">
						<div id="login-area">
							<a data-toggle="modal" href="#thong_tin"><i>GV </i>: Nguyễn
								Văn A</a>
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
										class="list-group-item "><span class="pull-right"></span>Trang Chủ</a> 
										<a href=""
										class="list-group-item "><span class="pull-right"></span>Thêm đề tài</a> 
										<a href="DSDTGV.jsp"
										class="list-group-item "><span class="pull-right"></span><a1>Danh sách đề tài<a1></a>
										<a href="xemDiemGV.jsp"
										class="list-group-item "><span class="pull-right"></span>Xem điểm</a> 
										<a href="conCeptMapGV.jsp"
										class="list-group-item "><span class="pull-right"></span>Vẽ Concept Map</a>
										<a href="trangGV.jsp"
										class="list-group-item "><span class="pull-right"></span>Thông tin giảng viên</a>
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
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h4 class="modal-title">Đổi thông tin cá nhân</h4>
												</div>
												<form>
													<div class="modal-body">
														<label>Email</label> <input type="text"
															class="form-control" name="email" value="" /> <label>Số
															điện thoại</label> <input type="text" name="phone"
															class="form-control" value="" /> <br />
														<div id="err"></div>
													</div>
													<div class="modal-footer">
														<button type="submit" class="btn btn-primary"
															id="login_btn">Đăng nhập</button>
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
						<li class="active">Danh Sách Đề Tài</li>
					</ol>

					<div class="panel panel-default">
						<div style="color: rgb(7, 132, 163);" class="panel-heading">
							<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Điền thông tin đề tài</h4>
								<FORM>
								Mã đề tài:<INPUT TYPE="text" NAME="madt"><hr>Tên đề tài:<INPUT TYPE="text" NAME="tendt"></hr>
								<hr>Tài liệu:<input type="text" name="tailieu"><input type="button" value="Brown"/></hr>
								<hr>Đáp án:<select size="0"><option selected="selected" value="">Concept Map 2</option> <option selected="selected" value="">Concept Map 1</option> <option selected="selected" value="">List các concept đã được vẽ</option></hr></select>
								<hr>Hạn nộp bài:  <input type="text" class= "date"/></hr>
 <p> </p>
 <p> </p>
 <div>
 <table width="800" border="1">
  <tbody>
    <tr bgcolor="#C9C7C7">
      <td>MãĐT </td>
      <td>TênĐT</td>
      <td>Mô Tả</td>
      <td>Thời Hạn</td>
      <td>Tham Khảo</td>
      <td>Đáp án</td>
    </tr>
    <tr>
      <td>DT01</td>
      <td>Mind Map</td>
      <td>Sơ Đồ Tư Duy</td>
      <td>15/08/2015</td>
      <td><a href=""><a1>Word</a1></a></td>
      <td><a href="conceptGV.jsp"><a1>Click</a1></a></td>
    </tr>
    <tr>
      <td>DT02</td>
      <td>Giám Sát Lớp</td>
      <td>......</td>
      <td>......</td>
      <td><a href=""><a1>Word</a1></a></td>
      <td><a href="conceptGV.jsp"><a1>Click</a1></a></td>
    </tr>
  </tbody>
</table>
 </div>                         <p> </p>     							
								<P><INPUT TYPE="submit" VALUE="Sửa">
                                <INPUT TYPE="button" VALUE="Lưu">
                                <INPUT TYPE="reset" VALUE="Hủy">
                                <p>     <INPUT TYPE="button" VALUE="Xóa"></p></P>
								
								</FORM>
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
