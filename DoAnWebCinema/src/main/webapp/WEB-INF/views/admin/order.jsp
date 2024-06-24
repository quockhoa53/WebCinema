<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
<meta name="description"
	content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
<meta name="robots" content="noindex,nofollow">
<title>Phim</title>
<link rel="canonical"
	href="https://www.wrappixel.com/templates/ample-admin-lite/" />
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="/imgs/favicon.png">
<!-- Custom CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link
	href="http://localhost:8080/DoAnWebCinema/css/chartist.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://localhost:8080/DoAnWebCinema/css/chartist-plugin-tooltip.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Custom CSS -->
<link
	href="http://localhost:8080/DoAnWebCinema/css/style.min.css"
	rel="stylesheet">
<link
	href="http://localhost:8080/DoAnWebCinema/css/employee.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://localhost:8080/DoAnWebCinema/css/detail-test.css">
<link rel="stylesheet"
	href="http://localhost:8080/DoAnWebCinema/css/fix-test.css">
<link rel="stylesheet"
	href="http://localhost:8080/DoAnWebCinema/css/add-test.css">
<!-- <link href="../css/add-employee.css" rel="stylesheet"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">
<script
	src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
</head>
<body>
<!-- <div class="container" style="width:100%";>
<h2> Bootstrap Sort Table </h2> -->
<div class="preloader">
    <div class="lds-ripple">
        <div class="lds-pos"></div>
        <div class="lds-pos"></div>
    </div>
</div>
<!-- ============================================================== -->
<!-- Main wrapper - style you can find in pages.scss -->
<!-- ============================================================== -->
<div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
    data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
    <!-- ============================================================== -->
    <!-- Topbar header - style you can find in pages.scss -->
    <!-- ============================================================== -->
    
    <%@include file="/WEB-INF/views/include/header_admin.jsp"%>
    
    <!-- ============================================================== -->
    <!-- End Topbar header -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    
 	<%@include file="/WEB-INF/views/include/aside.jsp"%> 
    
    <!-- ============================================================== -->
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Page wrapper  -->
    <!-- ============================================================== -->
    <div class="page-wrapper" style="min-height: 250px;">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="page-breadcrumb bg-white">
            <div class="row align-items-center">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Vé Bán Ra</h4>
                </div>

            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Container fluid  -->
        <!-- ============================================================== -->
        <div class="container-fluid">
            <!-- ============================================================== -->
            <!-- Start Page Content -->
            <!-- ============================================================== -->
        <div class="table-responsive">
            <div class="row">
                <div class="col-sm-12">
                    <div class="white-box">
                        <div class="box-header">
                            <div>
                                <h3 class="box-title">Danh Sách Vé Bán Ra</h3>
                            </div>
                        </div>

								<div class="table-responsive">

									<table class="table table-striped table-hover" id="sortTable">
										<thead>
											<tr>
												<th class="border-top-0">STT</th>
												<th class="border-top-0">Mã vé</th>
												<th class="border-top-0">Tên khách hàng</th>
												<th class="border-top-0">Số ghế</th>
												<th class="border-top-0">Ngày bán</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="t" items="${ve}" varStatus="status">
												<tr>
													<td>${status.index +1 }</td>
													<td>${t.maVe }</td>
													<td>${t.khachHang.tenKH }</td>
													<td>${t.soGhe }</td>
													<td>${t.ngayBan }</td>
													<td><a href="#">
															<button class="button" data-bs-toggle="modal"
																data-bs-target="#i-${t.maVe}">
																<i class="fa-solid fa-circle-exclamation"></i>
															</button>
													</a> </td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- Popup info employee -->
								<%-- <c:forEach var="s" items="${ve}">
									<div class="modal fade" id="i-${s.maVe}" tabindex="-1"
										role="dialog" aria-hidden="true">
										<div class="modal-dialog modal-lg modal-dialog-centered">
											<div class="modal-content">
												<div class="modal-header">
													<h4 class="modal-title" id="myCenterModalLabel"></h4>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">
													<div
														class="container tm-mt-big tm-mb-big h-100 align-items-center justify-content-center">
														<div class="row">
															<div class="col-12">
																<div class="tm-bg-primary-dark tm-block tm-block-h-auto">
																	<div class="row tm-edit-product-row">
																		<div class="col-12">
																			<div class="header-add-e">
																				<h3 class="header-name-add-e">Thông Tin Vé</h3>
																			</div>
																			<div class="tieude-add-e">
																				<span class="chitiet-left-add-e">Mã vé:</span> <span
																					class="chitiet-add-e">${s.maVe }</span>
																			</div>
																			<form class="contener-add-e">
																				<div class="body-add-e">
																					<div class="tieude-add-e">
																						<span class="chitiet-left-add-e">Mã nhân
																							viên: </span> <span class="chitiet-add-e">${s.nhanVien.maNV }</span>
																					</div>
																					<div class="tieude-add-e">
																						<span class="chitiet-left-add-e">Tên khách
																							hàng: </span> <span class="chitiet-add-e">${s.khachHang.tenKH }</span>
																					</div>
																					<div class="tieude-add-e">
																						<span class="chitiet-left-add-e">Phim:
																						</span> <span class="chitiet-add-e">${s.dsLichChieu.dsPhim.tenPhim }</span>
																					</div>
																					<div class="tieude-add-e">
																						<span class="chitiet-left-add-e">Số ghế:</span> <span
																							class="chitiet-add-e">${s.soGhe } </span>
																					</div>
																					<div class="tieude-add-e">
																						<span class="chitiet-left-add-e">Phòng:
																						</span> <span class="chitiet-add-e">${s.dsLichChieu.dsPhong.maPhong}</span>
																					</div>
																					<div class="tieude-add-e">
																						<span class="chitiet-left-add-e">Ngày bán:
																						</span> <span class="chitiet-add-e">${s.ngayBan }</span>
																					</div>

																					<div class="tieude-add-e">
																						<span class="chitiet-left-add-e">Loại vé: </span>
																						<span class="chitiet-add-e">${s.loaiVe.tenLV }</span>
																					</div>
																			
																					<div class="tieude-add-e">
																						<span class="chitiet-left-add-e">Giờ chiếu:
																						</span> <span class="chitiet-add-e">${s.dsLichChieu.gioChieu }:00</span>
																					</div>
																					<div class="tieude-btn-add-e"></div>
																				</div>
																			</form>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach> --%>
					<c:forEach var="s" items="${ve}">
				<div class="modal fade" id="i-${s.maVe }" tabindex="-1" role="dialog"
					aria-hidden="true">
					<div class="modal-dialog modal-lg modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-header green-bg-color">
								<h4 class="modal-title text-white" id="myCenterModalLabel">Thông
									tin</h4>
								<button type="button" class="close v-close" data-dismiss="modal"
									aria-hidden="true">×</button>
							</div>
							<div class="modal-body">
								<div class="row py-5 p-4 bg-white rounded shadow-sm">
									<div class="col-lg-12">
										<div
											class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold green-bg-color"
											style="color: #blue !important, background-color: #blue;">Đơn đặt</div>
										<div class="p-4">
											<ul class="list-unstyled mb-4">
												<li
													class="d-flex justify-content-between py-3 border-bottom">
													<strong class="text-muted">Mã Vé</strong><strong>${s.maVe }</strong>
												</li>
												<li
													class="d-flex justify-content-between py-3 border-bottom">
													<strong class="text-muted">Mã Nhân Viên </strong><strong>${s.nhanVien.maNV}</strong>
												</li>
												<li
													class="d-flex justify-content-between py-3 border-bottom">
													<strong class="text-muted">Tên Khách Hàng </strong><strong>${s.khachHang.tenKH }</strong>
												</li>
												<li
													class="d-flex justify-content-between py-3 border-bottom">
													<strong class="text-muted">Tên Phim</strong><strong>${s.dsLichChieu.dsPhim.tenPhim }</strong>
												</li>
												<li
													class="d-flex justify-content-between py-3 border-bottom">
													<strong class="text-muted">Tổng tiền</strong>
													<h5 class="font-weight-bold"
														style="font-weight: 800 !important;">
														<fmt:formatNumber pattern="###,### đ"
															value="${s.loaiVe.gia }" type="currency" />
													</h5>
												</li>
											</ul>

										</div>
									</div>
								</div>

								<div class="px-4 px-lg-0">

									<div class="pb-5">
										<div class="container">
											<div class="row">
												<div
													class="col-lg-12 p-5 mt-5 bg-white rounded shadow-sm mb-5">

													<!-- Shopping cart table -->
													<div class="table-responsive">
														<table class="table">
															<thead>
																<tr>
																	<th scope="col" class="border-0 bg-light">
																		<div class="p-2 px-3 text-uppercase">Ngày bán</div>
																	</th>
																	<th scope="col" class="border-0 bg-light ">
																		<div class="py-2 text-uppercase text-center">Mã Phòng</div>
																	</th>
																	<th scope="col" class="border-0 bg-light">
																		<div class="py-2 text-uppercase text-center">Mã Ghế</div>
																	</th>
																</tr>
															</thead>
															<tbody>
															

																	<tr>
																		<th scope="row" class="border-0">
																			<div class="p-2">
																				<img src="./imgs/${d.sanPham.anh}" alt=""
																					width="70" class="img-fluid rounded shadow-sm">
																				<div class="ml-3 d-inline-block align-middle">
																					<h5 class="mb-0">
																						<a href="#"
																							class="text-dark d-inline-block align-middle">${s.ngayBan}</a>
																					</h5>

																				</div>
																			</div>
																		</th>
																		<td class="align-middle text-center"><strong>${ s.dsLichChieu.dsPhong.maPhong}</strong>
																		</td>
																		<td class="align-middle text-center"><strong>${s.soGhe}
																				</strong></td>
																	</tr>
																


															</tbody>
														</table>
													</div>
													<!-- End -->
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.modal-dialog -->
				</div>
			</c:forEach>
								<!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Page wrapper  -->
    <!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<script>
	$('#sortTable').DataTable();
</script>
<script
		src="http://localhost:8080/DoAnWebCinema/js/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script
		src="http://localhost:8080/DoAnWebCinema/js/bootstrap.bundle.min.js"></script>
	<script
		src="http://localhost:8080/DoAnWebCinema/js/app-style-switcher.js"></script>
	<script
		src="http://localhost:8080/DoAnWebCinema/js/jquery.sparkline.min.js"></script>
	<!--Wave Effects -->
	<script
		src="http://localhost:8080/DoAnWebCinema/js/waves.js"></script>
	<!--Menu sidebar -->
	<script
		src="http://localhost:8080/DoAnWebCinema/js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script
		src="http://localhost:8080/DoAnWebCinema/js/custom.js"></script>
	<!--This page JavaScript -->
	<!--chartis chart-->
	<script
		src="http://localhost:8080/DoAnWebCinema/js/chartist.min.js"></script>
	<script
		src="http://localhost:8080/DoAnWebCinema/js/chartist-plugin-tooltip.min.js"></script>
	<script
		src="http://localhost:8080/DoAnWebCinema/js/dashboard1.js"></script>
</body>
</html>
