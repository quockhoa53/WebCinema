<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Đăng nhập/Đăng kí</title>
<style>
  /* CSS để tùy chỉnh giao diện, bạn có thể thay đổi hoặc mở rộng nó tùy ý */
  body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    text-align: center;
  }

  .firstpage {
    display: flex;
    flex-direction: column; /* Xếp các phần tử theo cột */
    align-items: center; /* Canh giữa theo chiều ngang */
  }

  #searchInput {
    margin: 10px 0; /* Khoảng cách giữa ô tìm kiếm và các liên kết */
    padding: 8px;
    font-size: 16px;
    border: 2px solid #ccc;
    border-radius: 5px;
    outline: none; /* Loại bỏ border khi focus */
  }

  p {
    margin: 5px 0; /* Khoảng cách giữa các liên kết */
  }

  a {
    text-decoration: none;
    color: blue;
    margin: 0 5px; /* Khoảng cách giữa các liên kết */
  }

  a:hover {
    text-decoration: underline; /* Hiển thị gạch chân khi di chuột qua liên kết */
  }
</style>
</head>
<body>

<div class="firstpage">
  <img id="img_logo" src="images/logo.png" width="10%" type="images/png">
  <input type="text" id="searchInput" placeholder="Tìm phim, tin tức,...">
  <p>
    <a href="#"><b>Đăng Nhập</b></a>
    <b>/</b>
    <a href="#"><b>Đăng Kí</b></a>
  </p>
</div>

</body>
</html>
    