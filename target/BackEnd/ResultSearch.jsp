<%@ page import="Model.Product" %>
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
    <link rel="stylesheet" href="css/ResultSearch.css">

</head>
<body>
<div id="loader-wrapper">

</div>
<header id="header"></header>
<div class="tm-hero d-flex justify-content-center align-items-center"  data-parallax="scroll" data-image-src="img/hero.jpg">
    <form class="d-flex tm-search-form" action="SearchControl?index=1">
        <input name="txtSearch" class="form-control tm-search-input" type="search" placeholder="Tìm kiếm" aria-label="Search">
        <button class="btn btn-outline-success tm-search-btn" type="submit">
            <i class="fas fa-search"></i>
        </button>
    </form>
</div>
<div class="container">

        <c:forEach var="p" items="${result}">
        <div class="product">
            <img src="${p.img}" alt="" class="product_img">
            <div class="product_header">
                <button><a href="PhotoDetailControl?id=${p.id}" style="color: black"><i class="fa-solid fa-eye"></i></a></button>
                <button class="heart"><i class="fa-regular fa-heart"></i></button>
                <button><a href="/CartController?action=add&productID=${p.id}&page=resultSearch"><i class="fa-solid fa-plus"></i></a></button>
            </div>
        </div>
        </c:forEach>
</div>
<div class="row tm-mb-90">
    <div class="col-12 d-flex justify-content-between align-items-center tm-paging-col">
        <div class="tm-paging d-flex">
            <c:forEach var="i" begin="1" end="${result.size()/6}" >
            <a href="SearchControl?txtSearch=${save}&index=${i}&page=resultSearch" class="active tm-paging-link">${i}</a>
            </c:forEach>
        </div>
    </div>
</div>

<footer id="footer" class="tm-bg-gray pt-5 pb-3 tm-text-gray tm-footer"> </footer>
    <script src="js/plugins.js"></script>
    <script src="js/header.jsp"></script>
    <script src="js/footer.jsp"></script>
    <script src="js/loader.js"></script>
    <script>
        $(window).on("load", function () {
            $('body').addClass('loaded');
        });
    </script>
    <script>
        var hearts = document.querySelectorAll('.heart');
        var productsImg = document.querySelectorAll('.product_img')
        var products = document.querySelectorAll('.product');
        var currentItem = 6;
        var viewmore = document.querySelector('.view-more-btn')
        hearts.forEach(heart => {
            heart.addEventListener('click', function () {
                heart.classList.toggle('like');
            })
        })
    </script>
</body>

</html>