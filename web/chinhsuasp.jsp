<%-- 
    Document   : chinhsuasp
    Created on : Sep 30, 2016, 2:29:41 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Chinh sua sp</h1>
        <form action="CtrlProducts">
            <table border="1">
                <tr> <td>   code:</td><td> ${SP.code} </td> </tr>
                <tr> <td> Tên SP : </td><td><input type="text" name="txtname" value="${SP.name}"/></td> </tr>
                <tr> <td> Giá:</td><td>  <input type="text" name="txtprice" value="${SP.price}"/></td> </tr> 
                <tr> <td> Màn Hình: </td><td> <input type="text" name="txtmanhinh" value="${SP.manhinh}"/> </td> </tr>
                <tr> <td>Ram: </td><td> <input type="text" name="txtram" value="${SP.ram}"/></td> </tr> 
                <tr> <td> HDD: </td><td> <input type="text" name="txthdd" value="${SP.hdd}"/></td> </tr>
                <tr> <td> CPU: </td><td> <input type="text" name="txtcpu" value="${SP.cpu}"/> </td> </tr>
                <tr> <td> Khuyến mãi: </td><td> <input type="text" name="txtkhuyenmai" value="${SP.khuyenmai}"/> </td> </tr>
                <tr> <td> Bảo Hành: </td><td> <input type="text" name="txtbaohanh" value="${SP.baohanh}"/></td> </tr> 
                <tr> <td> Tên file hình: </td><td> <input type="text" name="txthinh" value="${SP.hinh}"/></td> </tr>

                <input type="hidden" name="txtcode" value="${SP.code}"/>
            </table>
            <input type="submit" name="action" value="Update" />
        </form>
        <br/>

        <jsp:include page="hieuungchuot.jsp"></jsp:include>          

        </body>
    </html>
<%  }%>