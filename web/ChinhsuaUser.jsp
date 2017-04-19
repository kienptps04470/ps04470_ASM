<%-- 
    Document   : ChinhsuaUser
    Created on : Oct 13, 2016, 12:56:46 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
          <link rel="stylesheet" type="text/css" href="CSS/table.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
        <h1>Chinh sua Tai khoan</h1>
       
        <form action="Ctrluser">
  <table border="1">
            <tr> <td> Ten tai khoan: </td><td>  ${acc.taikhoan}</td> </tr>
               <tr> <td> Mat khau :</td><td> <input type="text" name="txtmatkhau" value="${acc.matkhau}"/></td> </tr> 
                <tr> <td> Hoten: </td><td> <input type="text" name="txthoten" value="${acc.hoten}"/> </td> </tr>
                <tr> <td> Email: </td><td> <input type="text" name="txtemail" value="${acc.email}"/> </td> </tr>
                <tr> <td> role:  </td><td><input type="text" name="txtrole" value="${acc.role}"/> </td> </tr>
                
            
  </table>
                <br/>
                <input type="hidden" name="txtTaikhoan" value="${acc.taikhoan}"/>
                 <input type="submit" name="action" value="Update"/>
        </form>
                   <jsp:include page="hieuungchuot.jsp"></jsp:include>
    </body>
</html>
