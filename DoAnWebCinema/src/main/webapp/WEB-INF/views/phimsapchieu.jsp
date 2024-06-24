 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>TỨ TRỤ CINEMA</title>
	<base href="${pageContext.servletContext.contextPath}/">
	<link rel="icon" type="images/png" href="images/logocinema.png">
	<link href="css/bootstrap.min.css" rel="stylesheet" >
	<link href="css/font-awesome.min.css" rel="stylesheet" >
	<link href="css/global.css" rel="stylesheet">
	<link href="css/index.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Rajdhani&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	<script src="js/bootstrap.bundle.min.js"></script>
</head>
<body>

<section id="top">
<div class="container">
 <div class="row top_1">
	  <div class="col-md-3">
		   <div class="top_1l pt-1">
		    	<h3 class="mb-0"><a class="text-white" href="phim/trangchu.htm"><i class="fa fa-video-camera col_red me-1"></i>Tứ Trụ Cinema</a></h3>
		   </div>
	  </div>
 	 <div class="col-md-5">
   	 	<div class="top_1m">
    		<form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" action="/DoAnWebCinema/search.htm">
					<input type="search" class="form-control form-control-dark"
						placeholder="Tìm kiếm..." aria-label="Search" name="search">
				</form>
        </div>
    </div>
     <div class="col-md-4">
    <div class="top_1r text-end mt-1">
        <c:choose>
            <c:when test="${user.tenKH != null}">
                <p><a href="customer/account.htm"><strong>${user.tenKH}</strong></a></p>
            </c:when>
            <c:otherwise>
                <div>
                    <i class="bi bi-person-circle"></i>
                    <a href="login.htm"><b>Đăng Nhập</b></a>
                    <b> / </b>
                    <a href="register.htm"><b>Đăng Ký</b></a>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</div>
 </div>
</div>
</section>

<section id="header">
<nav class="navbar navbar-expand-md navbar-light" id="navbar_sticky">
  <div class="container">
    <a class="navbar-brand text-white fw-bold" href="phim/trangchu.htm"><i class="fa fa-video-camera col_red me-1"></i>TỨ TRỤ CINEMA</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mb-0">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="phim/trangchu.htm">Trang chủ</a>
        </li>
     	<li class="nav-item">
          <a id="dat-ve-link" class="nav-link" href="#">Đặt vé ngay</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link active" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Phim
          </a>
		<ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
		    <li><a class="dropdown-item" href="phim/phimsapchieu.htm?tab=home">Phim đang chiếu</a></li>
		    <li><a class="dropdown-item border-0" href="phim/phimsapchieu.htm?tab=profile">Phim sắp chiếu</a></li>
		</ul>
        </li>
		<li class="nav-item">
          <a class="nav-link" href="gioithieu.htm">Giới thiệu</a>
        </li>
		<li class="nav-item">
          <a class="nav-link" href="lienhe.htm">Liên hệ</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</section>

<%-- <%@ page import="java.util.*" %>
<%
    String tab = (String) request.getAttribute("tab");
    if (tab == null || (!tab.equals("home") && !tab.equals("profile"))) {
        tab = "home"; // mặc định là tab "Phim đang chiếu"
    }
%> --%>

<section id="popular" class="pt-4 pb-5 bg_grey">
    <div class="container">
        <div class="row trend_1">
            <div class="col-md-12">
                <div class="trend_1l">
                    <h4 class="mb-0"><i class="fa fa-youtube-play align-middle col_red me-1"></i> Danh mục <span class="col_red">Phim</span></h4>
                </div>
            </div>
        </div>
        <div class="row popular_1 mt-4">
            <ul class="nav nav-tabs  border-0 mb-0">
                <li class="nav-item">
                    <a id="home-tab" href="#home" data-bs-toggle="tab" aria-expanded="false" class="nav-link ${tab.equals('home') ? 'active' : ''}">
                        <span class="d-md-block">PHIM ĐANG CHIẾU</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a id="profile-tab" href="#profile" data-bs-toggle="tab" aria-expanded="true" class="nav-link ${tab.equals('profile') ? 'active' : ''}">
                        <span class="d-md-block">PHIM SẮP CHIẾU</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="popular_2 row mt-4">
            <div class="tab-content">
                <div class="tab-pane ${tab.equals('home') ? 'active' : ''}" id="home">
                    <div class="popular_2i row">
                        <c:forEach var="phim" items="${phimListDangChieu}" varStatus="status">
                            <div class="col-md-6">
                                <div class="popular_2i1 row">
                                    <div class="col-md-4 col-4">
                                        <div class="popular_2i1lm position-relative clearfix">
                                            <div class="popular_2i1lm1 clearfix">
                                                <div class="grid">
                                                    <figure class="effect-jazz mb-0">
                                                        <a href="#"><img src="${phim.getLinkAnh()}" class="w-100" alt="img25"></a>
                                                    </figure>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-8">
                                        <div class="popular_2i1r">
                                            <h5><a class="col_red" href="#"></a></h5>
                                            <h6></h6>
                                            <h6> ${phim.getDiem()}/10 Imdb<span class="ms-2"><i class="fa fa-star col_red me-1"></i></span> Năm : ${phim.getNamSX()} <span class="ms-2">Thời lượng: ${phim.getThoiLuong()}m</span></h6>
                                            <h4 class="col_red">${phim.getTenPhim()}</h4>
                                            <p>${phim.getMoTa()}</p>
                                            <h6 class="mb-0"><a class="button" href="/DoAnWebCinema/datve/${currentDate}.htm"> Đặt vé ngay</a></h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>

                <div class="tab-pane ${tab.equals('profile') ? 'active' : ''}" id="profile">
                    <div class="popular_2i row">
                        <c:forEach var="phim" items="${phimListSapChieu}" varStatus="status">
                            <div class="col-md-6">
                                <div class="popular_2i1 row">
                                    <div class="col-md-4 col-4">
                                        <div class="popular_2i1lm position-relative clearfix">
                                            <div class="popular_2i1lm1 clearfix">
                                                <div class="grid">
                                                    <figure class="effect-jazz mb-0">
                                                        <a href="#"><img src="${phim.getLinkAnh()}" class="w-100" alt="img${status.index + 1}"></a>
                                                    </figure>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-8">
                                        <div class="popular_2i1r">
                                            <h5><a class="col_red" href="#"></a></h5>
                                            <h6></h6>
                                            <h6> ${phim.getDiem()}/10 Imdb<span class="ms-2"><i class="fa fa-star col_red me-1"></i></span> Năm : ${phim.getNamSX()} <span class="ms-2">Thời lượng: ${phim.getThoiLuong()}m</span></h6>
                                            <h4 class="col_red">${phim.getTenPhim()}</h4>
                                            <p>${phim.getMoTa()}</p>
                                            <b><p>Ngày khởi chiếu: ${phim.getNgayKhoiChieu()}</b>
                                            <h6 class="mb-0"><a class="button" href="#"> Xem Trailer</a></h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="footer">
		<div class="footer_m clearfix">
			<div class="container">
				<div class="row footer_1">
					<div class="col-md-4">
						<div class="footer_1i">
							<h3>
								<a class="text-white" href="index.html"><i
									class="fa fa-video-camera col_red me-1"></i> <span
									class="col_red">Liên hệ</span></a>
							</h3>
							<p class="mt-3">Tứ Trụ. Nơi hội tụ cảm xúc.</p>
							<h6 class="fw-normal">
								<i class="fa fa-map-marker fs-5 align-middle col_red me-1"></i>97
								Đ. Man Thiện, Hiệp Phú, Thủ Đức, Thành phố Hồ Chí Minh, Vietnam
							</h6>
							<h6 class="fw-normal mt-3">
								<i class="fa fa-envelope fs-5 align-middle col_red me-1"></i>
								tutrucinema@gmail.com
							</h6>
							<h6 class="fw-normal mt-3 mb-0">
								<i class="fa fa-phone fs-5 align-middle col_red me-1"></i> 1900
								0099
							</h6>
						</div>
					</div>
					<div class="col-md-4">
						<div class="footer_1i">
							<h4>
								<span class="col_red">Bản tin</span>
							</h4>
							<p class="mt-3">Đăng ký danh sách bản tin của chúng tôi để
								nhận tin tức và cập nhật mới nhất từ chúng tôi</p>
							<div class="input-group">
								<input type="text" class="form-control bg-black"
									placeholder="Email"> <span class="input-group-btn">
									<button class="btn btn text-white bg_red rounded-0 border-0"
										type="button">Đăng kí</button>
								</span>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="footer_1i text-center">
							<h4 class="mb-4">
								<span class="col_red">Kết nối với chúng tôi</span>
							</h4>
							<div class="footer_1i1">
								<ul class="social-network social-square mb-0 mt-4">
									<li class=""><a
										href="https://www.facebook.com/profile.php?id=100018102729044"><img
											src="images/facebook.png" height="50" title="Facebook"
											alt="Facebook"></a></li>
									<li class=""><a href=""><img
											src="images/instagram.png" height="50" title="Instagram"
											alt="Instagram"></a></li>
									<li class=""><a href=""><img
											src="images/tiktok.png" height="50" title="Tiktok"
											alt="Tiktok"></a></li>
									<li class=""><a href=""><img
											src="images/youtube.png" height="50" title="Youtube"
											alt="Youtube"></a></li>
								</ul>
							</div>
							<div class="footer_1i1 mt-3">
								<a
									href="http://online.gov.vn/HomePage/CustomWebsiteDisplay.aspx?DocId=30278"
									target="_blank"> <img src="images/bocongthuong.png"
									height="80" alt="abc">
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

<script>
window.onscroll = function() {myFunction()};

var navbar_sticky = document.getElementById("navbar_sticky");
var sticky = navbar_sticky.offsetTop;
var navbar_height = document.querySelector('.navbar').offsetHeight;

function myFunction() {
  if (window.pageYOffset >= sticky + navbar_height) {
    navbar_sticky.classList.add("sticky")
	document.body.style.paddingTop = navbar_height + 'px';
  } else {
    navbar_sticky.classList.remove("sticky");
	document.body.style.paddingTop = '0'
  }
}
</script>
<script>
        // Get the current date
        var curDate = new Date();
        var date = curDate.getDate();
        var month = curDate.getMonth() + 1; // Months are zero-based
        var year = curDate.getFullYear();

        // Format the date as yyyy-mm-dd
        var formattedDate = year + '-' + (month < 10 ? '0' + month : month) + '-' + (date < 10 ? '0' + date : date);

        // Update the href attribute of the link
        var link = document.getElementById('dat-ve-link');
        link.href = '/DoAnWebCinema/datve/' + formattedDate + '.htm';
</script>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        // Lấy giá trị của tham số 'tab' từ URL
        const urlParams = new URLSearchParams(window.location.search);
        const tab = urlParams.get('tab');

        // Nếu tab là 'profile', thêm class 'active' cho tab "Phim sắp chiếu", ngược lại thì tab "Phim đang chiếu" là active
        if (tab === 'profile') {
            document.getElementById('profile-tab').classList.add('active');
        } else {
            document.getElementById('home-tab').classList.add('active');
        }
    });
</script>


   </body>