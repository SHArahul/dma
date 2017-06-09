<%-- 
    Document   : Attendance.jsp
    Created on : 4 May, 2017, 10:37:00 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link href="css/home.css" rel="stylesheet" type="text/css">
            <%@include file="header.jsp" %>
            <title>Staff View</title>
    </head>
    <body>
       <div class="Attendance">
             <h1>Select Section for Attendance</h1>
            <form action="AttendanceMarking.jsp" method="post">
                Enter Section: <input name="txtSection" placeholder="Section" type="text" required="required"/><br>
                <button  name="btnSection" type="submit" class="btn btn-primary btn-block btn-large">Attendance Marking Table</button>
            </form>
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>
