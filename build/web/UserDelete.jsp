<%-- 
    Document   : StaffAdminDelete
    Created on : 3 May, 2017, 4:32:02 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/home.css" rel="stylesheet" type="text/css">
        <%@include file="header.jsp" %>
        <title>User Deleted</title>
    </head>
    <body>
        <div class="UserDeleted">
            <%
         try{
        HttpSession session1=request.getSession(false);  
        if(session1!=null){  
        String name=(String)session1.getAttribute("name");
        int USER=Integer.parseInt(name);
        %>
        <h1>Data deleted for USER ID : <%out.println(USER);%></h1>
        <%}
         }
          catch(NumberFormatException e){
          out.println(e);
         }
         %>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
