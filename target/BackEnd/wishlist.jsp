<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
                    <tr>
                        <td>
                            <div class="img_product">
                                <img src="img/clocks/clock1.jpg" alt="">
                            </div>
                        </td>
                        <td>CL001</td>
                        <td>Đồng hồ mini</td>
                        <td>50000VND</td>
                        <td>
                            <div class="action">
                                <button>
                                    Thêm vào giỏ hàng
                                </button>
                                <button>
                                    Xóa
                                </button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="img_product">
                                <img src="img/clocks/clock1.jpg" alt="">

                            </div>
                        </td>
                        <td>CL001</td>
                        <td>Đồng hồ mini</td>
                        <td>50000VND</td>
                        <td>
                            <div class="action">
                                <button>
                                    Thêm vào giỏ hàng
                                </button>
                                <button>
                                    Xóa
                                </button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="img_product">
                                <img src="img/clocks/clock1.jpg" alt="">

                            </div>
                        </td>
                        <td>CL001</td>
                        <td>Đồng hồ mini</td>
                        <td>50000VND</td>
                        <td>
                            <div class="action">
                                <button>
                                    Thêm vào giỏ hàng
                                </button>
                                <button>
                                    Xóa
                                </button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="img_product">
                                <img src="img/clocks/clock1.jpg" alt="">

                            </div>
                        </td>
                        <td>CL001</td>
                        <td>Đồng hồ mini</td>
                        <td>50000VND</td>
                        <td>
                            <div class="action">
                                <button>
                                    Thêm vào giỏ hàng
                                </button>
                                <button>
                                    Xóa
                                </button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="img_product">
                                <img src="img/clocks/clock1.jpg" alt="">

                            </div>
                        </td>
                        <td>CL001</td>
                        <td>Đồng hồ mini</td>
                        <td>50000VND</td>
                        <td>
                            <div class="action">
                                <button>
                                    Thêm vào giỏ hàng
                                </button>
                                <button>
                                    Xóa
                                </button>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <footer id="footer" class="tm-bg-gray pt-5 pb-3 tm-text-gray tm-footer">

    </footer>
    <script src="js/plugins.js"></script>
    <script src="js/header.jsp"></script>
    <script src="js/footer.js"></script>
    <script src="js/loader.js"></script>
    <script>
        $(window).on("load", function () {
            $('body').addClass('loaded');
        });
    </script>
</body>

</html>