<%-- 
    Document   : Themuser
    Created on : Oct 13, 2016, 12:42:06 AM
    Author     : Admin
--%>
<%
    String username = (String) request.getSession().getAttribute("Taikhoanad");
    if (username == null) {
        response.sendRedirect("login.jsp");
    } else {


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/table.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>THÊM TÀI KHOẢN</h1>
        <form action="Ctrluser">
            <table border="1">
                <tr> <td> Tên Tài Khoản:</td><td><input type="text" name="txtTaikhoan" value=""/> </td> </tr>
                <tr> <td>Mật Khẩu : </td><td> <input type="text" name="txtmatkhau" value=""/> </td> </tr>
                <tr> <td>Họ Tên:  </td><td> <input type="text" name="txthoten" value=""/> </td> </tr>
                <tr> <td> Email:  </td><td> <input type="text" name="txtemail" value=""/> </td> </tr>
                <tr> <td> role: </td><td>  <input type="text" name="txtrole" value=""/> </td> </tr>

            </table>
            <br/>
            <input type="submit" name="action" value="Thêm"/>
        </form>
    </body>
    <jsp:include page="hieuungchuot.jsp"></jsp:include>
    </html>
<%  }%>