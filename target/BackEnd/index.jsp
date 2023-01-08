<%@ page import="Model.Category" %>
<%@ page import="DAO.DAO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta http-equiv="refresh" content="text/html"  charset="UTF-8">

    <title>Catalog-Z</title>
    <link rel="icon" href="https://t4.ftcdn.net/jpg/04/96/47/13/360_F_496471319_DbtjoUvKqyy2e9OfgBnK5mm2AXhKpa9m.jpg"/>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<!--
    
TemplateMo 556 Catalog-Z

https://templatemo.com/tm-556-catalog-z

-->
</head>
<body>
    <!-- Page Loader -->
    <div id="loader-wrapper">


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
            <h2 class="col-6 tm-text-primary">
                Hình ảnh mới nhất
            </h2>
            <div class="col-6 d-flex justify-content-end align-items-center">
                <form action="" class="tm-text-primary">
                    Trang <input type="text" value="1" size="1" class="tm-input-paging tm-text-primary"> của 200
                </form>
            </div>
        </div>
        <div class="row tm-mb-90 tm-gallery">
            <%!List<Category> cateList = DAO.getInstance().loadCategory();%>
            <%for(Category c : cateList){%>
            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                <figure class="effect-ming tm-video-item">
                    <img style="width: 314px; height: 210px" src="<%=c.getImg()%>" alt="Image" class="img-fluid">
                    <figcaption class="d-flex align-items-center justify-content-center">
                        <h2><%=c.getName()%></h2>
                        <a href="/loadProducts?cateID=<%=c.getIdCate()%>">View more</a>
                    </figcaption>
                </figure>
            </div>
            <%}%>
        </div> <!-- row -->
        <div class="row tm-mb-90">
            <div class="col-12 d-flex justify-content-between align-items-center tm-paging-col">
<%--                <a href="javascript:void(0);" class="btn btn-primary tm-btn-prev mb-2 disabled">Trang trước</a>--%>
                <div class="tm-paging d-flex">
<%--                    <a href="javascript:void(0);" class="active tm-paging-link">1</a>--%>
<%--                    <a href="javascript:void(0);" class="tm-paging-link">2</a>--%>
<%--                    <a href="javascript:void(0);" class="tm-paging-link">3</a>--%>
<%--                    <a href="javascript:void(0);" class="tm-paging-link">4</a>--%>
                </div>
<%--                <a href="javascript:void(0);" class="btn btn-primary tm-btn-next">Trang tiếp theo </a>--%>
            </div>
        </div>
    </div> <!-- container-fluid, tm-container-content -->

    <footer id="footer" class="tm-bg-gray pt-5 pb-3 tm-text-gray tm-footer">
      
    </footer>
    
    <script src="js/plugins.js"></script>
    <script src="js/header.jsp"></script>
    <script src="js/footer.jsp"></script>
    <script src="js/loader.js" ></script>
    <script>
        $(window).on("load", function() {
            $('body').addClass('loaded');
        });
    </script>
</body>
</html>