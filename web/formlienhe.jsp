<%-- 
    Document   : formlienhe
    Created on : Oct 19, 2016, 3:31:06 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="CSS/fromlienhe.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="form-wrapper">
            <form action="Ctrllienhe">
                <div id="form-inner">

                    <label for="name">Name:</label>
                    <input type="text" class="input" id="name" name="txtname" placeholder="John Doe">

                    <label for="email">Email:</label>
                    <input type="text" class="input" id="email" name="txtemail" placeholder="john.doe@email.com">

                    <label for="message">Message:</label>
                    <textarea class="input textarea" id="message" name="txtmessage" placeholder="Your message here"></textarea>    

                    <input type="submit" class="button" name="action" value="Send message">

                </div>
            </form>
        </div>


    </body>
</html>
