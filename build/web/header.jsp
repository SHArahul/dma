<%-- 
    Document   : header
    Created on : 30 Apr, 2017, 12:30:58 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/header.css" rel="stylesheet" type="text/css">
        <title>DMA</title>
    </head>
    <body>
        <%
            String n = (String) session.getAttribute("name");
            String r = (String) session.getAttribute("role");
            if (n == null) {%>
        <div class="back">
            <div class="logo">
                <label style=" font-size: 35px;color: white; margin-left:50px; ">Department Management Application</label>
            </div>
            <div class="menu3">
                <ul>
                    <li><a href="index.jsp">Home</a> </li>
                    <li><a href="About.jsp">About</a></li> 
                   
                </ul>
            </div>
        </div>


        <%} else if(("admin".equals(r))||("ADMIN".equals(r))||("Admin".equals(r))){%>
        <div class="back">
            <div class="logo">
                <label style=" font-size: 35px;color: white; margin-left:50px; ">Department Management Application</label>
            </div>
            <div class="menu2">
                <ul>
                    <li><a href="AdminView.jsp">Home</a></li>
                    <li><a href="input.jsp">Time Table</a></li>
                    <li><a href="Attendance.jsp">Attendance</a></li>
                    <li><a href="About.jsp">About</a></li>
                </ul>
                <div style="margin-top: 15px; margin-left: 80%;">
                    <li><a href="logout.jsp" style="color:mintcream">LogOut </a></li> &nbsp;&nbsp;
                 </div>
            </div>
        </div>
        <%}
            else if(("staff".equals(r))||("STAFF".equals(r))||("Staff".equals(r))){
        %>
        <div class="back">
            <div class="logo">
                <label style=" font-size: 35px;color: white; margin-left:50px; ">Department Management Application</label>
            </div>
            <div class="menu2">
                <ul>
                    <li><a href="StaffView.jsp">Home</a> </li>
                    <li><a href="input.jsp">Time Table</a></li>
                    <li><a href="Attendance.jsp">Attendance</a></li>
                    <li><a href="About.jsp">About</a></li>
                </ul>
                <div style="margin-top: 15px; margin-left: 80%;">
                    <li><a href="logout.jsp" style="color:mintcream">LogOut </a></li> &nbsp;&nbsp;
                 </div>
            </div>
        </div>
        <% }
            
            %>
            
    </body>
</html>
