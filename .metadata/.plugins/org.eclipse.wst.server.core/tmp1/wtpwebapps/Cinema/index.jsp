<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>TỨ TRỤ CINEMA</title>
	<base href="${pageContext.servletContext.contextPath}/">
	<link rel="icon" type="images/png" href="images/logocinema.png">
	<link rel="stylesheet" href="css/index.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
	<head>
	<div class="head-page">
		<img id= "img_logo" src="images/logo.png" width=10% type="images/png">
		<input type="text" id="searchInput" placeholder="Tìm phim, rạp, vé, tin tức,...">
		<i class="bi bi-search"></i>
		<div id="id1">
			<i class="bi bi-geo-alt-fill"></i>
			<a href=""><b>Chọn rạp</b></a>
			<i class="bi bi-person-circle"></i>
			<a href="login.htm"><b>Đăng Nhập</b></a>
			<b> / </b>
			<a href=""><b>Đăng Ký</b></a>
		</div>
	</div>
	<img id="img_poster" src="images/poster.png" type="images/png">
	</head>
	<nav class="navbar-page">
		<ul>
			<li><div><i class="bi bi-house-fill"></i><a><b>TRANG CHỦ</b></a></div></li>
			<li class="dropdown">
				<div>
					<i class="bi bi-film"></i><a><b>PHIM</b></a>
                        <div class="dropdown-content">
                            <a href=""><b>PHIM ĐANG CHIẾU</b></a>
                            <a href=""><b>PHIM SẮP CHIẾU</b></a>
                            <a href=""><b>PHIM CHIẾU SỚM</b></a>
                        </div>
				</div>
			</li>
			<li><div><i class="bi bi-ticket-fill"></i><a><b>ĐẶT VÉ NGAY</b></a></div></li>
			<li><div><i class="bi bi-info-circle-fill"></i><a><b>GIỚI THIỆU</b></a></div></li>
			<li><div><i class="bi bi-question-circle-fill"></i><a><b>TIN TỨC</b></a></div></li>
			<li><div><i class="bi bi-telephone-fill"></i><a><b>LIÊN HỆ</b></a></div></li>
		</ul>
	</nav>
</body>
</html>