<%-- 
    Document   : kategoriaList
    Created on : 2015-11-28, 01:27:42
    Author     : Marcin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Lista Kategorii</h1>
        
        <table border="1">
            <th>ID</th>
            <th>Nazwa</th>
            <th>Akcja</th>
            <c:forEach items="${kategorie}" var="kategoria">
                <tr>
                    <td> <a href="<c:url value="/kategoria/edit.htm"/>?id=${kategoria.id}">${kategoria.id}</a></td>
                    <td>${kategoria.nazwa}</td>
                    <td><a href="<c:url value="/kategoria/edit.htm"/>?id=${kategoria.id}">Edytuj</a>/<a href="<c:url value="/kategoria/delete.htm"/>?id=${kategoria.id}">Usuń</a></td>
                </tr>
            </c:forEach>
        </table>
        
        <a href="<c:url value="/kategoria/add.htm"/>" type="button"/>Dodaj nową kategorie</a>
           
    </body>
</html>

