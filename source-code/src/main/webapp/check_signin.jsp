<%-- 
    Document   : check_signin
    Created on : Oct 22, 2019, 2:59:11 AM
    Author     : hemay
--%>

<%@page import="siginin.demo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checking the Sign in</title>
    </head>
    <body>
        <h1 style="text-align: center;">Checking the sign in</h1>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            Siginin object =new Siginin();
            
            String name = object.check_signin(username, password);
        %>
        
        <p style="text-align: center;font-size: 40px;"><%if(name!=null){%>
            <span style="color:green;">Successfully Signed in.</span>
            <%}else{%>
            <span style="color:red;">Username or Password is incorrect!</span>
            <%}%>
        </p>
    </body>
</html>
