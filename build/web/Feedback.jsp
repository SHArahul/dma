<%-- 
    Document   : Feedback
    Created on : 1 May, 2017, 1:09:56 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/home.css" rel="stylesheet" type="text/css">
        <%@include file="header1.jsp" %>
        <title>Feedback</title>
    </head>
    <body>
        <% String n=(String) session.getAttribute("id");
            int userid=Integer.parseInt(n);%>
        <div class="Feedback">
             <h1>Feedback!!</h1>
            <form action="Feedback" method="post">
                User ID: <input name="txtUserId" placeholder="<%out.println(userid);%>" type="text" required="required"/><br/>
                Comment:
                <textarea name="txtComment" placeholder="Not More than 50 words." type="text" required="required"></textarea><br />
                <button  name="btnComment" type="submit" class="btn btn-primary btn-block btn-large">Submit</button>
            </form>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
