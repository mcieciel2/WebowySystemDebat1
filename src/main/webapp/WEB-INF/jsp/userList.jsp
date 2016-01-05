

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Spring CRM :: Lista użytkowników</h1>
        
        <table border="1">
            <th>ID</th>
            <th>Imię</th>
            <th>Nazwisko</th>
            <th>Mail</th>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td> <a href="<c:url value="/user/edit.htm"/>?id=${user.id}">${user.id}</a></td>
                    <td>${user.name}</td>
                    <td>${user.lastName}</td>
                    <td>${user.email}</td>
                </tr>
            </c:forEach>
        </table>
            
            
    </body>
</html>
