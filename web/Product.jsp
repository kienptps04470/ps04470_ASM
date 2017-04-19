<%-- 
    Document   : Product
    Created on : Sep 28, 2016, 11:05:10 AM
    Author     : Admin
--%>
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
                            <a href="Giohangquantri.jsp"/> <img src="Images/shopping_cart.png" width="60" height="40"/>  </a>
                            <a href="Lienhequantri.jsp"/> <img src="Images/home_warning.png" width="60" height="40"/>  </a>
                            <a href="uploadfile.jsp"/> <img src="Images/image_up.png" width="60" height="40"/>  </a>
                    </div>




                    </form> 
                    <table border="1">
                        <thead>
                            <tr>
                                <th>Mã SP</th>
                                <th>Tên SP </th>
                                <th>Giá</th>
                                <th>Màn hình</th>
                                <th>Ram</th>
                                <th>HDD</th>
                                <th>CPU</th>
                                <th>Khuyến mãi</th>
                                <th>Bảo hành</th>
                                <th>Tên file hình</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        </thead>

                    <c:forEach var="pb" items="${listSP}">
                        <form action="CtrlProducts">
                            <tr>
                                <td>${pb.code}</td>
                                <td>${pb.name}</td>
                                <td>${pb.price}</td>
                                <td>${pb.manhinh}</td>
                                <td>${pb.ram}</td>
                                <td>${pb.hdd}</td>
                                <td>${pb.cpu}</td>
                                <td>${pb.khuyenmai}</td>
                                <td>${pb.baohanh}</td>
                                <td>${pb.hinh}</td>
                                <c:url var="del" value="CtrlProducts"> 
                                    <c:param name="action" value="Edit"/>
                                    <c:param name="txtcode" value="${pb.code}"/>
                                    <c:param name="txtname" value="${pb.name}"/>
                                    <c:param name="txtprice" value="${pb.price}"/>
                                    <c:param name="txtmanhinh" value="${pb.manhinh}"/>
                                    <c:param name="txtram" value="${pb.ram}"/>
                                    <c:param name="txthdd" value="${pb.hdd}"/>
                                    <c:param name="txtcpu" value="${pb.cpu}"/>
                                    <c:param name="txtkhuyenmai" value="${pb.khuyenmai}"/>
                                    <c:param name="txtbaohanh" value="${pb.baohanh}"/>
                                    <c:param name="txthinh" value="${pb.hinh}"/>
                                </c:url>
                                <td><a href="${del}">Edit</a></td>
                                <td>
                                    <input type="hidden" name="txtcode" value="${pb.code}"/>
                                    <input type="submit" name="action" value="Delete"/>
                                </td> 


                            </tr>

                        </form>
                    </c:forEach>
                </table>
                <br/>
            </div>
            <jsp:include page="hieuungchuot.jsp"></jsp:include>
        </body>

    </html>
<%  }%>