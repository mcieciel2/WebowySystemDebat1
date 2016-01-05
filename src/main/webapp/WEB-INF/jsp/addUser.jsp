

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
        <h1>Spring CRM :: <c:choose><c:when test="${not empty param['id']}">Edycja danych użytkownika</c:when><c:otherwise>Dodawanie użytkownika</c:otherwise></c:choose></h1>
        
        <form:form commandName="user" method="POST" action="add.htm">
            
            <form:hidden path="id"/>
            <form:input path="name" placeholder="Imię" required="true" /><form:errors path="name"/><br/>
            <form:input path="lastName" placeholder="Nazwisko" required="true"/><form:errors path="lastName"/><br/>
            <form:input path="email" type="email" placeholder="Mail" required="true" /><form:errors path="email"/> <br/>
            <form:input path="discount" placeholder="Rabat" /><form:errors path="discount"/><br/>
           
            
            <form:button>Zapisz</form:button>
            
        </form:form>
        
    </body>
</html>
