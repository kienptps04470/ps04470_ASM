<%-- 
    Document   : newsp
    Created on : Sep 30, 2016, 4:32:26 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script type="text/javascript" src="js/tuyetroi.js"></script>
<link rel="stylesheet" type="text/css" href="CSS/menu.css"/>



<div class="hinhbn">
    <div class="tong3s">
        <div class="tenkhachhang">
            <marquee behavior="alternate"> <p> Xin Chào! ${sessionScope.Taikhoankh} ${sessionScope.Taikhoanad}</p></marquee>
        </div>
        <div class="dn">
            <a href="login.jsp"><img src="Images/icondangnhap.png" width="95" height="35"/> </a>
        </div>

        <div class="lgout">
            <form action="CtrlProducts">
                <input type='image' src="Images/out.png" width="40" height="33" alt="SUBMIT" name='action' class="cil" value='Logout'>
            </form>
        </div>

    </div>

</div>
<div class="tong">

    <div class="header">

        <div class="menu">
            <div class="logo"><a href="#"> <img src="Images/anh04.PNG"/> </a> </div>
            <ul>

                <li> <a href="Trangchu.jsp"> Trang Chủ </a> </li>
                <li> <a href="Gioithieu.jsp"> Giới thiệu </a> </li>
                <li> <a href="Tatcasp.jsp"> Sản Phẩm </a> 
                    <%-- begin
                    <ul>
                    <li> <a href="#"> ASUS </a> </li>
                    <li> <a href="#"> DELL </a> </li>
                    <li> <a href="#"> HP </a> </li>
                    <li> <a href="#"> SONY </a> </li>
                    <li> <a href="#"> ACER </a> </li>
                    <li> <a href="#"> LENOVO </a> </li>

</ul>

    end----%>

                </li>

                <li> <a href="Tintuc.jsp"> Đánh Giá </a> </li>
                <li> <a href="Giohangjs.jsp"> Giỏ Hàng</a> </li>
                <li> <a href="Lienhe.jsp"> Liên hệ</a> </li>
            </ul>
        </div>
        <jsp:include page="showbanner.jsp"></jsp:include>
    </div>

</div>





