<%-- 
    Document   : addTermin
    Created on : 2015-11-28, 15:44:31
    Author     : Marcin
--%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Dodawanie terminu</title>

    <!-- Bootstrap -->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" >
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
      <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#top">Debata.pl</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
           <form class="navbar-form navbar-right">
            <div class="form-group">
            <a href="profil.html" role="button" type="submit" class="btn btn-success">Mój profil</a>
             
            </div>
            <div class="form-group">
          <a href="<c:url value="/admin/admin.htm"/>" role="button" type="submit" class="btn btn-success">Panel Administracyjny</a>
            </div>
             <div class="form-group">
          <a href="index.html" role="button" type="submit" class="btn btn-danger">Wyloguj</a>
            </div>
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
   
        <h1>Dodawanie terminu</h1>
        <p>Webowy System Oceny debat politycznych z modułem klasyfikacji argumentów.</p>
      
      </div>
    </div>
       <h3>Dodaj termin: </h3>
  <form:form commandName="termin" method="POST" action="addt.htm">

    <label for="sel2">Kategoria:</label>
  <form:select items="${kategorie}" class="form-control" path="kategoria.id" itemValue="id" itemLabel="nazwa"></form:select>
 <form:hidden path="id"/>
 <div class="form-group">
            <label for="">Termin:</label></br>
            <form:input path="nazwa" class="form-control" placeholder="Nazwa" required="true" /><form:errors path="nazwa"/><br/>
 </div>

  <form:button type="submit" class="btn btn-success">Dodaj termin</form:button>
  </form:form>
        
    </body>
</html>