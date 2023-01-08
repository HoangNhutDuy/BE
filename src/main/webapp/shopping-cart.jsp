<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ hàng</title>
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
            <thead>
                <th>Sản phẩm</th>
                <th>Thể loại</th>
                <th>Giá tiền</th>
                <th>Tác vụ</th>
            </thead>
            <c:forEach var="product" items="${productList}">
                <tr style="margin-bottom: 8px">
                    <td>
                        <div class="product_details">
                            <div class="product_img">
                                <img src="<c:out value="${product.getImg()}"/>" alt="image">
                            </div>
                            <div class="product_info">
                            </div>
                        </div>
                    </td>
                    <td><c:out value="${product.getNameCate()}"/></td>
                    <td><c:out value="${product.getDisplayPrice()}"/></td>
                    <td>
                        <button style="border: 1px solid gray;background: #fc033d; border-radius: 4px; padding:3px 8px; cursor: pointer" ><a
                                style="color:#eee"
                                href="/cart?action=remove&productID=${product.id}" class="remove">Xóa</a></button>
                    </td>
                </tr>
                <tr style="border-bottom: solid #888 1px; padding-top: 8px"></tr>
            </c:forEach>
        </table>
    </div>
    <div class="total_price">
        <table>
            <tr>
                <td style="text-align: left">Thành tiền</td>
                <td style="text-align: right" >${sessionScope.cart.getDisplayTotalPrice()}</td>
            </tr>
            <tr>
                <td style="text-align: left">Thuế</td>
                <td style="text-align: right">${sessionScope.cart.getDisplayTax()}</td>
            </tr>
            <tr>
                <td style="text-align: left">Tổng tiền</td>
                <td style="text-align: right">${sessionScope.cart.getDisplayAfterTaxes()}</td>
            </tr>
        </table>
    </div>
    <div class="payment">

        <button class="continue_buy_btn"><a style="text-decoration:  none; color: black" href="/home">Quay lại mua
            hàng</a></button>
        <button class="payment_btn" type="submit"><a href="/cart?action=pay">Thanh toán</a></button>
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