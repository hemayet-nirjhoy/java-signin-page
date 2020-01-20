<%-- 
    Document   : index
    Created on : Oct 22, 2019, 2:46:50 AM
    Author     : hemay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center;">This is my First Java Sign In page</h1>
        <form action="check_signin.jsp" method="post" style="margin-left: 45%;">
            Username: <br>
            <input type="text" name="username" placeholder="Enter your Name" required><br>
            Password:<br>
            <input type="password" name="password" placeholder="Enter your Name" required><br>
            <input type="submit" name="submit" value="Signin" >     
            
        </form>
    </body>
</html>
