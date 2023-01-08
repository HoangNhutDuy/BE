<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- Favicon -->
  <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet" />

  <!-- Animate On Scroll -->
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<%--  <link rel="stylesheet" href="../css/bootstrap.min.css">--%>
<%--  <link rel="stylesheet" href="../fonts/fontawesome/css/all.min.css">--%>
<%--  <link rel="stylesheet" href="../css/templatemo-style.css">--%>
<%--  <link rel="stylesheet" href="../css/style.css">--%>
<%--  <link rel="stylesheet" href="../css/company.css">--%>
<%--  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">--%>
  <title>Document</title>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="../jquery-ui-1.13.0.custom/jquery-ui.js"></script>
  <script src="mainUser.js"></script>
  <link rel="stylesheet" href="styles.css" />
  <link rel="stylesheet" href="mainUser.css"/>
  <link rel="stylesheet" href="jquery-ui-user.css"/>
</head>
<body>
<!-- Page Loader -->
<%--<div id="loader-wrapper">--%>

<%--</div>--%>
<%--<header id="header"></header>--%>

<%--<div class="tm-hero d-flex justify-content-center align-items-center" data-parallax="scroll" data-image-src="../img/hero.jpg"></div>--%>

<main id="main">
  <div class="container">
    <div class="contentDiv">
      <div class="leftContent">
        <div class="account">
          <img src="../img/emiu.jpg" alt="avatar" class="avatar">
          <div class="nameAccount">
            <p class="userName">${user.fullName}</p>
            <p class="changeTop">Sửa hồ sơ</p>
          </div>
        </div>
        <div class="navbody">
          <div class="item">
            <img src="../img/account.png" alt="" class="itemIcon">
            <div>
              <p class="itemContent 1">Tài khoản của tôi</p>
            </div>
          </div>
          <div class="item">
            <img src="../img/donHang.png" alt="" class="itemIcon">
            <div>
              <p class="itemContent 2">Đơn mua</p>
            </div>
          </div>
          <div class="item">
            <img src="../img/notification.png" alt="" class="itemIcon">
            <div>
              <p class="itemContent 3">Thông báo</p>
            </div>
          </div>
          <div>
            <a href="/home"><button class="DangXuat">Quay lại</button> </a>
          </div>
        </div>
      </div>
      <div class="rightContent">
        <div id="tabs">
          <ul>
            <li><a href="#tabs-1">Tất cả</a></li>
            <li><a href="#tabs-2">Chờ xác nhận</a></li>
            <li><a href="#tabs-3">Chờ lấy hàng</a></li>
            <li><a href="#tabs-4">Đang giao</a></li>
            <li><a href="#tabs-5">Đã giao</a></li>
            <li><a href="#tabs-6">Đã hủy</a></li>
          </ul>
          <div id="tabs-1">
            <div class="container">
              <div class="container_top">
                <img class="anh_san_pham" src="img/ip13.jpg" alt="san_pham">
                <div class="review_sp">
                  <div>
                    <p class="ten_san_pham">Iphone 13 Pro Max 128GB</p>
                    <p class="so_luong">Số lượng: x1</p>
                  </div>
                  <p class="gia_tien">33.990.000VND</p>
                </div>
              </div>
              <div class="container_bottom">
                <div class="thong_tin">
                  <p class="trang_thai">Trạng thái: <span>Đã giao</span></p>
                  <p class="tong_tien">Tổng số tiền: <span class="tien">34.000.000VND</span></p>
                </div>
                <div class="buttons">
                  <button class="mua_lai">Mua lại</button>
                  <button class="phan_hoi">Phản hồi</button>
                </div>
              </div>
            </div>
            <div class="container">
              <div class="container_top">
                <img class="anh_san_pham" src="img/oppo-reno6.jpg" alt="san_pham">
                <div class="review_sp">
                  <div>
                    <p class="ten_san_pham">OPPO Reno6 Z 5G</p>
                    <p class="so_luong">Số lượng: x1</p>
                  </div>
                  <p class="gia_tien">9.490.000VND</p>
                </div>
              </div>
              <div class="container_bottom">
                <div class="thong_tin">
                  <p class="trang_thai">Trạng thái: <span>Đã hủy</span></p>
                  <p class="tong_tien">Tổng số tiền: <span class="tien">9.500.000VND</span></p>
                </div>
                <div class="buttons">
                  <button class="mua_lai">Mua lại</button>
                  <button class="phan_hoi">Phản hồi</button>
                </div>
              </div>
            </div>
            <div class="container last">
              <div class="container_top">
                <img class="anh_san_pham" src="img/ss-fold3.jpg" alt="san_pham">
                <div class="review_sp">
                  <div>
                    <p class="ten_san_pham">Samsung Galaxy Z Fold3 5G 256GB</p>
                    <p class="so_luong">Số lượng: x1</p>
                  </div>
                  <p class="gia_tien">33.990.000VND</p>
                </div>
              </div>
              <div class="container_bottom">
                <div class="thong_tin">
                  <p class="trang_thai">Trạng thái: <span>Đang giao</span></p>
                  <p class="tong_tien">Tổng số tiền: <span class="tien">34.000.000VND</span></p>
                </div>
                <div class="buttons">
                  <button class="mua_lai">Mua lại</button>
                  <button class="phan_hoi">Phản hồi</button>
                </div>
              </div>
            </div>
          </div>
          <div id="tabs-2">
            <div class="container empty">
              <p>Không có đơn hàng nào</p>
            </div>
          </div>
          <div id="tabs-3">
            <div class="container empty">
              <p>Không có đơn hàng nào</p>
            </div>
          </div>
          <div id="tabs-4">
            <div class="container last">
              <div class="container_top">
                <img class="anh_san_pham" src="img/ss-fold3.jpg" alt="san_pham">
                <div class="review_sp">
                  <div>
                    <p class="ten_san_pham">Samsung Galaxy Z Fold3 5G 256GB</p>
                    <p class="so_luong">Số lượng: x1</p>
                  </div>
                  <p class="gia_tien">33.990.000VND</p>
                </div>
              </div>
              <div class="container_bottom">
                <div class="thong_tin">
                  <p class="trang_thai">Trạng thái: <span>Đang giao</span></p>
                  <p class="tong_tien">Tổng số tiền: <span class="tien">34.000.000VND</span></p>
                </div>
                <div class="buttons">
                  <button class="mua_lai">Mua lại</button>
                  <button class="phan_hoi">Phản hồi</button>
                </div>
              </div>
            </div>
          </div>
          <div id="tabs-5">
            <div class="container last">
              <div class="container_top">
                <img class="anh_san_pham" src="img/ip13.jpg" alt="san_pham">
                <div class="review_sp">
                  <div>
                    <p class="ten_san_pham">Iphone 13 Pro Max 128GB</p>
                    <p class="so_luong">Số lượng: x1</p>
                  </div>
                  <p class="gia_tien">33.990.000VND</p>
                </div>
              </div>
              <div class="container_bottom">
                <div class="thong_tin">
                  <p class="trang_thai">Trạng thái: <span>Đã giao</span></p>
                  <p class="tong_tien">Tổng số tiền: <span class="tien">34.000.000VND</span></p>
                </div>
                <div class="buttons">
                  <button class="mua_lai">Mua lại</button>
                  <button class="phan_hoi">Phản hồi</button>
                </div>
              </div>
            </div>
          </div>
          <div id="tabs-6">
            <div class="container last">
              <div class="container_top">
                <img class="anh_san_pham" src="img/oppo-reno6.jpg" alt="san_pham">
                <div class="review_sp">
                  <div>
                    <p class="ten_san_pham">OPPO Reno6 Z 5G</p>
                    <p class="so_luong">Số lượng: x1</p>
                  </div>
                  <p class="gia_tien">9.490.000VND</p>
                </div>
              </div>
              <div class="container_bottom">
                <div class="thong_tin">
                  <p class="trang_thai">Trạng thái: <span>Đã hủy</span></p>
                  <p class="tong_tien">Tổng số tiền: <span class="tien">9.500.000VND</span></p>
                </div>
                <div class="buttons">
                  <button class="mua_lai">Mua lại</button>
                  <button class="phan_hoi">Phản hồi</button>
                </div>
              </div>
            </div>
          </div>

        </div>
        <div id="tab1">
          <div class="top">
            <p>HỒ SƠ CỦA TÔI</p>
            <p>Quản lí thông tin hồ sơ để bảo mật tài khoản</p>
          </div>
          <div class="bottom">
            <form action="#logoJCTop" method="dialog">
              <table>
                <tr>
                  <td>
                    <label for="ten">Tên:</label>
                  </td>
                  <td>
                    <input type="text" value="${user.fullName}" id="ten">
                  </td>
                </tr>
                <tr>
                  <td>
                    <label for="email">Email:</label>
                  </td>
                  <td>
                    <input type="email" name="email" value="${user.username}" id="email">
                  </td>
                </tr>
                <tr>
                  <td>
                    <label for="phone_number">Số điện thoại:</label>
                  </td>
                  <td>
                    <input type="tel" name="phone_number" value="0359123456" pattern="[0]{1}[0-9]{9}"
                           placeholder="gồm 10 số và bắt đầu bằng số 0" id="phone" title="gồm 10 số và bắt đầu bằng số 0">
                  </td>
                </tr>
                <tr>
                  <td>
                    <label for="">Giới tính:</label>
                  </td>
                  <td>
                    <input type="radio" name="gt" value="nam" class="gt" checked>
                    <label for="gt">Nam</label>
                    <input type="radio" name="gt" value="nu" class="gt">
                    <label for="gt">Nữ</label>
                    <input type="radio" name="gt" value="khac" class="gt">
                    <label for="gt">Khác</label>
                  </td>
                </tr>
                <tr>
                  <td>
                    <label for="date">Ngày sinh:</label>
                  </td>
                  <td>
                    <input type="text" name="date" id="datepicker" value="01/01/2007">
                  </td>
                </tr>
                <tr>
                  <td></td>
                  <td>
                    <input type="submit" value="Lưu" id="submit">
                    <button id="changePassBT">Đổi mật khẩu</button>
                  </td>
                </tr>
              </table>
              <div class="chooseAvatar">
                <img src="../img/emiu.jpg" alt="" class="avatar">
                <input type="file" value="http://127.0.0.1:8080/img/emiu.jpg" accept="image/*" id="file">
                <input type="button" class="fileBT" value="Chọn ảnh">
              </div>
            </form>
          </div>
        </div>
        <div id="tab3">
          <div class="thong_bao_control">
            <button class="delete">Xóa tất cả thông báo</button>
            <button class="readed">Đánh dấu đã đọc tất cả</button>
          </div>
          <div class="thong-bao-container">
            <div class="thong_bao_div unread">
              <img src="img/ip13.jpg" alt="san_pham">
              <div class="thong_bao_content">
                <p class="thong_bao_head">Giao hàng thành công</p>
                <p class="thong_bao_chitiet">Kiện hàng ABC123XYZ đã giao thành công đến bạn</p>
                <p class="thoi_gian">12:00 17/03/2021</p>
              </div>
              <div class="thong_bao_bt">
                <button>Xem chi tiết đơn hàng</button>
              </div>
            </div>
            <div class="thong_bao_div unread">
              <img src="img/ss-fold3.jpg" alt="san_pham">
              <div class="thong_bao_content">
                <p class="thong_bao_head">Giao hàng thành công</p>
                <p class="thong_bao_chitiet">Kiện hàng ABC456XYZ đã giao thành công đến bạn</p>
                <p class="thoi_gian">11:50 17/03/2021</p>
              </div>
              <div class="thong_bao_bt">
                <button>Xem chi tiết đơn hàng</button>
              </div>
            </div>
            <div class="thong_bao_div unread">
              <img src="img/oppo-reno6.jpg" alt="san_pham">
              <div class="thong_bao_content">
                <p class="thong_bao_head">Giao hàng thất bại</p>
                <p class="thong_bao_chitiet">Kiện hàng JOHNYDANG đã giao thất bại</p>
                <p class="thoi_gian">00:00 14/03/2021</p>
              </div>
              <div class="thong_bao_bt">
                <button>Xem chi tiết đơn hàng</button>
              </div>
            </div>
            <div class="thong_bao_div">
              <img src="img/ip13.jpg" alt="san_pham">
              <div class="thong_bao_content">
                <p class="thong_bao_head">Giao hàng thành công</p>
                <p class="thong_bao_chitiet">Kiện hàng KHOAPUG đã giao thành công đến bạn</p>
                <p class="thoi_gian">12:10 13/03/2021</p>
              </div>
              <div class="thong_bao_bt">
                <button>Xem chi tiết đơn hàng</button>
              </div>
            </div>
            <div class="thong_bao_div unread">
              <img src="img/ss-fold3.jpg" alt="san_pham">
              <div class="thong_bao_content">
                <p class="thong_bao_head">Hủy đơn hàng thành công</p>
                <p class="thong_bao_chitiet">Đơn hàng NYSIEUXINHDEP đã được hủy</p>
                <p class="thoi_gian">03:00 17/03/2020</p>
              </div>
              <div class="thong_bao_bt">
                <button>Xem chi tiết đơn hàng</button>
              </div>
            </div>
            <div class="thong_bao_div">
              <img src="img/oppo-reno6.jpg" alt="san_pham">
              <div class="thong_bao_content">
                <p class="thong_bao_head">Đặt hàng thành công</p>
                <p class="thong_bao_chitiet">Đơn hàng LAPTOPUSAPRO đã được đặt thành công</p>
                <p class="thoi_gian">09:45 17/03/2019</p>
              </div>
              <div class="thong_bao_bt">
                <button>Xem chi tiết đơn hàng</button>
              </div>
            </div>
          </div>
        </div>
        <div id="changePassTab">
          <div class="container_top">
            <p>ĐỔI MẬT KHẨU</p>
          </div>
          <div class="container_bottom">
            <form action="" method="dialog">
              <table>
                <tr>
                  <td><label for="passcr">Mật khẩu hiện tại</label></td>
                  <td><input type="password" name="passcr" id=""></td>
                </tr>
                <tr>
                  <td><label for="newpass">Mật khẩu mới</label></td>
                  <td><input type="password" name="newpass" minlength="8"></td>
                </tr>
                <tr>
                  <td><label for="confirmPass">Xác nhận mật khẩu</label></td>
                  <td><input type="password" name="confirmPass" id="" minlength="8"></td>
                </tr>
                <tr>
                  <td></td>
                  <td>
                    <input type="submit" value="Lưu mật khẩu">
                    <button id="back">Trở về</button>
                  </td>
                </tr>
              </table>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</main>



<%--<footer id="footer" class="tm-bg-gray pt-5 pb-3 tm-text-gray tm-footer"></footer>--%>
<%--<script src="../js/plugins.js"></script>--%>
<%--<script src="../js/header.jsp"></script>--%>
<%--<script src="../js/footer.jsp"></script>--%>
<%--<script src="../js/loader.js" ></script>--%>
<%--<script>--%>
<%--  $(window).on("load", function() {--%>
<%--    $('body').addClass('loaded');--%>
<%--  });--%>
<%--</script>--%>
</body>
</html>