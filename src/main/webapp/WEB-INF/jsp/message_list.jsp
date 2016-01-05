<%-- 
    Document   : message_list
    Created on : 2014-05-12, 15:02:32
    Author     : Adrian Lapierre <adrian@softproject.com.pl>
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
        <h1>Wiadomiości do ${person.name}</h1>
        
        <c:forEach items="${person.messages}" var="message">
            ${message.subject}<br>
            ${message.content}
        </c:forEach>
        
            
    </body>
</html>
