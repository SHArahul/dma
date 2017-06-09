<%-- 
    Document   : StaffReg
    Created on : 30 Apr, 2017, 12:12:40 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/home.css" rel="stylesheet" type="text/css">
        <%@include file="header.jsp" %>
    </head>
    <body> 
        <div class="StaffReg">
            <form action="Registration" method="post">
                <%--<div class="StaffRegForm">--%>
                User Id: <input name="txtUserId" placeholder="UserId"    type="text" required="required"/><br>
                Password:<input name="txtPassword" placeholder="Password"    type="text" required="required"/><br>
                First Name:<input name="txtFirstName" placeholder="FirstName" type="text" required="required"/><br>
                Last Name:<input name="txtLastName" placeholder="LastName" type="text" required="required"/><br>
                Address:<input name="txtAddress" placeholder="Address" type="text" required="required"/><br>
                Phone:<input name="txtPhone" placeholder="Phone" type="text" required="required"/><br>
                Email Id:<input name="txtEmailId" placeholder="EmailId" type="text" required="required"/><br>
                Role:<input name="txtRole" placeholder="Role" type="text" required="required"/><br>
                Department:<input name="txtDepartment" placeholder="Department" type="text" required="required"/><br>
                Teaches:<input name="txtTeaches" placeholder="Teaches" type="text" required="required"/><br>
                Working:<input name="txtWorking" placeholder="Working" type="text" required="required" />
                <button value="btnCreateStaff" type="submit" class="btn btn-primary btn-block btn-large">Create Staff User</button>
                </form>
          </div>
          
            
        
        <%@include file="footer.jsp" %>
    </body>
</html>
