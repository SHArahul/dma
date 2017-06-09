<%-- 
    Document   : studentlist
    Created on : 2 May, 2017, 7:29:21 PM
    Author     : rajneesh
--%>
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
        <div class="AttendanceTable">
    
    <form action="AttendanceMarked.jsp" method="post" id="myform">
        <table align="center" cellpadding="5" cellspacing="5" border="1">
            
            <tr bgcolor="#A52A2A">
                <th><b>Attendance</b></td>
                <th><b>Roll No.</b></td>
                <th><b>Section</b></td>
                <!--<td><b></b></td>-->
                <th><b>First Name</b></td>
            </tr>
        <%
            try{
        HttpSession session1=request.getSession(false);  
        if(session1!=null){  
                    String section = request.getParameter("txtSection");
    
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dma?zeroDateTimeBehavior=convertToNull", "root", "root");
                    
                    CallableStatement StoredProcedure=con.prepareCall("{call dma.dma_attendance_view('"+section+"')}");
                     StoredProcedure.execute();
                     ResultSet rs=StoredProcedure.getResultSet();
                    
                   
                    while (rs.next()) {
%>

            
            <tr bgcolor="#DEB887">
                <td>
                    <input type="checkbox" name="txtRollno" value="<%=(rs.getString("USER_ID"))%>"/>
                </td>
                <td><%=rs.getString("USER_ID")%></td>
                <td><%=rs.getString("SECTION")%></td>
                <td><%=rs.getString("FIRST_NAME")%> <%=rs.getNString("LAST_NAME")%></td>


            </tr>

            <%
                }

                }
            } catch (Exception e) {
                    e.printStackTrace();
                }
            %>

        </table>
            <br/>
            
            <button name="btnAttendanceMark" type="submit" value="Submit" class="btn btn-primary btn-block btn-large">Mark Attendance</button> 
       
    </form>
</div>
     <%@ include file="footer.jsp" %>       
    </body>
    
           
