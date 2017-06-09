<%-- 
    Document   : AttendanceMarked
    Created on : 4 May, 2017, 10:28:10 AM
    Author     : acer
--%>

<%@page import="java.lang.reflect.Array"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link href="css/home.css" rel="stylesheet" type="text/css">
            <%@include file="header.jsp" %>
    </head>
    <body>
        <div class="AttendanceMarked">
        <%
            String[] selected = request.getParameterValues("txtRollno");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dma?zeroDateTimeBehavior=convertToNull", "root", "root");
                    
            
            if (selected != null && selected.length != 0) {
                for (String select : selected) {
                    //out.print(select);
                    CallableStatement StoredProcedure=con.prepareCall("{call dma.dma_attendance_update('"+select+"')}");
                     StoredProcedure.executeUpdate();
                
                }
            }

        %>
           <h1>Attendance has been marked</h1>
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>
