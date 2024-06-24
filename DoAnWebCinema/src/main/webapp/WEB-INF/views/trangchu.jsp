<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="custom" uri="http://example.com/custom" %>
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
                <p><i class="bi bi-person-circle"></i><span> </span><a href="customer/account.htm"><strong>${user.tenKH}</strong></a></p>
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
          <a class="nav-link active" aria-current="page" href="phim/trangchu.htm">Trang chủ</a>
        </li>
     	<li class="nav-item">
          <a id="dat-ve-link" class="nav-link" href="#">Đặt vé ngay</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
<section id="center" class="center_home">
 	<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  	<div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2" class="" aria-current="true"></button>
	    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  	</div>
<div class="carousel-inner">
    <c:forEach var="phim" items="${phimListHot}" varStatus="status" begin="0" end="2">
        <div class="carousel-item ${status.index == 0 ? 'active' : ''}">
            <img src="${phim.getLinkAnh()}" class="d-block w-100" alt="...">
            <div class="carousel-caption d-md-block">
                <h1 class="font_60">${phim.getTenPhim()}</h1>
                <h6 class="mt-3">
            	<c:choose>
				<c:when test="${phim.getDiem() < 5}">
                    <span class="col_red me-3">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </span>
				</c:when>
				<c:when test="${phim.getDiem() < 7}">
                    <span class="col_red me-3">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </span>
				</c:when>
				<c:when test="${phim.getDiem() < 8.5}">
                    <span class="col_red me-3">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </span>
				</c:when>
				<c:when test="${phim.getDiem() < 9}">
                    <span class="col_red me-3">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                    </span>
				</c:when>
				<c:otherwise>
                    <span class="col_red me-3">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </span>
				</c:otherwise>
				</c:choose>
                    ${phim.getDiem()}/10 (Imdb)      Year : ${phim.getNamSX()}
                    <a class="bg_red p-2 pe-4 ps-4 ms-3 text-white d-inline-block" href="${phim.getLinkIMDb()}" target="_blank">Chi tiết</a>
                </h6>
                <p class="mt-3">${phim.getMoTa()}</p>
                <p class="mb-2"><span class="col_red me-1 fw-bold">Đạo diễn:</span>${phim.getDaoDien()}</p>
                <p class="mb-2"><span class="col_red me-1 fw-bold">Diễn viên:</span>${phim.getDienVien()}</p>
                <p class="mb-2"><span class="col_red me-1 fw-bold">Thể loại:</span><c:forEach var="tl" items="${phim.theLoaiS}">${tl.chiTietTL.tenTL}</c:forEach></p>
                <p><span class="col_red me-1 fw-bold">Thời gian:</span> ${phim.getThoiLuong()}m</p>
                <h6 class="mt-4"><a class="button" href="${phim.getLinkTrailer()}" target="_blank"><i class="fa fa-play-circle align-middle me-1"></i> Xem Trailer</a></h6>
            </div>
        </div>
    </c:forEach>
</div>

  
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
  </button>
</div>
</section>

<section id="trend" class="pt-4 pb-5">
    <div class="container">
        <div class="row trend_1">
            <div class="col-md-6 col-6">
                <div class="trend_1l">
                    <h4 class="mb-0">
                        <i class="fa fa-youtube-play align-middle col_red me-1"></i>
                        <span class="col_red">Phim</span> mới nhất
                    </h4>
                </div>
            </div>
            <div class="col-md-6 col-6">
                <div class="trend_1r text-end">
                    <h6 class="mb-0"><a class="button" href="phim/phimsapchieu.htm?tab=home">Xem tất cả</a></h6>
                </div>
            </div>
        </div>
        <div class="row trend_2 mt-4">
            <div id="carouselExampleCaptions1" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions1" data-bs-slide-to="0" class="active" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions1" data-bs-slide-to="1" aria-label="Slide 2"></button>
                </div>
                <div class="carousel-inner">
                    <c:forEach var="phim" items="${phimListDangChieu}" varStatus="status" begin="0" end="5">
                        <c:if test="${status.index % 3 == 0}">
                            <div class="carousel-item ${status.index == 0 ? 'active' : ''}">
                                <div class="trend_2i row">
                        </c:if>
                                    <div class="col-md-4">
                                        <div class="trend_2im clearfix position-relative">
                                            <div class="trend_2im1 clearfix">
                                                <div class="grid">
                                                    <figure class="effect-jazz mb-0">
                                                        <a href="${phim.getLinkTrailer()}">
                                                            <img src="${phim.getLinkAnh()}" class="w-100" alt="${phim.getTenPhim()}">
                                                        </a>
                                                    </figure>
                                                </div>
                                            </div>
                                            <div class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
                                                <span class="fs-1">
                                                    <a class="col_red" href="${phim.getLinkTrailer()}">
                                                        <i class="fa fa-youtube-play"></i>
                                                    </a>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="trend_2ilast bg_grey p-3 clearfix">
                                            <h5>
                                                <a class="col_red" href="#">${phim.getTenPhim()}</a>
                                            </h5>
										<p class="mb-2">
										    <c:set var="substringResult" value="${custom:safeSubstring(phim.getMoTa(), 100)}" />
										    ${substringResult}...
										</p>
                                            <b><p class="col_red">Đang chiếu tại rạp</p></b>
                                            <span class="col_red">
                                                <c:choose>
                                                    <c:when test="${phim.getDiem() < 5}">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </c:when>
                                                    <c:when test="${phim.getDiem() < 7}">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </c:when>
                                                    <c:when test="${phim.getDiem() < 8.5}">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </c:when>
                                                    <c:when test="${phim.getDiem() < 9}">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-half-o"></i>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </c:otherwise>
                                                </c:choose>
                                            </span>
                                            <p class="mb-0">${phim.getDiem()}/10 IMDb</p>
                                        </div>
                                    </div>
                        <c:if test="${status.index % 3 == 2 || status.last}">
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="upcome" class="pt-4 pb-5">
	<div class="container">
		<div class="row trend_1">
	  		<div class="col-md-6 col-6">
	   			<div class="trend_1l">
	    			<h4 class="mb-0"><i class="fa fa-youtube-play align-middle col_red me-1"></i><span class="col_red">   Sự kiện</span> nổi bật</h4>
	   			</div>
	  		</div>
		 </div>
		 <div class="row trend_2 mt-4">
		    <div id="carouselExampleCaptions1" class="carousel slide" data-bs-ride="carousel">
		    	<div class="carousel-indicators">
				    <button type="button" data-bs-target="#carouselExampleCaptions1" data-bs-slide-to="0" class="active" aria-label="Slide 1"></button>
				    <button type="button" data-bs-target="#carouselExampleCaptions1" data-bs-slide-to="1" aria-label="Slide 2" class="" aria-current="true"></button>
		  		</div>
		  		<div class="carousel-inner">
				    <c:forEach var="sukien" items="${sukienList}" varStatus="status" begin="0" end="5">
				        <c:if test="${status.index % 3 == 0}">
				            <div class="carousel-item ${status.index == 0 ? 'active' : ''}">
				                <div class="trend_2i row">
				        </c:if>
				                    <div class="col-md-4">
				                        <div class="trend_2im clearfix position-relative">
				                            <div class="trend_2im1 clearfix">
				                                <div class="grid">
				                                    <figure class="effect-jazz mb-0">
			                                            <img src="${sukien.getPosterSK()}" class="w-100" alt="${sukien.getTenSK()}">
				                                    </figure>
				                                </div>
				                            </div>
				                        </div>
				                        <div class="trend_2ilast bg_grey p-3 clearfix">
				                            <h5>
				                                <a class="col_red" href="#">${sukien.getTenSK()}</a>
				                            </h5>
				                            <p class="mb-2">
				                                <c:set var="substringResult" value="${custom:safeSubstring(sukien.getMoTaSK(), 50)}" />
				                                <p>${substringResult}... <a href = "sukienDetail.htm?id=${sukien.maSK}"><b>[Xem thêm]</b></a></p>
				                            </p>
				                        </div>
				                    </div>
				        <c:if test="${status.index % 3 == 2 || status.last}">
				                </div>
				            </div>
				        </c:if>
				    </c:forEach>
				</div>
			</div>
</section>

<section id="popular" class="pt-4 pb-5 bg_grey">
	<div class="container">
	 <div class="row trend_1">
	  <div class="col-md-6 col-6">
	   <div class="trend_1l">
	    <h4 class="mb-0"><i class="fa fa-youtube-play align-middle col_red me-1"></i> Danh mục <span class="col_red">Phim</span></h4>
	   </div>
	  </div>
       <div class="col-md-6 col-6">
           <div class="trend_1r text-end">
               <h6 class="mb-0"><a class="button" href="phim/phimsapchieu.htm?tab=home">Xem tất cả</a></h6>
           </div>
       </div>
	 </div>
	 <div class="row popular_1 mt-4">
		   <ul class="nav nav-tabs  border-0 mb-0">
			    <li class="nav-item">
			        <a href="#home" data-bs-toggle="tab" aria-expanded="false" class="nav-link active">
			            <span class="d-md-block">PHIM ĐANG CHIẾU</span>
			        </a>
			    </li>
			    <li class="nav-item">
			        <a href="#profile" data-bs-toggle="tab" aria-expanded="true" class="nav-link">
			            <span class="d-md-block">PHIM SẮP CHIẾU</span>
			        </a>
			    </li>
		  </ul>
	 </div>
 <div class="popular_2 row mt-4">
   <div class="tab-content">
		<div class="tab-pane active" id="home">
		<div class="popular_2i row">
		  <c:forEach var="phim" items="${phimList}" varStatus="status" begin="0" end="3">
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
		              <h6 class="mb-0">
					    <a class="button" href="/DoAnWebCinema/datve/${currentDate}.htm">Đặt vé ngay</a>
					  </h6>
		            </div>
		          </div>
		        </div>
		      </div>
		      </c:forEach>
		    </div>
		</div>

    <div class="tab-pane" id="profile">
    <div class="popular_2i row">
        <c:forEach var="phim" items="${phimListSapChieu}" varStatus="status" begin="0" end="3">
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
                            <b><p>Ngày khởi chiếu: ${phim.getNgayKhoiChieu()}</p></b>
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


<section id="play">
<div class="play_m clearfix">
 <div class="container">
 <div class="row trend_1">
  <div class="col-md-12">
   <div class="trend_1l">
    <h4 class="mb-0"><i class="fa fa-youtube-play align-middle col_red me-1"></i> Top <span class="col_red">1</span> phòng vé</h4>
   </div>
  </div>
 </div>
 <div class="play2 row mt-4">
  <div class="col-md-4 p-0">
   <div class="play2l">
     <div class="grid clearfix">
				  <figure class="effect-jazz mb-0">
				  <div class = "image-container">
				  <a href="#"><img src="${phimListHot[0].getLinkAnh()}" height="515" class="w-100"  alt="abc"></a>
				  </div>
				  </figure>
			  </div>
   </div>
  </div>
  <div class="col-md-8 p-0">
   <div class="play2r  bg_grey p-4">
	   <h3><span class="col_red">Phim hot nhất thời điểm hiện tại:</span> ${phimListHot[0].getTenPhim()}</span><br></h3>
      <h5 class="mt-3">Nội dung</h5>
	  <hr class="line">
	  <p class="mt-3">${phimListHot[0].getMoTa()}</p>
	  <div class="play2ri row mt-4">
	   <div class="col-md-6">
	    <div class="play2ril">
		 <h6 class="fw-normal">
Thời gian: <span class="pull-right">${phimListHot[0].getThoiLuong()}m</span></h6>
         <hr class="hr_1">
		  <h6 class="fw-normal">
Thể loại: <span class="pull-right"><c:forEach var="tl" items="${phimListHot[0].theLoaiS}">${tl.chiTietTL.tenTL}</c:forEach></span></h6>
         <hr class="hr_1">
		 <h6 class="fw-normal">
Đạo diễn: <span class="pull-right">${phimListHot[0].getDaoDien()}</span></h6>
         <hr class="hr_1">
		  <h6 class="fw-normal">
Diễn viên: <span class="pull-right">${phimListHot[0].getDienVien()}</span></h6>
         <hr class="hr_1">
		 <h6 class="fw-normal">
Năm sản xuất: <span class="pull-right">${phimListHot[0].getNamSX()}</span></h6>
         <hr class="hr_1 mb-0">
		</div>
	   </div>
	   <div class="col-md-6">
	    <div class="play2rir">
		 <h6 class="fw-normal">Imdb - ${phimListHot[0].getDiem()}</h6>
         <div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 92%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
</div>
          <h6 class="fw-normal mt-3">Chê phim - 7.3</h6>
         <div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 73%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
</div>
          <h6 class="fw-normal mt-3">Phê Phim - 9.0</h6>
         <div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 90%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
</div>
          <h6 class="fw-normal mt-3">Mình thử các bạn đỡ phải thử - 8.3</h6>
         <div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 83%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
</div>
        <h6 class="fw-normal mt-3">W2W Movie - 7.9</h6>
         <div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 79%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
</div>
		</div>
	   </div>
	  </div>
   </div>
  </div>
 </div>
</div>
</div>
</section>

<section id="choice" class="pt-4 pb-5">
<div class="container">
 <div class="row trend_1">
  <div class="col-md-6 col-6">
   <div class="trend_1l">
    <h4 class="mb-0"><i class="fa fa-youtube-play align-middle col_red me-1"></i> Đạo diễn  <span class="col_red">nghìn tỉ</span></h4>
   </div>
  </div>
  <div class="col-md-6 col-6">
   <div class="trend_1r text-end">
   </div>
  </div>
 </div>
 <div class="row trend_2 mt-4">
   <div id="carouselExampleCaptions3" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions3" data-bs-slide-to="0" class="active" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions3" data-bs-slide-to="1" aria-label="Slide 2" class="" aria-current="true"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <div class="trend_2i row">
		<div class="col-md-4">
		  <div class="trend_2im clearfix position-relative">
		   <div class="trend_2im1 clearfix">
		     <div class="grid">
		  <figure class="effect-jazz mb-0">
			<a href="#"><img src="images/tranthanh.png" class="w-100" alt="img25"></a>
		  </figure>
	  </div>
		   </div>
		   <div class="trend_2im2 clearfix  position-absolute w-100 top-0">
		     <h5><a class="col_red" href="#">Trấn Thành</a></h5>
			<span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
		   </div>
		  </div>
		    
		</div>
		<div class="col-md-4">
		  <div class="trend_2im clearfix position-relative">
		   <div class="trend_2im1 clearfix">
		     <div class="grid">
		  <figure class="effect-jazz mb-0">
			<a href="#"><img src="images/lyhai.jpg" class="w-100" alt="img25"></a>
		  </figure>
	  </div>
		   </div>
		   <div class="trend_2im2 clearfix  position-absolute w-100 top-0">
		     <h5><a class="col_red" href="#">Lý Hải</a></h5>
			<span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
		   </div>
		  </div>
		    
		</div>
		
		<div class="col-md-4">
		  <div class="trend_2im clearfix position-relative">
		   <div class="trend_2im1 clearfix">
		     <div class="grid">
		  <figure class="effect-jazz mb-0">
			<a href="#"><img src="images/vothanhhoa.png" class="w-100" alt="img25"></a>
		  </figure>
	  </div>
		   </div>
		   <div class="trend_2im2 clearfix  position-absolute w-100 top-0">
		     <h5><a class="col_red" href="#">Võ Thanh Hòa</a></h5>
			<span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
		   </div>
		  </div>
		    
		</div>
		
	  </div>
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
      <h3><a class="text-white" href="lienhe.htm"><i class="fa fa-video-camera col_red me-1"></i> <span class="col_red">Liên hệ</span></a></h3>
       <p class="mt-3">Tứ Trụ. Nơi hội tụ cảm xúc.</p>
       <h6 class="fw-normal"><i class="fa fa-map-marker fs-5 align-middle col_red me-1"></i>97 Đ. Man Thiện, Hiệp Phú, Thủ Đức, Thành phố Hồ Chí Minh, Vietnam</h6>
       <h6 class="fw-normal mt-3"><i class="fa fa-envelope fs-5 align-middle col_red me-1"></i> tutrucinema@gmail.com</h6>
       <h6 class="fw-normal mt-3 mb-0"><i class="fa fa-phone fs-5 align-middle col_red me-1"></i>  1900 0099</h6>
     </div>
    </div>
   <div class="col-md-4">
    <div class="footer_1i">
     <h4><span class="col_red">Bản tin</span></h4>
      <p class="mt-3">Đăng ký danh sách bản tin của chúng tôi để nhận tin tức và cập nhật mới nhất từ chúng tôi</p>
       <div class="input-group">
        <input type="text" class="form-control bg-black" placeholder="Email">
         <span class="input-group-btn">
          <button class="btn btn text-white bg_red rounded-0 border-0" type="button">Đăng kí</button>
         </span>
        </div>
       </div>
      </div>
  <div class="col-md-4">
    <div class="footer_1i text-center">
        <h4 class="mb-4"> <span class="col_red">Kết nối với chúng tôi</span></h4>
        <div class="footer_1i1">
            <ul class="social-network social-square mb-0 mt-4">
                <li class=""><a href="https://www.facebook.com/profile.php?id=100018102729044"><img  src="images/icon-facebook.png" height="50" title="Facebook" alt="Facebook"></a></li>
                <li class=""><a href=""><img  src="images/icon-instagram.png" height="50" title="Instagram" alt="Instagram"></a></li>
                <li class=""><a href=""><img  src="images/icon-tiktok.png" height="50" title="Tiktok" alt="Tiktok"></a></li>
                <li class=""><a href=""><img  src="images/icon-youtube.png" height="50" title="Youtube" alt="Youtube"></a></li>
            </ul>
        </div>
        <div class="footer_1i1 mt-3">
            <a href="http://online.gov.vn/HomePage/CustomWebsiteDisplay.aspx?DocId=30278" target="_blank">
                <img src="images/icon-bocongthuong.png" height="80" alt="abc">
            </a>
        </div>
       </div>
      </div>
     </div>
    </div>
   </div>
</section>

<section id="footer_b" class="pt-3 pb-3 bg_grey">
<div class="container">
   <div class="row footer_1 text-center">
	   <p class="mb-0">© 2024 Tu Tru Cinema. All Rights Reserved</p>
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
</body>

</html>