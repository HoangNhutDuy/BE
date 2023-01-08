<%@ page import="Model.Cart" %>
<%@ page import="Model.Wishlist" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

const headerWeb = document.querySelector("#header");
headerWeb.innerHTML = `
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="/home">
            <i class="fas fa-film mr-2"></i>
            Catalog-Z
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link nav-link-1 active" aria-current="page" href="/home" title="Quay về trang chính">Hình
                        ảnh</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-3" href="about.html">Thông tin</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-4" href="contact.html">Liên hệ</a>
                </li>

                <c:if test="${sessionScope.user == null}">

                    <li class="nav-item">
                        <button class="nav-link nav-link-5"><a href="/login">Đăng nhập</a></button>
                    </li>
                    <li class="nav-item">
                        <button class="nav-link nav-link-6"><a href="/registration">Đăng ký</a></button>
                    </li>
                </c:if>
                <c:if test="${sessionScope.user != null}">
                    <li class="nav-item">
                        <a class="nav-link nav-link-4" href="user1/user.jsp"> <img
                                style="width: 30px; height:30px; object-fit: cover; border-radius: 50%;"
                                src="https://png.pngtree.com/element_our/20190604/ourmid/pngtree-user-avatar-boy-image_1482937.jpg"
                                alt="Image" class="avatar"></a>

                    </li>
                    <li class="nav-item">
                        <p class="nav-link"> ${sessionScope.user.fullName}</p>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../logOut">Đăng xuất</a>
                    </li>
                    <li class="nav-item" title="các sản phẩm đã yêu thích">
                        <div style="position: relative;">
                         <a class="nav-link nav-link-8" href="/wishlist"><i class="fa-solid fa-heart" style="font-size:30px"></i></a>
                            <%int listSize  = Wishlist.getInstance().getQuantity();
                                if(listSize > 0){
                            %>
                            <span style=" position: absolute;top: -2px;right: -2px; background: #f61919; color: white;border-radius: 50%;width:50%; text-align: center"><%=Wishlist.getInstance().getQuantity()%> </span>
                            <%}%>
                        </div>
                    </li>

                    <li class="nav-item" title="giỏ hàng">
                        <div style="position: relative;">
                            <a class="nav-link nav-link-7" href="/cart?action=show"> <i class="fa" style="font-size:28px">&#xf07a;</i></a>
                            <%int cartSize  = Cart.getInstance().getQuantity();
                                if(cartSize > 0){
                            %>
                            <span style=" position: absolute;top: -2px;right: -2px; background: #f14e4e; color: white;border-radius: 50%;width:50%; text-align: center"><%=Cart.getInstance().getQuantity()%> </span>
                            <%}%>
                        </div>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>
`
