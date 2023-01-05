
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
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/form-payment.css">
</head>

<body>
    <div id="loader-wrapper"></div>
    <div class="container">
        <form action="" class="form-control">
            <h1 class="form_title">Thanh toán</h1>

            <div class="card_type">
                <div class="card_credits">
                    <input type="radio" id="checkcredits" class="checkbox" name="card">
                    <p>Thẻ tín dụng</p>
                </div>
                <div class="card_img">
                    <img src="img/card_credits.png" alt="">
                </div>
            </div>

            <h2 class="card_title">Thông tin thẻ</h2>
            <div class="card_info">
                <input type="text" placeholder="Tên trên thẻ" id="card_name">
                <span class="card_info_span"></span>
                <small></small>
            </div>
            <div class="card_info">
                <input type="text" placeholder="Số thẻ tín dụng" id="card_number">
                <span class="card_info_span"></span>
                <small></small>

            </div>
            <div class="card_footer">
                <div class="card_date">
                    <p>Ngày hết hạn</p>
                    <input type="text" placeholder="Ngày/Tháng/Năm" id="card_date">
                    <span class="card_date_span"></span>
                    <small></small>

                </div>
                <div class="card_cvc">
                    <p>CVC</p>
                    <input type="text" placeholder="123" id="card_cvc">
                    <span class="card_cvc_span"></span>
                    <small></small>


                </div>
            </div>
            <div class="pay">
                <button type="submit" class="pay_btn">Thanh toán</button>
            </div>
        </form>
        <div class="shopping-cart">
            <div class="topic">
                <p class="title">Giỏ hàng</p>
                <span>${cart.getQuantity()}</span>
            </div>
            <div class="table-product">
                <table>
                    <thead>
                        <tr>
                            <th>Sản phẩm</th>
                            <th>Thành tiền</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="p" items="${cart.getProductList()}">
                        <tr>
                            <td>
                                <div class="product_info">
                                    <div class="product_img">
                                        <img src="${p.img}" alt="image">
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="product_price">
                                    <p>${p.price}VND</p>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

            </div>
            <div class="total_price">
                <p>Tổng thành tiền</p>
                <p>${cart.getAfterTaxes()}VND</p>
            </div>
        </div>
        <script src="js/header.jsp"></script>
        <script src="js/footer.jsp"></script>
        <script src="js/loader.js"></script>
        <script src="js/plugins.js"></script>
        <script>
            $(window).on("load", function () {
                $('body').addClass('loaded');
            });
        </script>
        <script>
            var cardName = document.querySelector('#card_name');
            var cardNumber = document.querySelector('#card_number');
            var cardDate = document.querySelector('#card_date');
            var cardCVC = document.querySelector('#card_cvc');
            var form = document.querySelector('.form-control');
            var checkboxCredits = document.querySelector('#checkcredits')
            var checkboxPaypal = document.querySelector('#checkpaypal')

            var radios = document.querySelectorAll('.checkbox')
            var check = document.getElementsByName('checkbox')
            checkboxCredits.checked = true;


            function showError(input, message) {
                let parent = input.parentElement;
                let small = parent.querySelector('small');
                parent.classList.add('error');
                small.innerText = message;
            }
            function showSuccess(input) {
                let parent = input.parentElement;
                let small = parent.querySelector('small');
                parent.classList.remove('error');
                small.innerText = '';
            }
            function checkisNumber(listInput) {
                let isNumber = false;
                listInput.forEach(input => {
                    if (!parseInt(input.value.trim())) {
                        showError(input, 'Bạn chỉ được phép nhập số')
                    } else {
                        showSuccess(input);
                        isNumber = true;
                    }
                })
                return isNumber;
            }
            function checkDateFormat(input) {
                let dateformat = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
                if (input.value.trim().match(dateformat)) {
                    let operator = input.value.trim().split('/');

                    // Extract the string into month, date and year      
                    let datepart = [];
                    if (operator.length > 1) {
                        pdatepart = input.value.trim().split('/');
                    }
                    let day = parseInt(datepart[0]);
                    let month = parseInt(datepart[1]);
                    let year = parseInt(datepart[2]);

                    // Create list of days of a month      
                    let ListofDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
                    if (month == 1 || month > 2) {
                        if (day > ListofDays[month - 1]) {
                            ///This check is for Confirming that the date is not out of its range      
                            return false;
                        }
                    } else if (month == 2) {
                        let leapYear = false;
                        if ((!(year % 4) && year % 100) || !(year % 400)) {
                            leapYear = true;
                        }
                        if ((leapYear == false) && (day >= 29)) {
                            return false;
                        } else
                            if ((leapYear == true) && (day > 29)) {
                                showError(input, 'Bạn đã nhập sai định dạng')
                                return false;
                            }
                    }
                } else {
                    showError(input, 'Bạn đã nhập sai định dạng');

                    return false;
                }
                return true;
            }
            function checkemptyError(listInput) {
                let isEmptyError = false;
                listInput.forEach(input => {
                    if (!input.value.trim()) {
                        showError(input, "Vui lòng điền vào chỗ trống")
                        isEmptyError = true;
                    } else
                        showSuccess(input);
                });
                return isEmptyError
            }
            form.addEventListener('submit', function (e) {
                e.preventDefault();
                let isEmptyError = checkemptyError([cardName, cardCVC, cardDate, cardNumber]);
                let isDateFormat = checkDateFormat(cardDate);
                let isNumber = checkisNumber([cardCVC, cardNumber]);
                // console.log(isDateFormat);
                // console.log(isNumber)
                console.log(isDateFormat)
                if (!isEmptyError && isDateFormat && isNumber) {
                    window.location.href = 'paysuccess.html'
                }
            })
        </script>
</body>


</html>