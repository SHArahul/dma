<%-- 
    Document   : StudentInfo
    Created on : 1 May, 2017, 12:05:09 AM
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
        <div class="User">
            <h1>USER PROFILE</h1>
            <div class="table">
            <table>
                
            <tr style="background-color: rgba(0,0,0,0);">
                <th width="15%" height="50%" align="center">USER ID</th>
                <th width="15%" height="50%" align="center">FIRST NAME</th>
                <th width="15%" height="50%" align="center">LAST NAME</th>
                <th width="15%" height="50%" align="center">ADDRESS</th>
                <th width="15%" height="50%" align="center">PHONE</th>
                <th width="15%" height="50%" align="center">EMAIL ID</th>
                <th width="15%" height="50%" align="center">SECTION</th>
                <th width="15%" height="50%" align="center">SESSION</th>
                <th width="15%" height="50%" align="center">ATTENDANCE</th>
            </tr>
            
         <%
         try{
        HttpSession session1=request.getSession(false);  
        if(session1!=null){  
        String name=(String)session1.getAttribute("id");
        int USER=Integer.parseInt(name);
        
          Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dma?zeroDateTimeBehavior=convertToNull", "root", "root");
          //Statement stmt = con.createStatement();
          //ResultSet rs = stmt.executeQuery("select * from dma.dma_user where USER_ID ="+USER+";");
          
          CallableStatement StoredProcedure=con.prepareCall("{call dma.dma_student_search("+USER+")}");
          StoredProcedure.execute();
          ResultSet rs=StoredProcedure.getResultSet();
          
          while (rs.next())
          {        
          String UserId = rs.getString("USER_ID");
          int uid=Integer.parseInt(UserId);
          String FirstName = rs.getString("FIRST_NAME");
          String LastName = rs.getString("LAST_NAME");
          String Address =rs.getString("ADDRESS");
          String Ph = rs.getString("PHONE");
          //double Phone=Double.parseDouble(Ph);
          String EmailId = rs.getString("EMAIL_ID");
         //String Course = rs.getString("COURSE");
          //String Branch = rs.getString("BRANCH");
          String Section = rs.getString("SECTION");
          String Session = rs.getString("SESSION");
          String Attendance = rs.getString("ATTENDANCE");
          %>
          <%--<h3>USER ID:<%out.println(uid);%></h3>
          <h3>FIRST NAME:<%out.println(FirstName);%></h3>
          <h3>LAST NAME:<%out.println(LastName);%></h3>
          <h3>ADDRESS:<%out.println(Address);%></h3>
          <h3>PHONE:<%out.println(Ph);%></h3>
          <h3>EMAIL ID:<%out.println(EmailId);%></h3>
          <h3>SECTION:<%out.println(Section);%></h3>
          <h3>SESSION:<%out.println(Session);%></h3>
          <h3>ATTENDANCE:<%out.println(Attendance);%></h3>--%>
          
          <tr style="background-color: rgba(0,0,0,0);">
          <td width="15%" height="50%" align="center"><%out.println(uid);%></td>
          <td width="15%" height="50%" align="center"><%out.println(FirstName);%></td>
          <td width="15%" height="50%" align="center"><%out.println(LastName);%></td>
          <td width="15%" height="50%" align="center"><%out.println(Address);%></td>
          <td width="15%" height="50%" align="center"><%out.println(Ph);%></td>
          <td width="15%" height="50%" align="center"><%out.println(EmailId);%></td>
          <td width="15%" height="50%" align="center"><%out.println(Section);%></td>
          <td width="15%" height="50%" align="center"><%out.println(Session);%></td>
          <td width="15%" height="50%" align="center"><%out.println(Attendance);%></td>
          </tr>
           <%
          }
        }
         }
          catch(NumberFormatException e){
          out.println(e);
         }
     
        %>
         </table></div>
        </div>
        
        <%@include file="footer.jsp" %>
    </body>
</html>
