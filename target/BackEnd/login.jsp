<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V16</title>
	<meta http-equiv="content-type" content="text/html" charset="UTF-8">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
	<link rel="stylesheet" href="css/login.css">
<!--===============================================================================================-->

</style>
</head>
<body>
	<div id="loader-wrapper">

	</div>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41" style="font-size: 36px;">
					Đăng nhập
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5"
				action="LoginControl" method="post" >

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="username" placeholder="Tài khoản">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="password" placeholder="Mật khẩu">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
					<div class="forget-password">
						<a href="forgot-password.html"><span>Quên mật khẩu ?</span></a>
					</div>
					<div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn">
							<span style="font-size: 16px;">Đăng nhập</span>
						</button>
					</div>
					<div class="continue-login">
						<span style="text-align: center ; margin: 1rem; color:#999;">Hoặc tiếp tục với</span>
					</div>
					<div class="other-registers">
						<div class="google-register">
							<a href="#"><img src="img/login-icons/facebook-register.png" alt="facebook-register"></a>
						</div>
						<div class="google-register">
							<a href="#"><img src="img/login-icons/google-register.png" alt="google-register"></a>
						</div>
						<div class="gmail-register">
							<a href="#"><img src="img/login-icons/gmail-register.png" alt="gmail-register"></a>
						</div>
					</div>

					<div class="register_here">
						<p>Chưa có tài khoản? Bạn có thể tạo tài khoản <a href="register.jsp" style="color: #0093E9; text-decoration: underline;">tại đây</a></p>
					</div>
					
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/loader.js" ></script>
	<script>
        $(window).on("load", function() {
            $('body').addClass('loaded');
        });
    </script>

</body>
</html>