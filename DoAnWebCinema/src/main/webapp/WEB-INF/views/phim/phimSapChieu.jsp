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
    <h3 class="mb-0"><a class="text-white" href="index.html"><i class="fa fa-video-camera col_red me-1"></i>Tứ Trụ Cinema</a></h3>
   </div>
  </div>
  <div class="col-md-5">
   <div class="top_1m">
    <div class="input-group">
				<input type="text" class="form-control bg-black" placeholder="Tìm phim, vé, tin tức...">
				<span class="input-group-btn">
					<button class="btn btn text-white bg_red rounded-0 border-0" type="button">
						 Tìm</button>
				</span>
		</div>
   </div>
  </div>
  <div class="col-md-4">
   		<div class="top_1r text-end mt-1">
			<div>
				<i class="bi bi-person-circle"></i>
				<a href="login.htm"><b>Đăng Nhập</b></a>
				<b> / </b>
				<a href=""><b>Đăng Ký</b></a>
			</div>
   		</div>
  	</div>
 </div>
</div>
</section>	
<section id="header">
<nav class="navbar navbar-expand-md navbar-light" id="navbar_sticky">
  <div class="container">
    <a class="navbar-brand text-white fw-bold" href="index.html"><i class="fa fa-video-camera col_red me-1"></i>TỨ TRỤ CINEMA</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mb-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.html">Trang chủ</a>
        </li>
     	<li class="nav-item">
          <a class="nav-link" href="services.html">Đặt vé ngay</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Phim
          </a>
          <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item border-0" href="blog_detail.html">Phim đang chiếu</a></li>
            <li><a class="dropdown-item" href="phimSapChieu.htm">Phim sắp chiếu</a></li>
            <li><a class="dropdown-item border-0" href="blog_detail.html">Phim chiếu sớm</a></li>
          </ul>
        </li>
		<li class="nav-item">
          <a class="nav-link" href="gioiThieu.jsp">Giới thiệu</a>
        </li>
		<li class="nav-item">
          <a class="nav-link" href="team.html">Liên hệ</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</section>

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
			        <a href="#home" data-bs-toggle="tab" aria-expanded="false" class="nav-link active">
			            <span class="d-md-block">PHIM ĐANG CHIẾU</span>
			        </a>
			    </li>
			    <li class="nav-item">
			        <a href="#profile" data-bs-toggle="tab" aria-expanded="true" class="nav-link">
			            <span class="d-md-block">PHIM SẮP CHIẾU</span>
			        </a>
			    </li>
			    <li class="nav-item">
			        <a href="#settings" data-bs-toggle="tab" aria-expanded="false" class="nav-link">
			            <span class="d-md-block">PHIM CHIẾU SỚM</span>
			        </a>
			    </li>
		  </ul>
	 </div>
 <div class="popular_2 row mt-4">
   <div class="tab-content">
		<div class="tab-pane active" id="home">
		<div class="popular_2i row">
		  <c:forEach var="phim" items="${phimList}" varStatus="status" begin="0" end="9">
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
		              <h6 class="mb-0"><a class="button" href="#"> Đặt vé ngay</a></h6>
		            </div>
		          </div>
		        </div>
		      </div>
		      </c:forEach>
		    </div>
		</div>

    <div class="tab-pane" id="profile">
    <div class="popular_2i row">
        <c:forEach var="phim" items="${phimList}" varStatus="status" begin="0" end="9">
            <div class="col-md-6">
                <div class="popular_2i1 row">
                    <div class="col-md-4 col-4">
                        <div class="popular_2i1lm position-relative clearfix">
                            <div class="popular_2i1lm1 clearfix">
                                <div class="grid"><figure class="effect-jazz mb-0">
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
                            <h6 class="mb-0"><a class="button" href="#"> Đặt vé ngay</a></h6>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

    <div class="tab-pane" id="settings">
    <div class="popular_2i row">
        <c:forEach var="phim" items="${phimList}" varStatus="status" begin="0" end="9">
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
                            <h6 class="mb-0"><a class="button" href="#"> Đặt vé ngay</a></h6>
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
   </body>