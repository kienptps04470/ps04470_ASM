<%-- 
    Document   : khachhang
    Created on : Sep 26, 2016, 10:09:43 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Dang nhap thanh cong!</h1>
        Khách hàng: ${sessionScope.Taikhoankh}
        <a href="Trangchu.jsp"> Quay lai Trang Chu </a>
        <jsp:include page="hieuungchuot.jsp"></jsp:include> 
    </body>
</html>
