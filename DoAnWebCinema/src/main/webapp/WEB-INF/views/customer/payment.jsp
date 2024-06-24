<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Đặt Ghế</title>
  <link rel="stylesheet" href="http://localhost:8080/DoAnWebCinema/css/bootstrap.min.css">
  <link rel="stylesheet" href="http://localhost:8080/DoAnWebCinema/css/style_payment.css">
  <link rel="stylesheet" href="http://localhost:8080/DoAnWebCinema/fonts/css/all.min.css" />
	<base href="${pageContext.servletContext.contextPath}/">
	<link rel="icon" type="images/png" href="images/logocinema.png">
	<link href="css/font-awesome.min.css" rel="stylesheet" >
	<link href="css/global.css" rel="stylesheet">
	<link href="css/index.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Rajdhani&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	<script src="js/bootstrap.bundle.min.js"></script>
  	<style>
  		.container1
  		{
  			width: 100%;
  			display: grid;
  			grid-template-columns: auto auto auto auto auto auto auto auto;
  			grid-gap: 10px 10px;
  		}
  		.dropdown:hover .dropdown-menu {
			display: block;
			margin-top: 0;
		}
  	</style>
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
  <div class="main">
 
    <!-- Tab items -->
    <div class="tabs">
      <!-- <div class="tab-item active">
        <span class="selected-ticket">1. Chọn Vé</span>
      </div> -->
      <div class="tab-item active" id="tab-item-1">
        <span class="selected-ticket" id="tab-item-1">1. Chọn Vé</span>
      </div>
      <div class="tab-item" id="tab-item-2">
        <span class="selected-ticket">2. Thanh Toán</span>
      </div>
      <div class="tab-item" id="tab-item-3">
        <span class="selected-ticket">3. Xác nhận</span>
      </div>
      <div class="line"></div>
    </div>

    <!-- Tab content -->
    <div class="tab-content">
      <div class="tab-pane active" id="tab-pane-1">
        <div class="info-film">
          <div class="info-film-right">
            <img style="width: 200px;" class="movie-poster"
              src="${phim.linkAnh}"
              alt="">
            <div class="detail-movie-poster">
              <h4 style="color: 
                #6ac441;" class="movie-name">${phim.tenPhim }</h4>
              <h5 style="color: #fff;">Lịch Chiếu</h5>
              <h6 style="color: #fff;">${lc.gioChieu}:00 (${lc.ngayChieu}) </h6>
            </div>
          </div>
          <br>
          <br>
          <h3 style="color: #6ac441; font-weight: 300;">CHỌN GHẾ</h3>
          <br>
          <br>
          <p class="p-notify">
            Vui lòng chọn ghế trong sơ đồ ghế phía dưới. Nếu bạn muốn chọn loại ghế khác hoặc thay đổi
            số lượng vé <br> muốn mua vui lòng nhấp vào <b style="color: #6ac441; font-weight:200;">Bước 1
              "Chọn Vé"</b> ở thanh công cụ bên trên để quay trở lại màn hình chọn.

          </p>

          <!--<button class="btn-continue" id="btn-continue">Tiếp tục</button>-->

        </div>
        <div class="movie-container">

          <ul class="showcase">
            <li>
              <div class="seat"></div>
              <small style="color: #fff;">Ghế Trống</small>
            </li>
            <li>
              <div class="seat selected"></div>
              <small style="color: #fff;">Ghế Bạn Chọn</small>
            </li>
            <li>
              <div class="seat occupied"></div>
              <small style="color: #fff;">Ghế Đã Chọn</small>
            </li>
          </ul>
          <select id="movie">
            <option value="${lv.gia }">Giá Vé (Rs. ${lv.gia } VND)</option>
            <!-- <option value="200">Kabir Singh (Rs. 200)</option>
            <option value="150">Duniyadari (Rs. 150)</option>
            <option value="100">Natsamrat (Rs. 100)</option> -->
          </select>



          <div class="container1">
          
				<c:forEach var="s" items="${sl}">
					
						<c:choose>
							<c:when test="${s.stt == 'Trong' }">
								<a href="/DoAnWebCinema/customer/payment_1/${lc.maSC}/${s.num}.htm">
								<div class="seat">
                					<span class="name-seat">${s.num }</span>
              					</div>
              					</a>	
							</c:when>
							<c:when test="${s.stt == 'Da dat' }">
								<div class="seat occupied">
                					<span class="name-seat">${s.num }</span>
              					</div>	
							</c:when>
							<c:when test="${s.stt == 'Cua ban' }">
								<div class="seat selected">
                					<span class="name-seat">${s.num }</span>
              					</div>	
							</c:when>
						</c:choose>
					
				</c:forEach>
				</div>	

            <p class="text" style="color: #fff;">
              Tổng ghế chọn <span id="count">0</span> - Tổng tiền <span id="total">0</span>
            </p>
          </div>
        </div>
    </div>
</div>



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
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script>window.jQuery || document.write('<script src="https://getbootstrap.com/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
  <script src="https://getbootstrap.com/docs/4.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o"
    crossorigin="anonymous"></script>
  <script src="https://getbootstrap.com/docs/4.3/examples/checkout/form-validation.js"></script>
  <!--<script src="/DoAnWebCinema/js/payment.js"></script>-->
</body>

</html>