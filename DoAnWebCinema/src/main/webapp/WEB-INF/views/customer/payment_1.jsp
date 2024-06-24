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
  <title>Thanh Toán</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="http://localhost:8080/DoAnWebCinema/css/style_payment.css">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="stylesheet" href="http://localhost:8080/DoAnWebCinema/fontawesome-pro-6.1.1-web/css/all.min.css" />
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
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
<!---->
  <div class="main">

    <!-- Tab items -->
    <div class="tabs">
      <!-- <div class="tab-item active">
        <span class="selected-ticket">1. Chọn Vé</span>
      </div> -->
      <div class="tab-item" id="tab-item-1">
        <span class="selected-ticket" id="tab-item-1">1. Chọn Vé</span>
      </div>
      <div class="tab-item active" id="tab-item-2">
        <span class="selected-ticket">2. Thanh Toán</span>
      </div>
      <div class="tab-item" id="tab-item-3">
        <span class="selected-ticket">3. Xác nhận</span>
      </div>
      <div class="line"></div>
    </div>

    <!-- Tab content -->
    <div class="tab-content">
      

      <div class="tab-pane-show " id="tab-pane-1">
        <div class="row" style="border-radius: 5px ;">
          <div class="col-md-4 order-md-2 mb-4">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
              <span class="text-muted">Vé Của Bạn</span>
              
            </h4>
            <ul class="list-group mb-3">
              <li class="list-group-item d-flex justify-content-between lh-condensed">
                <div>
                  <h6 class="my-0">Phim</h6>
                  <small class="text-muted">${lc.dsPhim.tenPhim }</small>
                </div>
                
              </li>
              <li class="list-group-item d-flex justify-content-between lh-condensed">
                <div>
                  <h6 class="my-0">Phòng</h6>
                  <small class="text-muted">${lc.dsPhong.maPhong }</small>
                </div>
          
              </li>
              <li class="list-group-item d-flex justify-content-between lh-condensed">
                <div>
                  <h6 class="my-0">Số Ghế</h6>
                  <small class="text-muted">${soGhe }</small>
                </div>
      
              </li>
              <li class="list-group-item d-flex justify-content-between bg-light">
                <div class="text-success">
                  <h6 class="my-0">Lịch Chiếu</h6>
                  <small>${lc.gioChieu }:00 (${lc.ngayChieu })</small>
                </div>

              </li>
              <li class="list-group-item d-flex justify-content-between">
                <span>Giá</span>
                <strong>${lv.gia }</strong>
              </li>
            </ul>


          </div>
          <div class="col-md-8 order-md-1">
            <h4 class="mb-3" style="color: 
            #eeede9">Thanh Toán</h4>
            <form class="needs-validation" novalidate id="form-payment">
              <div class="row">

                <div class="col-md-6 mb-3">
                </div>
              </div>

              <div class="mb-3">
                <label for="username" style="color: 
                #eeede9">Tên</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text">@</span>
                  </div>
                  <input type="text" class="form-control" id="username" placeholder="Tên" value="${user.tenKH}" readonly>
                  <div class="invalid-feedback" style="width: 100%;" value="">
                    Your username is required.
                  </div>
                </div>
              </div>

              <div class="mb-3">
                <label for="email" style="color: 
                #eeede9">Email <span class="text-muted"></span></label>
                <input type="email" class="form-control" id="email" placeholder="...@gmail.com" value="${user.dstaikhoan.email }" readonly>
                <div class="invalid-feedback">
                  Please enter a valid email address for shipping updates.
                </div>
              </div>



              <div class="mb-3">
                <label for="address2" style="color: 
                #eeede9">Số Điện Thoại<span class="text-muted">(Optional)</span></label>
                <input type="text" class="form-control" id="address2" placeholder="Apartment or suite" value="${user.soDT }" readonly>
              </div>
              <div class="mb-3">
                <label for="address2" style="color: 
                #eeede9">Địa Chỉ<span class="text-muted">(Optional)</span></label>
                <input type="text" class="form-control" id="address2" placeholder="Apartment or suite" value="${user.diaChi }" readonly>
              </div>




              <h4 class="mb-3" style="color: #fff;">Thanh Toán</h4>

              <div class="d-block my-3">
                <div class="custom-control custom-radio" style="padding-left: 20px;">
                  <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                  <label class="custom-control-label" for="credit" style="color: #fff;">MoMo</label>
                </div>
                <!--<div class="custom-control custom-radio" style="padding-left: 20px;">
                  <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
                  <label class="custom-control-label" for="debit" style="color: #fff;">Tiền Mặt</label>
                </div>-->
                <div class="custom-control custom-radio" style="padding-left: 20px;">
                  <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required>
                  <label class="custom-control-label" for="paypal" style="color: #fff;">ZaLoPay</label>
                </div>
              </div>
              
              <!-- <hr class="mb-4"> -->
             

            </form>
             <div class="btn-trangthai" style="margin-left:190px; display: flex;">
              <form action="/DoAnWebCinema/customer/payment/${lc.dsPhim.maPhim}/${lc.maSC}.htm">
              	<button class="btn btn-primary btn-lg btn-block" type="submit"
                  style="background:#e01027 ; color: #fff; border: none; cursor: pointer">Hủy Đặt Vé</button>
              </form>
                
               <form action="/DoAnWebCinema/customer/payment_2/${lc.maSC}/${soGhe}.htm">
               		<button type="submit" class="btn btn-primary btn-lg btn-block" id="btn-continue1"
                  style="background:#5eb742 ;  color: #fff; border: none; margin-left: 5px; cursor: pointer">Thanh
                  Toán</button>
               </form>
                
              </div>
            <!-- <button class="btn-continue" id="btn-continue1">Tiep tuc</button> -->
          </div>

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


  <!--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
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