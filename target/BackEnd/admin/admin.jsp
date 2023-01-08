<%@ page import="services.RandomTextService" %>
<%@ page import="Model.Category" %>
<%@ page import="DAO.DAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="content-type" content="text/html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/stylesheet/admin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Play&family=Poppins:wght@300;400&family=Roboto&display=swap"
          rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Play&family=Poppins:wght@300;400&family=Roboto&display=swap');

        * {
            font-family: 'Play', sans-serif;
            font-family: 'Poppins', sans-serif;
            font-family: 'Roboto', sans-serif;
        }
    </style>
</head>
</head>

<body>
<div class="container">
    <aside>
        <div class="top">
            <a class="navbar-brand" href="#">
                <i class="fas fa-film mr-2"></i>
                Catalog-Z
            </a>
            <div class="admin_info">
                <div class="img_admin">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSy7nFdX1g_CVR4WyP5LgKOGytP0J8PE53_RQ&usqp=CAU"
                         alt="">
                </div>
                <div style="margin-left: 1rem"><h3 style="text-align: center">Quản lý</h3>
                    <p style="text-align: center"> ${user.fullName}</p></div>
            </div>
        </div>
        <div class="sidebar">
            <a href="#" class="homepage">
                <i class="fa-sharp fa-solid fa-house"></i>
                <h3>Thông tin</h3>
            </a>
            <a href="#" class="category">
                <i class="fa-solid fa-earth-americas"></i>
                <h3>Quản trị danh mục</h3>
            </a>
            <a href="#" class="product_management">
                <i class="fa-solid fa-file-lines"></i>
                <h3>Quản lý sản phẩm</h3>
            </a>
            <a href="#" class="user_management">
                <i class="fa-solid fa-user"></i>
                <h3>Quản lý người dùng</h3>
            </a>
            <a href="/logOut">
                <i class="fa-solid fa-right-from-bracket"></i>
                <h3>Đăng xuất</h3>
            </a>
        </div>
    </aside>
    <div class="main">
        <c:if test="${message != null}">
            <h1 style="color:red"> ${message}</h1>
        </c:if>
    </div>
    <script>
        const main = document.querySelector('.main');
        const category = document.querySelector('.category');
        const interface = document.querySelector('.interface');
        const productManagement = document.querySelector('.product_management');
        const parts = document.querySelectorAll('.sidebar a');
        const homepage = document.querySelector('.homepage')
        const userManagement = document.querySelector('.user_management');
        Array.from(parts);
        parts[0].classList.add('active')
        for (let i = 0; i < parts.length; i++) {
            parts[i].addEventListener('click', function () {

                let j = 0
                while (j < parts.length) {
                    parts[j++].classList.remove('active')
                }
                parts[i].classList.add('active');
            })
        }

        function render() {
            main.innerHTML = `
            <form action="" class="form-control">
                <h1>Thông tin của admin</h1>
                <div class="product">
                    <label for="">Tên: </label>
                    <input type="text" value="${user.fullName}" readonly>
                </div>

                <div class="product">
                    <label for="">Email: </label>
                    <input type="email" value="${user.username}" readonly>
                </div>
                <div class="gender_input">
                    <label for="">Giới tính: </label>
                    <div class="gender">
                        <input type="radio" name="gender" checked="true" readonly>
                        <p>Nam</p>
                        <input type="radio" name="gender" id="" readonly>
                        <p>Nữ</p>
                    </div>

                </div>
                <div class="product">
                    <label for="">Ngày sinh: </label>
                    <input type="textx"value="${user.birthday}" readonly>
                </div>

            </form>`
        }

        render();
        homepage.addEventListener('click', function () {
            main.innerHTML = `
            <form action="" class="form-control">
                <h1>Thông tin của admin</h1>
                <div class="product">
                    <label for="">Tên: </label>
                    <input type="text" value="${user.fullName}" readonly>
                </div>

                <div class="product">
                    <label for="">Email: </label>
                    <input type="email" value="${user.username}" readonly>
                </div>
                <div class="gender_input">
                    <label for="">Giới tính: </label>
                    <div class="gender">
                        <input type="radio" name="gender" checked="true" readonly>
                        <p>Nam</p>
                        <input type="radio" name="gender" id="" readonly>
                        <p>Nữ</p>
                    </div>

                </div>
                <div class="product">
                    <label for="">Ngày sinh: </label>
                    <input type="text"value="${user.birthday}" readonly>
                </div>

            </form>`
        })

        category.addEventListener('click', () => {
            main.innerHTML = ` <div class="container_table">
                <table>
                    <thead>
                        <tr>
                        <th>Số thứ tự</th>
                            <th>Mã danh mục</th>
                            <th>Tên danh mục</th>
                            <th>Ảnh</th>

                            <th>Tác vụ</th>
                        </tr>
                    </thead>
                    <%! int j = 0;%>
                        <c:forEach var="c" items="${categories}">
                    <tbody>
                        <tr>
                               <td><%=j++%></td>
                            <td>${c.idCate}</td>
                            <td>${c.name}</td>
                            <td>
                                <img src="${c.img}"
                                    alt="">
                            </td>

                            <td>
                                <a style="color: red" href="DeleteCategory?id=${c.idCate}">Xóa</a>
                                     <br>
                                     <br>
                             <a style="color: green" href="LoadCatebyID?id=${c.idCate}">Chỉnh sửa </a>
                            </td>
                        </tr>
                    </tbody>
                    </c:forEach>
                </table>
            </div>
            <div class="add_product">
                <button class="add-product" onclick = "addCategory()">Thêm danh mục</button>
            </div>`

        })

        userManagement.addEventListener('click', function () {
            main.innerHTML = ` <div class="container_table">
                <table>
                    <thead>
                        <tr>
                            <th>Số thứ tự</th>
                            <th>Mã người dùng</th>
                            <th>Tên người dùng</th>
                            <th>Ảnh</th>
                            <th>Quyền </th>
                            <th>Tác vụ</th>
                        </tr>
                    </thead>
                        <%! int k = 1;%>
                        <c:forEach var="u" items="${users}">
                    <tbody>
                        <tr>
        <td><%=k++%></td>
                            <td>${u.id}</td>
                            <td>${u.fullName}</td>
                            <td>
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSy7nFdX1g_CVR4WyP5LgKOGytP0J8PE53_RQ&usqp=CAU"
                                    alt="">
                            </td>
                            <c:if test="${u.role == 0}">
                            <td> Người dùng </td>
                            </c:if>
                            <c:if test="${u.role == 1}">
                            <td> Quản lý </td>
                            </c:if>
                            <td>
                                <a style="color: red" href="DeleteUser?id=${u.id}">Xóa</a>
                                     <br>
                                     <br>
                                <a style="color: green" href="LoadUserbyID?id=${u.id}">Chỉnh sửa </a>
                            </td>
                        </tr>
                    </tbody>
               </c:forEach>

                </table>
            </div>
            <div class="add_product">
                <button class="add-product" onclick = "addAccount()">Thêm tài khoản</button>
            </div>`

        })
        productManagement.addEventListener('click', () => {
            main.innerHTML = `  <div class="container_table">
                <table>
                    <thead>
                        <tr>
                            <th>Số thứ tự</th>
                            <th>Danh mục</th>
                            <th>Tên sản phẩm</th>
                            <th>Giá bán</th>
                            <th>Ảnh</th>
                            <th>Tác vụ</th>
                        </tr>
                    </thead>
                    <%! int i = 1;%>
                    <c:forEach var="p" items="${products}">
                    <tbody>
                        <tr>
                        <td><%=i++%></td>
                            <td>${p.nameCate}</td>
                            <td>${p.name}</td>
                            <td>${p.getDisplayPrice()}</td>
                            <td>
                           <img src="${p.img}"
                                    alt="">
                            </td>
                            <td>
                                <a style="color: red" href="DeleteProduct?id=${p.id}">Xóa</a>
                                <br>
                                <br>
                                <a  style="color: green" href="LoadProductbyID?id=${p.id}">Chỉnh sửa</a>
                            </td>
                        </tr>
                    </tbody>
                </c:forEach>

                </table>
            </div>
            <div class="add_product">
                <button class="add-product" onclick = "addProduct()">Thêm sản phẩm</button>
            </div>
            `

        })

        function addProduct() {
            main.innerHTML = ` <form action="AddProductControl" method="get" class="form-control">
                <h1>Thông tin sản phẩm</h1>
                <div class="product">
                    <label for="">Mã sản phẩm: </label>
                    <input type="text" name="idProduct" value="<%=RandomTextService.nextRandom()%>" readonly>
                </div>
                <div class="product">
                    <label for="">Tên sản phẩm: </label>
                    <input type="text" name="nameProduct">
                </div>
                <div class="product">
                    <label for="nameCategory">Tên danh mục: </label>
                    <select name="nameCategory" id="nameCategory">
                    <%for(Category c :DAO.getInstance().loadCategory()){%>
                    <option><%=c.getName()%></option>
                    <%}%>
                    </select>
                </div>
                <div class="product">
                    <label for="">Ảnh: </label>
                    <input type="text" name="imgProduct">
                </div>


                <div class="product">
                    <label for="">Giá: </label>
                    <input type="" name="price">
                </div>
                <div class="product">
                    <label for="">Mô tả: </label>
                    <input type="text" name="descProduct">
                </div>
                <div class="confirm">
                    <input type="submit" value="Xác nhận" class="confirm_input" >
                </div>
            </form>`;
        }

        function addCategory() {
            main.innerHTML = ` <form action="AddCategoryControl" method="get" class="form-control">
                <h1>Thông tin sản phẩm</h1>
                <div class="product">
                    <label for="">Mã danh mục: </label>
                    <input type="text" name="idCate">
                </div>
                <div class="product">
                    <label for="">Tên danh mục: </label>
                    <input type="text" name="nameCate">
                </div>
                <div class="product">
                    <label for="">Ảnh: </label>
                    <input type="text" name="imgCate">
                </div>
                <div class="product">
                    <label for="">Mô tả: </label>
                    <input type="text" name="descCate">
                </div>
                <div class="confirm">
                    <input type="submit" value="Xác nhận" class="confirm_input" >
                </div>
            </form>`;

        }

        function addAccount() {

            main.innerHTML = `
<form action="AddAccountControl" method="get" class="form-control">
                <h1>Thông tin người dùng</h1>
                <div class="product">
                    <label for="">Mã người dùng: </label>
                    <input type="text" name="idAccount">
                </div>

                <div class="product">
                    <label for="">Họ và tên: </label>
                    <input type="text" name="fullName">
                </div>
                 <div class="product">
                    <label for="">Email: </label>
                    <input type="text" name="Email">
                </div>
                    <div class="product">
                    <label for="">Mật khẩu: </label>
                    <input type="password" name="password">
                    </div>
                <div class="product">
                    <label for="">Quyền hạn: </label>
                    <input type="text" name="role">
                </div>
                <div class="confirm">
                    <input type="submit" value="Xác nhận" class="confirm_input" >
                </div>
            </form>`;

        }

    </script>
</div>
</body>

</html>