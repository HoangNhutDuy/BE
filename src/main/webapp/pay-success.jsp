<%@ page import="Model.Cart" %>
<%@ page import="java.util.Collection" %>
<%@ page import="Model.Product" %>
<%@ page import="Model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catalog-Z</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/paysuccess.css">
</head>

<body>
    <div id="loader-wrapper">
        <div id="loader"></div>
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
    </div>
    <header id="header"></header>
    <div class="container">
        <div class="img_check">
            <img src="img/check.png.png" alt="">
        </div>
        <% Cart cart = Cart.getInstance();
            Collection<Product> products = cart.getProductList();
            User user = (User) request.getSession().getAttribute("user");
        %>
        <h1>Thanh toán thành công</h1>
        <div class="product_info">
            <p>Tên người dùng :</p>
            <p><%=user.getFullName()%></p>
        </div>
        <div class="product_info">
            <p>Tổng cộng : </p>
            <p><%=cart.getDisplayAfterTaxes()%></p>
        </div>
        <div class="back">
            <button class="back-btn">
                <i class="fa-sharp fa-solid fa-left-long"></i>
                Quay lại mua hàng
            </button>
        </div>
    </div>
    <footer id="footer" class="tm-bg-gray pt-5 pb-3 tm-text-gray tm-footer"></footer>
    <script src="js/plugins.js"></script>
    <script src="js/header.jsp"></script>
    <script src="js/footer.jsp"></script>
    <script>
        $(window).on("load", function () {
            $('body').addClass('loaded');
        });
    </script>
    <script>
        var backButton = document.querySelector('.back-btn')
        backButton.addEventListener('click', function(){
            window.location.href = '/home'
        })
    </script>
</body>

</html>