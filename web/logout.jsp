<%-- 
    Document   : logout
    Created on : 30 Apr, 2017, 9:33:57 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        
        <%session.invalidate();
         response.sendRedirect("index.jsp");
        %>
    </body>
</html>
