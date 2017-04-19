<%-- 
    Document   : Quanliuser
    Created on : Oct 12, 2016, 10:29:55 PM
    Author     : Admin
--%>
<%
    String username = (String) request.getSession().getAttribute("Taikhoanad");
    if (username == null) {
        response.sendRedirect("login.jsp");
    } else {


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="CSS/table.css"/>
        <link rel="stylesheet" type="text/css" href="CSS/searchuser.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>

        <jsp:include page="menujsp.jsp"></jsp:include>

            <div class="tong">
                <h1>Thong tin account!</h1>
                <form action="Ctrluser">
                    <div class="tongsearch">          
                        <div class="hoversearch">
                            <input type="search" placeholder="Search" name="txtHoten" value="">
                        </div>
                        <input type='image' src="Images/Timkiem.png" width="60" height="38" alt="SUBMIT" name='action' class="cil" value='Timkiem'>  
                        <input type='image' src="Images/them.png" width="38" height="38" alt="SUBMIT" name='action' class="cil" value='ThemTaikhoan'>

                        <a href="Giohangquantri.jsp"/> <img src="Images/shopping_cart.png" width="60" height="40"/>  </a>
                        <a href="uploadfile.jsp"/> <img src="Images/image_up.png" width="60" height="40"/>  </a>


                    </div>

                </form>
                <br/>
                <table border="1">
                    <tr>
                        <td>Tai khoan</td>
                        <td>Mat khau </td>
                        <td>Ho ten</td>
                        <td>Email</td>
                        <td>role</td>
                        <td>Edit</td>
                        <td>Delete</td>

                    </tr>

                <c:forEach var="pb" items="${ListKH}">
                    <form action="Ctrluser">
                        <tr>
                            <td>${pb.taikhoan}</td>
                            <td>${pb.matkhau}</td>
                            <td>${pb.hoten}</td>
                            <td>${pb.email}</td>
                            <td>${pb.role}</td>

                            <c:url var="del" value="Ctrluser"> 
                                <c:param name="action" value="Edit"/>
                                <c:param name="txtTaikhoan" value="${pb.taikhoan}"/>
                                <c:param name="txtmatkhau" value="${pb.matkhau}"/>
                                <c:param name="txthoten" value="${pb.hoten}"/>
                                <c:param name="txtemail" value="${pb.email}"/>
                                <c:param name="txtrole" value="${pb.role}"/>
                            </c:url>
                            <td><a href="${del}">Edit</a></td>
                            <td>
                                <input type="hidden" name="txtTaikhoan" value="${pb.taikhoan}"/>
                                <input type="submit" name="action" value="Delete"/>
                            </td> 


                        </tr>

                    </form>
                </c:forEach>
            </table> 
            <br/>
        </div>
    </body>
    <jsp:include page="hieuungchuot.jsp"></jsp:include>
    </html>
<%  }%>