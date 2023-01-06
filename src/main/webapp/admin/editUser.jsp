<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/stylesheet/admin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
<div class="container">
    <div class="main">
        <form action="/EditUserControl" class="form-control">
            <h1>Thông tin người dùng</h1>
            <div class="product">
                <label for="">Mã người dùng: </label>
                <input type="text" name="idAccount" value="${user.id}" readonly>
            </div>

            <div class="product">
                <label for="">Họ và tên: </label>
                <input type="text" name="fullName" value="${user.fullName}">
            </div>
            <div class="product">
                <label for="">Email: </label>
                <input type="text" name="email" value="${user.username}">
            </div>
            <div class="product">
                <label for="">Mật khẩu: </label>
                <input type="password" name="password" value="${user.password}">
            </div>
            <div class="product">
                <label for="">Quyền hạn: </label>
                <c:if test="${user.role == 0}">
                <input type="text" name="role" value="0">
                </c:if>
                    <c:if test="${user.role == 1}">
                <input type="text" name="role" value="1">
                    </c:if>
            </div>
            <div class="confirm">
                <input type="submit" value="Xác nhận" class="confirm_input" >
            </div>
        </form>
    </div>
</div>
</body>
</html>