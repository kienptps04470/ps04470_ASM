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
          <link rel="stylesheet" type="text/css" href="CSS/Giohangcss.css"/>
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
farbbibliothek[0] = new Array("#FF0000","#FF1100","#FF2200","#FF3300","#FF4400","#FF5500","#FF6600","#FF7700","#FF8800","#FF9900","#FFaa00","#FFbb00","#FFcc00","#FFdd00","#FFee00","#FFff00","#FFee00","#FFdd00","#FFcc00","#FFbb00","#FFaa00","#FF9900","#FF8800","#FF7700","#FF6600","#FF5500","#FF4400","#FF3300","#FF2200","#FF1100");
farbbibliothek[1] = new Array("#00FF00","#000000","#00FF00","#00FF00");
farbbibliothek[2] = new Array("#00FF00","#FF0000","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00");
farbbibliothek[3] = new Array("#FF0000","#FF4000","#FF8000","#FFC000","#FFFF00","#C0FF00","#80FF00","#40FF00","#00FF00","#00FF40","#00FF80","#00FFC0","#00FFFF","#00C0FF","#0080FF","#0040FF","#0000FF","#4000FF","#8000FF","#C000FF","#FF00FF","#FF00C0","#FF0080","#FF0040");
farbbibliothek[4] = new Array("#FF0000","#EE0000","#DD0000","#CC0000","#BB0000","#AA0000","#990000","#880000","#770000","#660000","#550000","#440000","#330000","#220000","#110000","#000000","#110000","#220000","#330000","#440000","#550000","#660000","#770000","#880000","#990000","#AA0000","#BB0000","#CC0000","#DD0000","#EE0000");
farbbibliothek[5] = new Array("#000000","#000000","#000000","#FFFFFF","#FFFFFF","#FFFFFF");
farbbibliothek[6] = new Array("#0000FF","#FFFF00");
farben = farbbibliothek[4];
function farbschrift()
{
for(var i=0 ; i<Buchstabe.length; i++)
{
document.all["a"+i].style.color=farben[i];
}
farbverlauf();
}
function string2array(text)
{
Buchstabe = new Array();
while(farben.length<text.length)
{
farben = farben.concat(farben);
}
k=0;
while(k<=text.length)
{
Buchstabe[k] = text.charAt(k);
k++;
}
}
function divserzeugen()
{
for(var i=0 ; i<Buchstabe.length; i++)
{
document.write("<span id='a"+i+"' class='a"+i+"'>"+Buchstabe[i] + "<\/span>");
}
farbschrift();
}
var a=1;
function farbverlauf()
{
for(var i=0 ; i<farben.length; i++)
{
farben[i-1]=farben[i];
}
farben[farben.length-1]=farben[-1];

setTimeout("farbschrift()",30);
}
//
var farbsatz=1;
function farbtauscher()
{
farben = farbbibliothek[farbsatz];
while(farben.length<text.length)
{
farben = farben.concat(farben);
}
farbsatz=Math.floor(Math.random()*(farbbibliothek.length-0.0001));
}
setInterval("farbtauscher()",5000);

text=    "GIỎ HÀNG CỦA BẠN"   ; //h
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
 <input type='image' src="Images/Timkiem.png" width="60" height="38" alt="SUBMIT" name='action' class="cil" value='Tìm Kiếm'>
       </form> 
 </div>
      <jsp:include page="conten.jsp"></jsp:include>
<div class="tongtrangchu">
        <br/>
   <%
    String username = (String) request.getSession().getAttribute("Taikhoankh");
    if (username == null) {
        response.sendRedirect("login.jsp");
    } else {
        
    

%> 
        
        <div class="giohang">
    
        <c:set var="shop" value="${sessionScope.SHOP}"/>
        <c:if test="${not empty shop}">
             <table border="1">
                         <thead>
            <tr>
                <td>STT</td>
                <td>Mã </td>
                <td>Tên SP</td>
                <td>Gía</td>
                <td>Hình</td>
                <td>Số lượng</td>
                <td>Action</td>
            </tr>
                         </thead>
                         <tbody>
        <form action="CtrlCartbean">
            <c:set var="count" value="0" />
             <c:forEach var="pb" items="${shop}">
          <c:set var="count" value="${count +1}"/>
          <tr>
              <td> ${count} </td><input type="hidden" name="txttentk" value=" ${sessionScope.Taikhoankh}"/>
               <td> ${pb.value.sanpham.code}   </td><input type="hidden" name="txtcode" value="${pb.value.sanpham.code}"/>
               <td> ${pb.value.sanpham.name} </td><input type="hidden" name="txtname" value="${pb.value.sanpham.name}"/>
               <td> ${pb.value.sanpham.price}  </td><input type="hidden" name="txtprice" value="${pb.value.sanpham.price}"/>
               <td><img src="Images/${pb.value.sanpham.hinh}" width="100px" height="100px;"/></td>
               
          
              
               
               
               
               
               <td><input type="text" name ="txtquantity" value="${pb.value.quantity}"/></td>
           <td> <input type="checkbox" name="rmv" value="${pb.value.sanpham.code}"   </td>
         
          </tr>
           
             </c:forEach>
          <tr>
              
              <c:url var="add" value="CtrlCartbean">
                  <c:param name="action" value="addMore"/>
              </c:url>
              <td></td><td></td><td></td><td></td><td></td>
              <td colspan="1"> <a href="${add}"> Add More </a></td>
              <td> <input type="submit" value="Remove" name="action"/> </td>
            </tr>
               </table>
              <div class="icondathang">
              <input type='image' src="Images/dat-hang.png" width="180" height="60" alt="SUBMIT" name='action' class="cil" value='Mua Hàng'/>
              </div>
              </form>
          
            
              
          
                         
                         
       
         
      
             </tbody>
            
        </c:if>
              
  
  <%  } %>
        </div>
        
            </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
         
    
   
  
    </body>
       <jsp:include page="hieuungchuot.jsp"></jsp:include>     

</html>
