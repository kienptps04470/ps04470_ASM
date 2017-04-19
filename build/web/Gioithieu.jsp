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
          <link rel="stylesheet" type="text/css" href="CSS/Gioithieu.css"/>
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

text=    "GIỚI THIỆU"   ; //h
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
    
        
        <div class="gioithieu">
            <p><strong> I. LỊCH SỬ HÌNH THÀNH</strong> </p>

Được thành lập vào tháng 4 năm 1997, Phong Vũ lúc đó là một cửa hàng buôn bán máy tính nhỏ lẻ. Qua nhiều năm Phong Vũ đã từng bước lớn mạnh và phát triển trong lĩnh vực kinh doanh các sản phẩm, linh kiện máy tính, thiết bị văn phòng, thông tin liên lạc và giải trí do các hãng điện tử hàng đầu trên thế giới sản xuất. Và đến tháng 7 năm 2007, Phong Vũ chính thức thành lập Công ty Cô phần Thương mại - Dịch vụ Phong Vũ.
Phong Vũ luôn phấn đấu, nỗ lực không ngừng để đem lại cho người tiêu dùng những sản phẩm công nghệ tiên tiến, và đã trở thành một trong những thương hiệu đáng tin cậy và được yêu thích nhất. Phong Vũ luôn cam kết cung cấp hàng chính hãng từ các nhà sản xuất, chất lượng luôn được đảm bảo và mức giá phù hợp trong môi trường cạnh tranh.
<br/>
<br/>
          <p><strong> II. THÀNH TỰU</strong> </p>  
            
        Với những nỗ lực không ngừng của tập thể Phong Vũ và bằng sự UY TÍN – TẬN TÂM – CHUYÊN NGHIỆP trong kinh doanh, những năm qua Phong Vũ đã liên tục đạt được nhiều thành tựu to lớn:
        <br/>
          * Hơn 8 năm liền vinh dự được Hội Tin Học TP HCM trao tặng huy chương vàng ICT đơn vị bán lẻ và Huy chương vàng Top ICT Việt Nam từ 2008 đến 2015.
  <br/>
  <br/>
  <div class="HCV">
  <img src="Images/HCV.png"/>
  </div>
  <br/>
  <br/>
  Giải thưởng là cửa hàng bán máy tính tại miền Nam được tín nhiệm nhất của Báo e- Chip công nhận vào năm 2007.
 <br/>
  <br/>           
            
     <div class="HCV2">
  <img src="Images/Echip.JPG"/>
  </div>       
           
   <br/>
  <br/>          
     Vinh dự được Tạp chí PC World trao tặng Giải Nhất Sản phẩm CNTT-TT ưa chuộng nhất 2009.       
   <br/>
  <br/> 
  
   <div class="HCV3">
  <img src="Images/giainhat.png"/>
  </div> 
   <br/>
  <br/>
 <p><strong> III. NGUỒN NHÂN LỰC</strong> </p>
 
Một tổ chức phát triển bền vững luôn cần có một đội ngũ nhân lực tốt về chất và lượng. 
Chính vì quan niệm đó mà đội ngũ nhân lực của Phong Vũ luôn được chọn lọc kỹ càng trước khi trải qua các quá trình đào tạo. 
Chúng tôi cập nhật thường xuyên những kiến thức sản phẩm mới nhất, không ngừng nâng cao trình độ chuyên môn kỹ thuật và tác phong giao tiếp với khách hàng luôn được chú trọng. Chúng tôi xem khả năng làm hài lòng khách hàng là thước đo thành công của chính mình.
  
  
  
  
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
