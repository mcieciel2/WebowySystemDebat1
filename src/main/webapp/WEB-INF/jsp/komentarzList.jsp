<%-- 
    Document   : komentarzList
    Created on : 2015-11-28, 17:33:54
    Author     : Marcin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Komentarze</title>
    </head>
    <body>
        <h1> Komentarze</h1>
        
        <table border="1">
            <th>ID</th>
            <th>Treść</th>
            <th>Data</th>
            <th>Akcja</th>
            <c:forEach items="${komentarze}" var="komentarz">
                <tr>
                    <td> <a href="<c:url value="/komentarz/edit.htm"/>?id=${komentarz.id}">${komentarz.id}</a></td>
                    <td>${komentarz.nazwa}</td>
                    <td><a href="<c:url value="/komentarz/edit.htm"/>?id=${komentarz.id}">Edytuj</a>/<a href="<c:url value="/komentarz/delete.htm"/>?id=${komentarz.id}">Usuń</a></td>
                </tr>
            </c:forEach>
        </table>
        
        <a href="<c:url value="/komentarz/add.htm"/>" type="button"/>Dodaj komentarz</a>
           
    </body>
</html>