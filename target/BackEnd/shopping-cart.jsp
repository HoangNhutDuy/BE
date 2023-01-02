<%@ page contentType="text/html;charset=UTF-8" language="java" %>


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
                <tr>
                    <th>Sản phẩm</th>
                    <th>Giá tiền</th>
                </tr>
                <tr>
                    <td>
                        <div class="product_details">
                            <div class="product_img">
                                <img src="img/img-05.jpg" alt="">
                            </div>
                            <div class="product_info">
                                <p>Hangers</p>
                                <small>Giá: 50000VND</small>
                                <br>
                                <a href="#" class="remove">Xóa</a>
                            </div>
                        </div>
                    </td>
                    <td>
                        50000VND
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="product_details">
                            <div class="product_img">
                                <img src="img/img-05.jpg" alt="">
                            </div>
                            <div class="product_info">
                                <p>Hangers</p>
                                <small>Giá: 50000VND</small>
                                <br>
                                <a href="#" class="remove">Xóa</a>

                            </div>
                        </div>
                    </td>
                    <td>
                        50000VND
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="product_details">
                            <div class="product_img">
                                <img src="img/img-05.jpg" alt="">
                            </div>
                            <div class="product_info">
                                <p>Hangers</p>
                                <small>Giá: 50000VND</small>
                                <br>
                                <a href="#" class="remove">Xóa</a>
                            </div>
                        </div>
                    </td>
                    <td>
                        50000VND
                    </td>
                <tr>
                    <td>
                        <div class="product_details">
                            <div class="product_img">
                                <img src="img/img-05.jpg" alt="">
                            </div>
                            <div class="product_info">
                                <p>Hangers</p>
                                <small>Giá: 50000VND</small>
                                <br>
                                <a href="#" class="remove">Xóa</a>

                            </div>
                        </div>
                    </td>
                    <td>
                        50000VND
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="product_details">
                            <div class="product_img">
                                <img src="img/img-05.jpg" alt="">
                            </div>
                            <div class="product_info">
                                <p>Hangers</p>
                                <small>Giá: 50000VND</small>
                                <br>
                                <a href="#" class="remove">Xóa</a>

                            </div>
                        </div>
                    </td>
                    <td>
                        50000VND
                    </td>
                </tr>
                </tr>
            </table>
        </div>
        <div class="total_price">
            <table>
                <tr>
                    <td>Thành tiền</td>
                    <td>150000VND</td>
                </tr>
                <tr>
                    <td>Thuế</td>
                    <td>2500VND</td>
                </tr>
                <tr>
                    <td>Tổng tiền</td>
                    <td>152000VND</td>
                </tr>
            </table>
        </div>
        <div class="payment">
            <button class="continue_buy_btn">Quay lại mua hàng</button>
            <button class="payment_btn" type="submit"><a href="form-payment.html">Thanh toán</a></button>
        </div>
    </div>
    <footer id="footer" class="tm-bg-gray pt-5 pb-3 tm-text-gray tm-footer">
        <script src="js/plugins.js"></script>
        <script src="js/header.jsp"></script>
        <script src="js/footer.js"></script>
        <script>
            $(window).on("load", function () {
                $('body').addClass('loaded');
            });
        </script>
        <script>

        </script>
</body>

</html>