<%-- 
    Document   : Index
    Created on : 04-Apr-2024, 12:51:22 am
    Author     : Tanisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="Navbar.jsp" %>
        <style>
            body {
                width: 100%;
                height:100%;
                font-family: 'Open Sans', sans-serif;
                background:#110929;
            }
        </style>
    </head>
    <body>
        <h1>Hello World!</h1>
        <a href = "/Main">button </a>
        <a href="/cart">cart</a>
        <a href="/accountsection">account section</a>
        <a href="/myproduct">product</a>
    </body>
</html>
