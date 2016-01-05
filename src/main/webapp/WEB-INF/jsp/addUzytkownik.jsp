

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Użytkownicy</title>
    </head>
     
        <h1>Spring CRM :: <c:choose><c:when test="${not empty param['id']}">Edycja danych użytkownika2</c:when><c:otherwise>Dodawanie użytkownika2</c:otherwise></c:choose></h1>
        
        <form:form commandName="uzytkownik" method="POST" action="add.htm">
            
            <form:hidden path="id"/>
            <form:input path="login" placeholder="Imię" required="true" /><form:errors path="login"/><br/>
            <form:input path="nazwisko" placeholder="Nazwisko" required="true"/><form:errors path="haslo"/><br/>
     
           
            
            <form:button>Zapisz</form:button>
            
        </form:form>
        
    

