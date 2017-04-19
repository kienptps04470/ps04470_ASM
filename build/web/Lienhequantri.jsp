<%-- 
    Document   : Product
    Created on : Sep 28, 2016, 11:05:10 AM
    Author     : Admin
--%>
<%@page import="Model.Lienhemd"%>
<%@page import="Model.Lienhe"%>
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

                    <%                  Lienhe lh = new Lienhe();
                        List<Lienhemd> list = lh.Hienthilienhe("");
                        request.setAttribute("lienhe", list);

                    %>

                    <c:forEach var="pb" items="${lienhe}">


                        <table border="1">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Tên Người Gửi</th>
                                    <th>Email</th>
                                    <th>Message</th>
                                    <th>Ngày Gửi</th>


                                </tr>
                            </thead>


                            <tr>
                                <td>${pb.code}</td>
                                <td>${pb.name}</td>
                                <td>${pb.email}</td>
                                <td>${pb.message}</td>
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
                <%  }%>