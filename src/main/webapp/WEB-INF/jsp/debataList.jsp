<%-- 
    Document   : debataList
    Created on : 2015-11-28, 00:35:40
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
        <h1> Lista debat</h1>
        
        <table border="1">
            <th>ID</th>
            <th>Tytuł</th>
            <th>Data</th>
            <th>Akcja</th>
            <c:forEach items="${debaty}" var="debata">
                <tr>
                    <td> <a href="<c:url value="/debata/edit.htm"/>?id=${debata.id}">${debata.id}</a></td>
                    <td>${debata.tytul}</td>
                    <td>${debata.data}</td>
                    <td><a href="<c:url value="/debata/edit.htm"/>?id=${debata.id}">Edytuj</a>/<a href="<c:url value="/debata/delete.htm"/>?id=${debata.id}">Usuń</a></td>
                </tr>
            </c:forEach>
        </table>
        
        <a href="<c:url value="/debata/add.htm"/>" type="button"/>Dodaj nową debate</a>
            
            
    </body>
</html>
