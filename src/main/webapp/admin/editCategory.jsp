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
        <form action="EditCategoryControl" method="get" class="form-control">
            <h1>Thông tin danh mục</h1>
            <div class="product">
                <label for="">Mã danh mục: </label>
                <input type="text" name="idCate" value="${cate.idCate}" readonly>
            </div>
            <div class="product">
                <label for="">Tên danh mục: </label>
                <input type="text" name="nameCate" value="${cate.name}">
            </div>
            <div class="product">
                <label for="">Ảnh: </label>
                <input type="text" name="imgCate" value ="${cate.img}">
            </div>
            <div class="product">
                <label for="">Mô tả: </label>
                <input type="text" name="descCate" value = "${cate.description}">
            </div>
            <div class="confirm">
                <input type="submit" value="Chỉnh sửa" class="confirm_input" >
            </div>
        </form>
    </div>
</div>
</body>
</html>