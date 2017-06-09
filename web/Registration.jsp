<%-- 
    Document   : Registration
    Created on : 30 Apr, 2017, 12:13:49 PM
    Author     : acer
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.CallableStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/home.css" rel="stylesheet" type="text/css">
        <%@include file="header.jsp" %>
        <title>Registration Successful</title>
    </head>
    <body>
        <div class="Registration">
       
         <%
         String name=(String) session.getAttribute("name");
         %>
         
        <h1>Registration has been successful for : <%out.println(name);%></h1>
               
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
