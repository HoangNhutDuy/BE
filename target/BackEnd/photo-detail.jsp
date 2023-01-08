<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catalog-Z Photo Detail Page</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<!--
    
TemplateMo 556 Catalog-Z

https://templatemo.com/tm-556-catalog-z

-->
<style>
    .interactive{
        display: flex;
        align-items: center;
        margin-bottom: 1.2rem;
        color: #666;
    }
    .interactive div{
        margin-right: 2rem;
    }
    .sale{
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin: 2rem 0;
        height: 3.5rem;
    }
    .sale div{
        width: 50%;
        height: 100%;
    }
    .sale .btn{
        background-color: #009999;  
        width: 90%;
        height: 100%;
        border-radius: 0.2rem;
        color: white;
    }
    .sale .btn:hover{
        background-color: #4bc5c5;  
    }
</style>
</head>
<body>
    <!-- Page Loader -->
    <div id="loader-wrapper">
        <div id="loader"></div>

        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>

    </div>
<header id="header"></header>

    <div class="tm-hero d-flex justify-content-center align-items-center"  data-parallax="scroll" data-image-src="img/hero.jpg">
        <form class="d-flex tm-search-form" action="/search?index=1" method="post">
            <input name="txtSearch" class="form-control tm-search-input" type="search" placeholder="Tìm kiếm" aria-label="Search">
            <button class="btn btn-outline-success tm-search-btn" type="submit">
                <i class="fas fa-search"></i>
            </button>
        </form>
    </div>

    <div class="container-fluid tm-container-content tm-mt-60">
        <div class="row mb-4">
            <h2 class="col-12 tm-text-primary">${product.name}</h2>
        </div>
        <div class="row tm-mb-90">            
            <div class="col-xl-8 col-lg-7 col-md-6 col-sm-12">
                <img  src="${product.img}" alt="Image" class="img-fluid">
            </div>
            <div class="col-xl-4 col-lg-5 col-md-6 col-sm-12">
                <div class="tm-bg-gray tm-video-details">
                    <h3 class="tm-text-gray-dark mb-3">Mô tả</h3>
                    <p class="mb-4">
                        ${product.name}
                    </p>
                    <div class="interactive">
                        <div class="favorite">
                            <i class="fa-solid fa-heart" style="cursor: pointer;"></i>
                            <span>lượt yêu thích</span>
                            <span class="tm-text-primary">: 2,710</span>
                        </div>
                        <div class="download">
                            <i class="fa-solid fa-download"></i>
                            <span> lượt tải xuống </span>
                            <span class="tm-text-primary">: 75,532 </span>
                        </div>
                    </div>
                    <div class="mb-4 d-flex flex-wrap">
                        <div class="mr-4 mb-2">
                            <span class="tm-text-gray-dark">Giá: </span><span class="tm-text-primary">${product.getDisplayPrice()}</span>
                        </div>
                        <div class="mr-4 mb-2">
                            <span class="tm-text-gray-dark">Loại tệp: </span><span class="tm-text-primary">JPG</span>
                        </div>
                    </div>
                    <div class="sale">
                        <div class="to-buy">
                            <button class="btn buy-btn"><a style="text-decoration: none; color: #eee" href="/cart?productID=${product.id}&page=detail&action=add">Mua</a></button></div>
                        <div class="to-cart">
                            <button class="btn cart-btn"><a style="text-decoration: none; color: #eee" href="/cart?productID=${product.id}&page=detail&action=add">Thêm vào giỏ hàng</a></button>
                        </div>
                    </div>
                    <div id="text-center">
                        
                    </div>                    
                    <div>
                        <h3 class="tm-text-gray-dark mb-3">Tìm kiếm ảnh theo thẻ</h3>
                        <c:forEach var="c" items="${categories}">
                            <a href="/loadProducts?cateID=${c.idCate}" class="tm-text-primary mr-4 mb-2 d-inline-block">${c.name}</a>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mb-4">
            <h2 class="col-12 tm-text-primary">
                Hình ảnh liên quan
            </h2>
        </div>
        <div class="row mb-3 tm-gallery">
            <c:forEach var="c" items="${categories}">
            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                <figure class="effect-ming tm-video-item">
                    <img src="${c.img}" style="width: 314px; height: 210px" alt="Image" class="img-fluid">
                    <figcaption class="d-flex align-items-center justify-content-center">
                        <h2>${c.name}</h2>
                        <a href="/loadProducts?id=${c.idCate}">View more</a>
                    </figcaption>                    
                </figure>
            </div>
            </c:forEach>
            </div>

        </div> <!-- row -->
    </div> <!-- container-fluid, tm-container-content -->

    <footer id="footer" class="tm-bg-gray pt-5 pb-3 tm-text-gray tm-footer">
    
    <script src="js/plugins.js"></script>
    <script src="js/header.jsp"></script>
    <script src="js/footer.jsp"></script>
    <script>
        $(window).on("load", function() {
            $('body').addClass('loaded');
        });
    </script>
</body>
</html>