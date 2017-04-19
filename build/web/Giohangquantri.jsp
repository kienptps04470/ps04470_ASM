<%-- 
    Document   : Product
    Created on : Sep 28, 2016, 11:05:10 AM
    Author     : Admin
--%>
<%@page import="Model.Products"%>
<%@page import="java.util.List"%>
<%@page import="Model.Giohang"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    String username = (String) request.getSession().getAttribute("Taikhoanad");
    if (username == null) {
        response.sendRedirect("login.jsp");
    } else {
        
    

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
       
         <link rel="stylesheet" type="text/css" href="CSS/table.css"/>
         <link rel="stylesheet" type="text/css" href="CSS/searchpro.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <jsp:include page="menujsp.jsp"></jsp:include>
            
            <div class="tong">
        
       
            <div class="tongsearch1"> 
     
         <div class="hoversearch">
      <form action="CtrlProducts">  
<input type="search" placeholder="Search" name="txtTenSP" value="">
         </div>
 <input type='image' src="Images/Timkiem.png" width="60" height="38" alt="SUBMIT" name='action' class="cil" value='Tìm Kiếm'>
 <input type='image' src="Images/them.png" width="38" height="38" alt="SUBMIT" name='action' class="cil" value='Thêm Sản Phẩm'>  
  <input type='image' src="Images/users.png" width="38" height="38" alt="SUBMIT" name='action' class="cil" value='Quản lí tài khoản'>
 <input type='image' src="Images/email.png" width="60" height="40" alt="SUBMIT" name='action' class="cil" value='Quanlisukientintuc'> 
            </div>
     
  
          
         
        </form> 
             
              <%
                Products listgiohang= new Products();
                List<Giohang> list=listgiohang.Hienthigiohang("");
                request.setAttribute("giohang", list);
                 
                %>
                    
                     <c:forEach var="pb" items="${giohang}">
        
             
         <table border="1">
             <thead>
            <tr>
                <th>Mã SP</th>
                <th>Tên SP </th>
                <th>Giá</th>
                <th>Số lượng</th>
                <th>Người mua</th>
                <th>Ngày mua</th>
             
                
            </tr>
             </thead>
       
        
            <tr>
                <td>${pb.code}</td>
                <td>${pb.name}</td>
                <td>${pb.gia}</td>
                <td>${pb.soluong}</td>
                <td>${pb.tenkh}</td>
                <td>${pb.ngaygio}</td>
           
                    
            </tr>
                 <br/>
                </form>
            </c:forEach>
        </table>
            <br/>
            </div>
              <jsp:include page="hieuungchuot.jsp"></jsp:include>
    </body>
    
</html>
<%  } %>