

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Spring CRM :: Lista użytkowników2</h1>
        
        <table border="1">
            <th>ID</th>
            <th>Login</th>
            <th>Imię</th>
            <th>Mail</th>
            <c:forEach items="${uzytkownicy}" var="uzytkownik">
                <tr>
                    <td> <a href="<c:url value="/uzytkownik/edit.htm"/>?id=${uzytkownik.id}">${uzytkownik.id}</a></td>
                    <td>${uzytkownik.login}</td>
                    <td>${uzytkownik.imie}</td>
                    <td>${uzytkownik.email}</td>
                </tr>
            </c:forEach>
        </table>
            
            
    </body>
</html>
