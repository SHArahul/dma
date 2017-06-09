<%-- 
    Document   : FeedbackSub
    Created on : 1 May, 2017, 1:50:34 AM
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
        <%@include file="header1.jsp" %>
    </head>
    <body>
        <div class="Registration">
            <%
         try{
        HttpSession session1=request.getSession(false);  
        if(session1!=null){  
        String name=(String)session1.getAttribute("id");
        int USER=Integer.parseInt(name);
        
        /*String feedback=request.getParameter("txtComment");
        Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dma?zeroDateTimeBehavior=convertToNull", "root", "root");
          //Statement stmt = con.createStatement();
          //ResultSet rs = stmt.executeQuery("select * from dma.dma_user where USER_ID ="+USER+";");
          
          //CallableStatement StoredProcedure=con.prepareCall("{call dma.dmasearch("+USER+")}");
          CallableStatement StoredProcedure=con.prepareCall("{call dma.dma_feedback("+USER+",'"+feedback+"')}");
          StoredProcedure.executeUpdate();
          /*ResultSet rs=StoredProcedure.getResultSet();
          
           while (rs.next())
          {        
          String UserId = rs.getString("USER_ID");
          int uid=Integer.parseInt(UserId);*/
         %>
         
        <h1>Feedback has been submitted for :<%out.println(USER);%></h1>
        
         <%
          }
         }
          catch(NumberFormatException e){
          out.println(e);
         }
         %>
        
        
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
