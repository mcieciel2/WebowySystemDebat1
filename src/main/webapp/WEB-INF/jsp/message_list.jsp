

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
