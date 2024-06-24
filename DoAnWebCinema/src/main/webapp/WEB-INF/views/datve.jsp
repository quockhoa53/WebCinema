<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>TỨ TRỤ CINEMA</title>
    <link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css' />">
	<base href="${pageContext.servletContext.contextPath}/">
	<link rel="icon" type="images/png" href="images/logocinema.png">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/global.css" rel="stylesheet">
	<link href="css/index.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Rajdhani&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	<script src="js/bootstrap.bundle.min.js"></script>
	
   	<style type="text/css">
	    .button-row {
		    display: flex;
		    flex-direction: row;
		    flex-wrap: wrap;
		    gap: 10px;
		}
		.showtimes {
		    width: 100%;
		    display: flex;
		    flex-direction: column;
		    align-items: center;
		}
		
		.showtimes-container {
		    display: flex;
		    justify-content: space-between;
		}
		
		.btn-group {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }
		.btn {
		    margin: 5px;
		    padding: 15px;
		    border-radius: 5px;
		    text-align: center;
		    color: #333;
		    background-color: #f2f2f2;
		    border: none;
		    cursor: pointer;
		    transition: background-color 0.3s ease;
		}
		
		.btn:hover {
		    background-color: #ddd;
		}
		
		.btn.active:hover {
		    background-color: #0056b3;
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
          <a id="dat-ve-link" class="nav-link active" href="#">Đặt vé ngay</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="na32vbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
	<section id="center" class="center_o pt-2 pb-2">
		<div class="container-xl">
			<div class="row center_o1">
				<div class="col-md-5">
					<div class="center_o1l">
						<h2 class="mb-0">Lịch chiếu phim</h2>
					</div>
				</div>
				<div class="col-md-7">
					<div class="center_o1r text-end">
						<h6 class="mb-0 col_red">
							<a href="#">Trang chủ</a> <span class="me-2 ms-2 text-light"><i
								class="fa fa-caret-right align-middle"></i></span>Đặt vé ngay
						</h6>
					</div>
				</div>
			</div>
		</div>   
	</section>
	
	<section id="contact" class="pt-4 pb-4 bg_grey">

    <div class="container-xl">
        <div class="row contact_1 bg_dark pt-5 pb-5">
            <div id="showtimes">
                <div class="showtimes">
                    <div class="showtimes-container">
                        <ul id="showtimes-list" class="btn-group btn-block showtime-dates mb-3"></ul>
                    </div>
                    <h3 style="text-align: center">*Nhấn vào suất chiếu để tiến hành mua vé*</h3>
                    <div class="popular_2 row mt-4">
                        <div class="tab-content">
                            <div class="tab-pane active" id="home">
                                <div class="popular_2i row">
                                   <c:forEach var="phim" items="${phimListDangChieu}" varStatus="status">
									    <div class="popular_2i1 row">
									        <div class="col-md-4 col-4">
									            <div class="popular_2i1lm position-relative clearfix">
									                <div class="popular_2i1lm1 clearfix">
									                    <div class="grid">
									                        <figure class="effect-jazz mb-0">
									                            <a href="#"><img src="${phim.linkAnh}" class="w-100" alt="img25"></a>
									                        </figure>
									                    </div>
									                </div>
									            </div>
									        </div>
									        <div class="col-md-8 col-8">
									            <div class="popular_2i1r">
									                <h5><a class="col_red" href="#">${phim.tenPhim}</a></h5>
									                <h6>${phim.diem}/10 Imdb</h6>
									                <h6>
									                    Năm: ${phim.namSX}
									                    <span class="ms-2">Thời lượng: ${phim.thoiLuong}m</span>
									                    <a href="${phim.linkTrailer}" style="color: lightblue;">Trailer</a>
									                </h6>
									                <h4 class="col_red">${phim.tenPhim}</h4>
									                <label class="small mb-2 font-weight-bold d-block text-while">2D Phụ đề Việt</label>
									                <div class="button-row">
									                    <c:forEach var="lichChieu" items="${lc}" varStatus="status">
									                        <c:if test="${lichChieu.dsPhim.maPhim == phim.maPhim}">
									                            <div class="mb-1">
									                                <a href="http://localhost:8080/DoAnWebCinema/customer/payment/${lichChieu.maSC}.htm" class="btn btn-sm btn-showtime btn-light is-ticketing">
									                                    <span class="time">${lichChieu.gioChieu}:00</span>
									                                </a>
									                            </div>
									                        </c:if>
									                    </c:forEach>
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
	      <h3><a class="text-white" href="index.html"><i class="fa fa-video-camera col_red me-1"></i> <span class="col_red">Liên hệ</span></a></h3>
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
	            <a href="http://online.gov.vn/HomePage/CustomWebsiteDisplay.aspx?DocId=30278" target="_blank">
	                <img src="images/bocongthuong.png" height="80" alt="abc">
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
        var days = ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7']; // Mảng chứa các ngày trong tuần
        var curDate = new Date(); // Lấy ngày hiện tại
        var html = '';

        for (var i = 0; i < 7; i++) {
            var nextDate = new Date(curDate.getTime() + i * 24 * 60 * 60 * 1000); // Tính ngày tiếp theo
            var day = days[nextDate.getDay()]; // Lấy tên ngày trong tuần từ mảng
            var date = nextDate.getDate(); // Lấy ngày (ngày trong tháng)
            var month = nextDate.getMonth() + 1; // Lấy tháng (Tháng 1 là 0, nên cộng thêm 1)
            var year = nextDate.getFullYear();
            var formattedDate = year + '-' + (month < 10 ? '0' + month : month) + '-' + (date < 10 ? '0' + date : date); // Định dạng ngày
            var isActive = (i === 0) ? ' active' : ''; // Đặt class 'active' cho ngày hiện tại
            html += '<a href="/DoAnWebCinema/datve/' + formattedDate + '.htm" class="btn btn-light text-muted date' + isActive + '" data-date="' + formattedDate + '">' + day + '<br>' + date + '/' + month + '</a>';
        }        
        document.getElementById('showtimes-list').innerHTML = html;
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
