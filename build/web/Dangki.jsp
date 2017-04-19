<%-- 
    Document   : Dangki
    Created on : Sep 28, 2016, 12:42:47 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="js/tuyetroi.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dangki</title>
        <link rel="stylesheet" type="text/css" href="CSS/Dangki.css"/>
    </head>
    <body>
       
    <div class="tongdk">  
    <div class="dktxt"> <h1>Đăng Ký!</h1>  </div>
    <form action="CtrlDKTK">
<table>
    <tr height="30px">
        <td width="100px">Tài Khoản</td>

        <td><input  type="text" name="taikhoan" value="" id="idd" required="required"/></td>
    </tr>
  
     
    <tr height="30px">
        <td>Mật Khẩu</td>
   
    
        <td><input  type="password"  name="matkhau" value="" id="idd" required="required"/></td>
    </tr>
    <tr height="30px">
        <td>Họ tên</td>
        <td><input  type="text" name="hoten" value="" id="idd" required="required"/></td>
    </tr>
    
     <tr height="30px">
        <td>Email</td>
   
    
        <td><input  type="text" name="email" value="" id="idd" required="required"/></td>
    </tr>
</table>
         <div class="nutbt">
 <input type='image' src="Images/dangki.png" width="150" height="48" alt="SUBMIT" name='action' class="cil" value='Dangki'>
    <input type="hidden" name="role" value="kh"/>
 </form>
    </div>
    </div>
          <jsp:include page="hieuungchuot.jsp"></jsp:include>
    </body>
</html>
