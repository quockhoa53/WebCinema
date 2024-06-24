<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi Tiết</title>
    <link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerp olicy="no-referrer" />
   
    <link rel="stylesheet" href="http://localhost:8080/DoAnWebCinema/css/bootstrap.min.css">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="http://localhost:8080/DoAnWebCinema/images/logo.svg" />

    <link rel="stylesheet" href="http://localhost:8080/DoAnWebCinema/fonts/fontawesome-free-6.4.2-web/css/all.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" integrity="sha512-rqQltXRuHxtPWhktpAZxLHUVJ3Eombn3hvk9PHjV/N5DMUYnzKPC1i3ub0mEXgFzsaZNeJcoE0YHq0j/GFsdGg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="http://localhost:8080/DoAnWebCinema/css/login.css"/>
	<link rel="stylesheet" href="http://localhost:8080/DoAnWebCinema/css/search.css"/>
<style>
    
<style>
.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}
</style>
    
	<script>
   		 var curDate = new Date()
      
   	</script>
</head>

<body>
    <div class="main-container">
       <%@include file="/WEB-INF/views/header.jsp"%>
        </div>
        <div class="detail-movie-container" style=" color: #fff; margin-top: 12rem;">
            <img class="movie-poster"
                src="${phim.getLinkAnh() }"
                alt="">
            <div class="movie-content">
                <div class="product--name">
                    <h3 style="color: #fff;" class="">${phim.getTenPhim()}</h3>
                </div>
                <div class="movie-detail">
                    ${phim.getMoTa()}
                </div>
                <ul class="movie-info">
                    <li class="movie-info-item">
                        <span class="col-left">Đạo Diễn: </span>
                        <span class="col-right ">${phim.getDaoDien()}<span>
                    </li>
                    <li class="movie-info-item">
                        <span class="col-left">Thể Loại: </span>
                        <span class="col-right">
                        	<c:forEach var="tl" items="${phim.getTheLoaiS()}">
                        		${tl.chiTietTL.tenTL},
                        	</c:forEach>
                        </span>
                    </li><li class="movie-info-item">
                        <span class="col-left">Khởi Chiếu: </span>
                        <span class="col-right">${phim.getNgayKhoiChieu()}</span>
                    </li>
                    <li class="movie-info-item">
                        <span class="col-left">Thời Lượng: </span>
                        <span class="col-right">${phim.getThoiLuong()} phút</span>
                    </li>
                    <li class="movie-info-item">
                        <span class="col-left">Ngôn Ngữ: </span>
                        <span class="col-right">${phim.getNuocSX()}</span>
                    </li>
                    <div class="btn-row">
                        <a class="btn-wrap" href="${phim.getLinkTrailer()} ">Trailer</a>
					    <a class="button" href="/DoAnWebCinema/datve/${currentDate}.htm">Đặt vé ngay</a>
                    </div>

                </ul>
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

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="http://localhost:8080/QuanLyRapChieuPhim/resources/js/script.js"></script>
</body>

</html>