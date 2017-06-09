<%-- 
    Document   : index
    Created on : 23 Apr, 2017, 3:33:49 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/home.css" rel="stylesheet" type="text/css">
        <title>DMA LOGIN</title>
        <%@include file="header.jsp" %>
    </head>
    <body>
        <div class="login">
            <h1>Login</h1>
        <form action="Login" method="post">
            
            User Id:<input name="txtUserId" placeholder="UserId"    type="text" required="required">

            Password:<input name="txtPassword"  placeholder="Password" type="password" required="required"> 
            
            <button type="submit" class="btn btn-primary btn-block btn-large">Let me in.</button> 
        </form>
        </div>
        <%@include file="footer.jsp" %>
        </body>
</html>
