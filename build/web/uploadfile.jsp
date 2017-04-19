<%-- 
    Document   : uploadfile
    Created on : Oct 17, 2016, 12:59:51 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <form action="Upload" method="Post" enctype="multipart/form-data">
            Select file to upload:
            <input type="file" name="uploadFile" value="" />
       
            <br/><br/>
            <input type="submit" name="action" value="Tailen" />
        </form>
        
        
        <br/>
${msg}
  

    </body>
</html>
