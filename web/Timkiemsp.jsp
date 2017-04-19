<%-- 
    Document   : thunghiem
    Created on : Sep 28, 2016, 12:13:20 PM
    Author     : Admin
--%>

<%@page import="java.util.List"%>
<%@page import="Model.Product"%>
<%@page import="Model.Products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="CSS/conten.css"/>
        <link rel="stylesheet" href="CSS/product.css" />
        <link rel="stylesheet" type="text/css" href="CSS/table.css"/>
        <link rel="stylesheet" type="text/css" href="CSS/search.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="menujsp.jsp"></jsp:include>
        <jsp:include page="contentrai.jsp"></jsp:include>

            <div class="tongsearch1"> 


                <div class="icongiohang">

                </div>
                <div class="tieudekm"> 

                <%-- begin doan ma tieu de 7 mau----%>       
                <center>

                    <script type="text/javascript">
                        farbbibliothek = new Array();
                        farbbibliothek[0] = new Array("#FF0000", "#FF1100", "#FF2200", "#FF3300", "#FF4400", "#FF5500", "#FF6600", "#FF7700", "#FF8800", "#FF9900", "#FFaa00", "#FFbb00", "#FFcc00", "#FFdd00", "#FFee00", "#FFff00", "#FFee00", "#FFdd00", "#FFcc00", "#FFbb00", "#FFaa00", "#FF9900", "#FF8800", "#FF7700", "#FF6600", "#FF5500", "#FF4400", "#FF3300", "#FF2200", "#FF1100");
                        farbbibliothek[1] = new Array("#00FF00", "#000000", "#00FF00", "#00FF00");
                        farbbibliothek[2] = new Array("#00FF00", "#FF0000", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00", "#00FF00");
                        farbbibliothek[3] = new Array("#FF0000", "#FF4000", "#FF8000", "#FFC000", "#FFFF00", "#C0FF00", "#80FF00", "#40FF00", "#00FF00", "#00FF40", "#00FF80", "#00FFC0", "#00FFFF", "#00C0FF", "#0080FF", "#0040FF", "#0000FF", "#4000FF", "#8000FF", "#C000FF", "#FF00FF", "#FF00C0", "#FF0080", "#FF0040");
                        farbbibliothek[4] = new Array("#FF0000", "#EE0000", "#DD0000", "#CC0000", "#BB0000", "#AA0000", "#990000", "#880000", "#770000", "#660000", "#550000", "#440000", "#330000", "#220000", "#110000", "#000000", "#110000", "#220000", "#330000", "#440000", "#550000", "#660000", "#770000", "#880000", "#990000", "#AA0000", "#BB0000", "#CC0000", "#DD0000", "#EE0000");
                        farbbibliothek[5] = new Array("#000000", "#000000", "#000000", "#FFFFFF", "#FFFFFF", "#FFFFFF");
                        farbbibliothek[6] = new Array("#0000FF", "#FFFF00");
                        farben = farbbibliothek[4];
                        function farbschrift()
                                {
                                for (var i = 0; i < Buchstabe.length; i++)
                                        {
                                        document.all["a" + i].style.color = farben[i];
                                        }
                                farbverlauf();
                                }
                        function string2array(text)
                                {
                                Buchstabe = new Array();
                                while (farben.length < text.length)
                                        {
                                        farben = farben.concat(farben);
                                        }
                                k = 0;
                                while (k <= text.length)
                                        {
                                        Buchstabe[k] = text.charAt(k);
                                        k++;
                                        }
                                }
                        function divserzeugen()
                                {
                                for (var i = 0; i < Buchstabe.length; i++)
                                        {
                                        document.write("<span id='a" + i + "' class='a" + i + "'>" + Buchstabe[i] + "<\/span>");
                                        }
                                farbschrift();
                                }
                        var a = 1;
                        function farbverlauf()
                                {
                                for (var i = 0; i < farben.length; i++)
                                        {
                                        farben[i - 1] = farben[i];
                                        }
                                farben[farben.length - 1] = farben[ - 1];
                                setTimeout("farbschrift()", 30);
                                }
                    //
                        var farbsatz = 1;
                        function farbtauscher()
                                {
                                farben = farbbibliothek[farbsatz];
                                while (farben.length < text.length)
                                        {
                                        farben = farben.concat(farben);
                                        }
                                farbsatz = Math.floor(Math.random() * (farbbibliothek.length - 0.0001));
                                }
                        setInterval("farbtauscher()", 5000);
                        text = "KẾT QUẢ TÌM KIẾM"; //h
                        string2array(text);
                        divserzeugen();
                    //document.write(text);
                    </script> </center>    

                <%-- end doan ma tieu de 7 mau----%>            



            </div>
            <div class="hoversearch">
                <form action="SanPhamlaptop">  
                    <input type="search" placeholder="Search" name="txtTenSP" value="">
                    </div>
                    <input type='image' src="Images/Timkiem.png" width="60" height="38" alt="SUBMIT" name='action' class="cil" value='Add too cart'>
                </form> 
            </div>
            <jsp:include page="conten.jsp"></jsp:include>
                <div class="tongtrangchu">
                    <br/>
                    <div id="site-wrapper">

                        <ul class="products homepage">


                        <c:forEach var="pb" items="${listSP}">
                            <form action="CtrlCartbean">
                                <%-- begin sp----%>
                                <li class="preorder"><span class="tagimg "></span> 
                                    <a href="detail.jsp?ma_san_pham=" class="product-image"> 
                                        <img src="Images/${pb.hinh}" width=" 250px" height="250px" /> 

                                        <h3>${pb.name}</h3>
                                        <h4>
                                            Giá: ${pb.price} VNĐ
                                        </h4>
                                        <span class="textkm">Khuyến mãi trị giá đến <strong>${pb.khuyenmai}</strong> 
                                            <input type='image' src="Images/addgiohang.png" alt="SUBMIT" name='action' class="cil" value='Add too carttrangsp'>
                                        </span>
                                        <p class="info">
                                            <span>Mã sản phẩm: ${pb.code}</span>
                                            <span>Màn hình: ${pb.manhinh}</span>
                                            <span>Ram: ${pb.ram}</span> 
                                            <span>CPU: ${pb.cpu}</span>
                                            <span>HDD: ${pb.hdd}</span>
                                            <span>Bảo hành: ${pb.baohanh}</span>
                                        </p>
                                    </a></li>
                                <input type="hidden" name="txtcode" value="${pb.code}"/>
                                <input type="hidden" name="txtname" value="${pb.name}"/>
                                <input type="hidden" name="txtprice" value="${pb.price}"/>
                                <input type="hidden" name="txtmanhinh" value="${pb.manhinh}"/>
                                <input type="hidden" name="txtram" value="${pb.ram}"/>
                                <input type="hidden" name="txthdd" value="${pb.hdd}"/>
                                <input type="hidden" name="txtcpu" value="${pb.cpu}"/>
                                <input type="hidden" name="txtkhuyenmai" value="${pb.khuyenmai}"/>
                                <input type="hidden" name="txtbaohanh" value="${pb.baohanh}"/>
                                <input type="hidden" name="txthinh" value="${pb.hinh}"/>

                            </form>
                            <%-- end sp----%>
                        </c:forEach>
                    </ul>
                </div>



                <%--   
                   <table border="1">
                      <tr>
                          <td>Mã SP</td>
                          <td>Tên SP </td>
                          <td>Giá</td>
                       
                      </tr>
                 
                      <c:forEach var="pb" items="${listSP}">
                    
                      <tr>
                          <td>${pb.code}</td>
                          <td>${pb.name}</td>
                          <td>${pb.price}</td>
                        
           
                              
                      </tr>
                      
                       
                      </c:forEach>
                  </table>
                --%>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>




        </body>
    <jsp:include page="hieuungchuot.jsp"></jsp:include>     

</html>
