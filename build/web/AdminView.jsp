<%-- 
    Document   : dma
    Created on : 23 Apr, 2017, 4:26:52 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link href="css/home.css" rel="stylesheet" type="text/css">
            <%@include file="header.jsp" %>
    </head>
    <body>
        <div class="Search">
             <h1>Search</h1>
            <form action="Search" method="post">
                Search User: <input name="txtUserId" placeholder="UserId" type="text" required="required"/><br>
                <button  name="btnSearch" type="submit" class="btn btn-primary btn-block btn-large">Search User</button>
            </form>
        </div>
        <div class="CreateUser">
            <h1>Create User</h1>
            <div class="StaffUser">
                
                <form action="StaffReg.jsp" method="post">
                    <button name="btnStaffReg" type="submit" class="btn btn-primary btn-block btn-large">Staff Registration</button>
                </form>
            </div>    
            <div class="StudentUser">    
                <form action="StudentReg.jsp" method="post">
                    <button name="btnStudentReg" type="submit" class="btn btn-primary btn-block btn-large">Student Registration</button>
                </form>
            </div>
        </div>
        <div class="DeleteUser">
            <h1>Delete</h1>
            <form action="DeleteStaffStud" method="post">
                Delete User: <input name="txtUserId1" placeholder="Enter User Id" type="text" required="required"/><br>
                <button  name="btnDelete" type="submit" class="btn btn-primary btn-block btn-large">Delete User</button>
            </form>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>

<%--String UserId=request.getParameter("txtUserid");--%>
<%--
<%
String UserId=request.getParameter("txtUserid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/dma?zeroDateTimeBehavior=convertToNull";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>


<h1>Retrieve data from database in </h1>
<table border="1">
<tr>
<td>USER ID</td>
<td>FIRST NAME</td>
<td>LAST NAME</td>
<td>ADDRESS</td>
<td>PHONE</td>
<td>EMAIL ID</td>
</tr>
</table>

<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="SELECT USER_ID,FIRST_NAME,LAST_NAME,ADDRESS,PHONE,EMAIL_ID from dma.dma_user where USER_ID ="+Integer.parseInt(UserId)+";";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
out.println("<table border="+1+">");
    out.println("<tr>");
out.println("<td>"+resultSet.getString("USER_ID")+"</td>");
out.println("<td>"+resultSet.getString("FIRST_NAME")+"</td>");
out.println("<td>"+resultSet.getString("LAST_NAME")+"</td>");
out.println("<td>"+resultSet.getString("ADDRESS")+"</td>");
out.println("<td>"+resultSet.getString("PHONE")+"</td>");
out.println("<td>"+resultSet.getString("EMAIL_ID")+"</td>");
out.println("</tr>");
out.println("</table>");
%>
<%--"<tr>"
"<td>"+<%=resultSet.getString("USER_ID") %>"</td>"
"<td>"<%=resultSet.getString("FIRST_NAME") %>"</td>"
"<td>"<%=resultSet.getString("LAST_NAME") %>"</td>"
"<td>"<%=resultSet.getString("ADDRESS") %>"</td>"
"<td>"<%=resultSet.getString("PHONE") %></td>
<td><%=resultSet.getString("EMAIL_ID") %></td>
</tr>--%>

<%--
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
--%>
