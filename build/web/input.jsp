<%-- 
    Document   : input
    Created on : 30 Apr, 2017, 7:35:54 PM
    Author     : rajneesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time Table Section</title>
        <link rel="stylesheet" type="text/css" href="css/home.css"/>
        <script src="ttfile.js" type="text/javascript"></script>
        <%@include file="header.jsp" %>
    </head>
    <body>
        <div class="timetable">
        <h1>TimeTable Section</h1>

        <div id="first">
             Enter Name of File:
            <input  type="text" id="filename" name="filename"  style="width: 50px"/>
        </div>
        
        <div id="two" >

            No. of Subjects :

            <input  type="text" id="nos" name="nos" style="width: 50px"/>
            <button onclick="addNew(document.getElementById('nos').value)" id="add">Next</button>
            
        </div>
        
        <div id="myfields">
            <form id="myform" action="NewServlet" method="post"></form>
                <input type="hidden" id="fname" form="myform" name="fname"/>
            <button type="submit" form="myform">Send</button>
        </div>
        
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>
