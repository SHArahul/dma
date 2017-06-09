<%-- 
    Document   : Search
    Created on : 30 Apr, 2017, 12:24:51 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.CallableStatement"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/home.css" rel="stylesheet" type="text/css">
        <%@include file="header.jsp" %>
        <title>User</title>
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
                <th width="15%" height="50%" align="center">PHONE</th>
                <th width="15%" height="50%" align="center">ROLE</th>
                <th width="15%" height="50%" align="center">TEACHES</th>
                <th width="15%" height="50%" align="center">WORKING</th>
            </tr>
            
         <%
         try{
        HttpSession session1=request.getSession(false);  
        if(session1!=null){  
        String name=(String)session1.getAttribute("user");
        int USER=Integer.parseInt(name);
        //out.println(USER);
        //}
             
          Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dma?zeroDateTimeBehavior=convertToNull", "root", "root");
          //Statement stmt = con.createStatement();
          //ResultSet rs = stmt.executeQuery("select * from dma.dma_user where USER_ID ="+USER+";");
          
          CallableStatement StoredProcedure=con.prepareCall("{call dma.dma_staff_search("+USER+")}");
          StoredProcedure.execute();
          ResultSet rs=StoredProcedure.getResultSet();
          
          while (rs.next())
          {        
          String UserId = rs.getString("USER_ID");
          int uid=Integer.parseInt(UserId);
          String FirstName = rs.getString("FIRST_NAME");
          String LastName = rs.getString("LAST_NAME");
          //String Address =rs.getString("ADDRESS");
          String Ph = rs.getString("PHONE");
          //double Phone=Double.parseDouble(Ph);
          //String EmailId = rs.getString("EMAIL_ID");
          //String Branch = rs.getString("BRANCH");
          String Role = rs.getString("ROLE");
          String Teaches = rs.getString("TEACHES");
          String Working = rs.getString("WORKING");
          %>
          <%--<h3>USER ID:<%out.println(uid);%></h3>
          <h3>FIRST NAME:<%out.println(FirstName);%></h3>
          <h3>LAST NAME:<%out.println(LastName);%></h3>
          <h3>ADDRESS:<%out.println(Address);%></h3>
          <h3>PHONE:<%out.println(Ph);%></h3>
          <h3>EMAIL ID:<%out.println(EmailId);%></h3>
          <h3>BRANCH:<%out.println(Branch);%></h3>--%>
          <tr style="background-color: rgba(0,0,0,0);">
          <td width="15%" height="50%" align="center"><%out.println(uid);%></td>
          <td width="15%" height="50%" align="center"><%out.println(FirstName);%></td>
          <td width="15%" height="50%" align="center"><%out.println(LastName);%></td>
          <td width="15%" height="50%" align="center"><%out.println(Ph);%></td>
          <td width="15%" height="50%" align="center"><%out.println(Role);%></td>
          <td width="15%" height="50%" align="center"><%out.println(Teaches);%></td>
          <td width="15%" height="50%" align="center"><%out.println(Working);%></td>
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
