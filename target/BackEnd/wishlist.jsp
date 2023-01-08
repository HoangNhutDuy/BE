<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/wishlist.css">
</head>
<body>
    <div id="loader-wrapper">
    </div>
    <header id="header"></header>
    <div class="container">
        <div class="header">
            <i class="fa-solid fa-heart"></i>
            <h1>My wishlist</h1>
        </div>
        <div class="table_product">
            <table>
                <thead>
                    <tr>
                        <th>Hình ảnh</th>
                        <th>Mã sản phẩm</th>
                        <th>Tên sản phẩm</th>
                        <th>Giá</th>
                        <th>Tác vụ</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="w" items="${wishlist}">
                    <tr>
                        <td>
                            <div class="img_product">
                                <img src="${w.img}" alt="">
                            </div>
                        </td>
                        <td>${w.idCate}</td>
                        <td>${w.name}</td>
                        <td>${w.getDisplayPrice()}</td>
                        <td>
                            <div class="action">
                                <button>
                                    <a style="text-decoration: none; color: #eee">Thêm vào giỏ hàng</a>
                                </button>
                                <button>
                                    <a style="text-decoration: none; color: #eee">Xóa</a>
                                </button>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <footer id="footer" class="tm-bg-gray pt-5 pb-3 tm-text-gray tm-footer">
    </footer>
    <script src="js/plugins.js"></script>
    <script src="js/header.jsp"></script>
    <script src="js/footer.jsp"></script>
    <script src="js/loader.js"></script>
    <script>
        $(window).on("load", function () {
            $('body').addClass('loaded');
        });
    </script>
</body>

</html>