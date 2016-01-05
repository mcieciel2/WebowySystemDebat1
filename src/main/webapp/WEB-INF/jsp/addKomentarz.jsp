<%-- 
    Document   : addKomentarz
    Created on : 2015-11-28, 17:27:23
    Author     : Marcin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
        <h1>Spring CRM :: <c:choose><c:when test="${not empty param['id']}">Edycja komentarza</c:when><c:otherwise>Dodawanie komentarza</c:otherwise></c:choose></h1>
        
        <form:form commandName="komentarz" method="POST" action="add.htm">
            
            <form:hidden path="id"/>
            <form:input path="tresc" placeholder="Tresc" required="true" /><form:errors path="tresc"/><br/>
            
            <form:button>Zapisz</form:button>
            
        </form:form>
        
    </body>
</html>