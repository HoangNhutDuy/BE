<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Form-v5 by Colorlib</title>
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="css/roboto-font.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-5/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
	<!-- Main Style Css -->
    <link rel="stylesheet" href="css/register.css"/>
</head>

<body class="form-v5">

<%
	String fullNameStatus = (String) request.getAttribute("fullName");
	fullNameStatus = fullNameStatus == null ? "": fullNameStatus;
%>
	<div id="loader-wrapper">
	</div>
	<div class="page-content">
		<div class="form-v5-content">
			<form class="form-detail" action="/register" method="post">
				<h2>Đăng ký</h2>
				<div class="form-row">
					<label for="full-name">Họ và tên</label>
					<input type="text" name="full-name" id="full-name" class="input-text" placeholder="Họ và tên" required>
					<i class="fas fa-user"></i>
<%--					<span id="fullname-status"><%=fullNameStatus%></span>--%>
				</div>
				<div class="form-row">
					<label for="your-email">Email</label>
					<input type="text" name="your-email" id="your-email" class="input-text" placeholder="Email" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">
					<i class="fas fa-envelope"></i>
				</div>
				<div><span id="email-status"></span></div>
				<div class="form-row">
					<label for="password">Mật khẩu</label>
					<input type="password" name="password" id="password" class="input-text" placeholder="Mật khẩu" required>
					<i class="fas fa-lock"></i>
				</div>
				<div><span id="password-status"></span></div>
				<div class="form-row-last">
					<input type="submit" name="register" class="register" value="Đăng ký">
				</div>
			</form>
		</div>
	</div>
	<script src="js/plugins.js"></script>
	<script src="js/loader.js" ></script>
	<script>
        $(window).on("load", function() {
            $('body').addClass('loaded');
        });
    </script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>