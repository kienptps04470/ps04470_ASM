<%-- 
    Document   : newsp
    Created on : Sep 30, 2016, 4:32:26 PM
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
        <link rel="stylesheet" type="text/css" href="CSS/table.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NewSP</title>
    </head>
    <body>
        <h1>New SP</h1>
        <form action="CtrlProducts">
            <table border="1">
                <tr> <td>  Mã Sản Phẩm:</td><td>  <input type="text" name="txtcode" value=""/></td> </tr>
                <tr> <td>  Tên Sản Phẩm:</td><td> <input type="text" name="txtname" value=""/> </td> </tr>
                <tr> <td> Giá:</td><td>  <input type="text" name="txtprice" value=""/> </td> </tr>
                <tr> <td> Màn hình:</td><td>  <input type="text" name="txtmanhinh" value=""/> </td> </tr>
                <tr> <td> RAM:</td><td>  <input type="text" name="txtram" value=""/> </td> </tr>
                <tr> <td> HDD:</td><td>  <input type="text" name="txthdd" value=""/> </td> </tr>
                <tr> <td> CPU:</td><td>  <input type="text" name="txtcpu" value=""/> </td> </tr>
                <tr> <td> Khuyến mãi:</td><td>  <input type="text" name="txtkhuyenmai" value=""/> </td> </tr>
                <tr> <td> Bảo Hành:</td><td>  <input type="text" name="txtbaohanh" value=""/> </td> </tr>
                <tr> <td> Hình:</td><td>  <input type="text" name="txthinh" value=""/> </td> </tr>

            </table>
            <input type="submit" name="action" value="Thêm"/>
        </form>
    </body>
</html>
<%  }%>