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
        <form action="/EditProductControl" method="get" class="form-control">
            <h1>Thông tin danh mục</h1>
            <div class="product">
                <label for="">Mã sản phẩm: </label>
                <input type="text" name="idProduct" value="${product.id}" readonly>
            </div>
            <div class="product">
                <label for="">Tên sản phẩm: </label>
                <input type="text" name="nameProduct" value="${product.name}">
            </div>
            <div class="product">
                <label for="">Mã danh mục: </label>
                <input type="text" name="idCategory" value="${product.idCate}" readonly>
            </div>
            <div class="product">
                <label for="">Tên danh mục: </label>
                <input type="text" name="nameCategory" value="${product.nameCate}">
            </div>
            <div class="product">
                <label for="">Ảnh: </label>
                <input type="text" name="imgProduct" value="${product.img}">
            </div>


            <div class="product">
                <label for="">Giá: </label>
                <input type="text" name="price" value="${product.price}">
            </div>
            <div class="product">
                <label for="">Mô tả: </label>
                <input type="text" name="descProduct" value="${product.description}">
            </div>
            <div class="confirm">
                <input type="submit" value="Chỉnh sửa" class="confirm_input" >
            </div>
        </form>`;
        </form>
    </div>
</div>
</body>
</html>