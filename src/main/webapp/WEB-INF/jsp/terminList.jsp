<%-- 
    Document   : terminList
    Created on : 2015-11-28, 15:46:27
    Author     : Marcin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Terminów</title>
    </head>
    <body>
        <h1> Lista Terminów</h1>
        
        <table border="1">
            <th>ID</th>
            <th>Nazwa</th>
            <th>Kategoria</th>
            <th>Akcja</th>
            <c:forEach items="${terminy}" var="termin">
                <tr>
                    <td> <a href="<c:url value="/termin/edit.htm"/>?id=${termin.id}">${termin.id}</a></td>
                    <td>${termin.nazwa}</td>
                    <td>${termin.kategoria.id}</td>
                    <td><a href="<c:url value="/termin/edit.htm"/>?id=${termin.id}">Edytuj</a>/<a href="<c:url value="/termin/delete.htm"/>?id=${termin.id}">Usuń</a></td>
                </tr>
            </c:forEach>
        </table>
        
        <a href="<c:url value="/termin/add.htm"/>" type="button"/>Dodaj nowy termin</a>
            
            
    </body>
</html>