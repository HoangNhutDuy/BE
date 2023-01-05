<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catalog-Z cart</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/shopping-cart.css">

</head>

<body>
    <div id="loader-wrapper">
        <div id="loader"></div>

        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>

    </div>
    <header id="header"></header>
    <div class="container">
        <div class="cart_page">
            <table class="table-product">
                <tr><th>Sản phẩm</th><th>Giá tiền</th></tr>

                <c:forEach var="product" items="${productList}">
                <tr>
                    <td>
                        <div class="product_details">
                            <div class="product_img">
                                <img src="<c:out value="${product.getImg()}"/>"  alt="image">
                            </div>
                            <div class="product_info">
                                <p><c:out value="${product.getNameCate()}"/></p>
                                <small>Giá: <c:out value="${product.getPrice()}"/> VND</small>
                                <br>
                                <a href="/CartController?action=remove&productID=${product.id}" class="remove">Xóa</a>
                            </div>
                        </div>
                    </td>
                    <td>
                        <c:out value="${product.getPrice()}"/> VND
                    </td>
                </tr>
                </c:forEach>
            </table>
        </div>
        <div class="total_price">
            <table>
                <tr>
                    <td>Thành tiền</td>
                    <td>${sessionScope.cart.getTotalPrice()} VND</td>
                </tr>
                <tr>
                    <td>Thuế</td>
                    <td>${sessionScope.cart.getTax()} VND</td>
                </tr>
                <tr>
                    <td>Tổng tiền</td>
                    <td>${sessionScope.cart.getAfterTaxes()} VND</td>
                </tr>
            </table>
        </div>
        <div class="payment">
            <button class="continue_buy_btn"><a style="text-decoration:  none; color: black" href="/HomeControl">Quay lại mua hàng</a></button>
            <button class="payment_btn" type="submit"><a href="form-payment.html">Thanh toán</a></button>
        </div>
    </div>
    <footer id="footer" class="tm-bg-gray pt-5 pb-3 tm-text-gray tm-footer">
        <script src="js/plugins.js"></script>
        <script src="js/header.jsp"></script>
        <script src="js/footer.jsp"></script>
        <script>
            $(window).on("load", function () {
                $('body').addClass('loaded');
            });
        </script>
        <script>

        </script>
</body>

</html>