<%-- 
    Document   : rozmowcaList
    Created on : 2015-11-28, 01:39:29
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
        <h1> Lista Rozmówców</h1>
        
        <table border="1">
            <th>ID</th>
            <th>Imię</th>
            <th>Nazwisko</th>
            <th>Akcja</th>
            <c:forEach items="${rozmowcy}" var="rozmowca">
                <tr>
                    <td> <a href="<c:url value="/rozmowca/edit.htm"/>?id=${rozmowca.id}">${rozmowca.id}</a></td>
                    <td>${rozmowca.imie}</td>
                    <td>${rozmowca.nazwisko}</td>
                    <td><a href="<c:url value="/rozmowca/edit.htm"/>?id=${rozmowca.id}">Edytuj</a>/<a href="<c:url value="/rozmowca/delete.htm"/>?id=${rozmowca.id}">Usuń</a></td>
                </tr>
            </c:forEach>
        </table>
        
        <a href="<c:url value="/rozmowca/add.htm"/>" type="button"/>Dodaj rozmowce</a>
            
     
    </body>
</html>
