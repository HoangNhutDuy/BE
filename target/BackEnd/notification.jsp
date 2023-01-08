<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <title>Notification</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        .main{
            display: block;
            text-align: center;
        }
        .container {
            line-height: 2;
            margin-top: 20px;
        }
        img {
            width: 50px;
        }
        a {
            text-decoration: none;
            color:rgb(25, 59, 179);
            font-weight: 700;
            cursor: pointer;
        }
        a:hover {
            color: red;
        }
    </style>
</head>
<body>
    <div class="main">
        <div class="container">
            <img src="img/check.png.png" alt="image error">
            <h2>Gửi mật khẩu thành công</h2>
            <p>Người dùng vui lòng kiểm tra email</p>
            <p>Quay lại trang đăng nhập <a href="/login">tại đây</a></p>
        </div>
    </div>
</body>
</html>