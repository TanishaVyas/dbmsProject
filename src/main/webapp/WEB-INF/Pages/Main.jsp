<%-- 
    Document   : Main
    Created on : 04-Apr-2024, 12:52:04 am
    Author     : Tanisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <body>
        <h1>Hello World!</h1>
        <a href = "/">button </a>
        <p>${welcome}</p>
        <table>
            <tr>
                <td>Name</td>
                <td>age</td>
                <td>email</td>
            </tr>
        <c:forEach items="${user1}" var="user">
            <tr>    
                <td>${user.getName()}</td>
                <td>${user.getAge()}</td>
                <td>${user.getEmail()}</td>
            </tr>            
        </c:forEach>
        </table>
    </body>
</html>
