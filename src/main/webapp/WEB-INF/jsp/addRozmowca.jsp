<%-- 
    Document   : addRozmowca
    Created on : 2015-11-28, 01:12:59
    Author     : Marcin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rozmówca</title>
    </head>
     
        
        
        
           <head>
</head>
        
<html lang="pl">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Dodawanie rozmówcy</title>

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
          <a class="navbar-brand" href="<c:url value="/index.htm"/>">Debata.pl</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <form class="navbar-form navbar-right">
            <div class="form-group">
         
			
     
        
           <c:choose>
    <c:when test="${pageContext.request.userPrincipal.name != null}">
     
        <font color="white"> Witaj, ${pageContext.request.userPrincipal.name}! </font>
                        <a href="<c:url value="/profil2.htm"/>?login=${pageContext.request.userPrincipal.name}" role=button type="submit" class="btn btn-warning">Mój Profil</a>
                                  <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">

        <a href="<c:url value="/admin/admin.htm"/>" role=button type="submit" class="btn btn-warning">Panel administracyjny</a>
                    

    </c:if>
              
                            <a href="<c:url value="/logout"/>" role=button type="submit" class="btn btn-danger">Wyloguj</a>
			
        <br />
    </c:when>    
    <c:otherwise>
          <a href="<c:url value="/login.htm"/>" role=button type="submit" class="btn btn-success">Zaloguj</a>
          <a href="<c:url value="/register.htm"/>" role=button type="submit" class="btn btn-success">Zarejestruj się</a>
      
        <br />
    </c:otherwise>
</c:choose>
            </form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
     
        <h1>Dodaj rozmówce</h1>
        <p>Webowy System Oceny debat politycznych z modułem klasyfikacji argumentów.</p>
      
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
      <div>

  <!-- Nav tabs -->
 
    <center>	<h2><h1>Rozmówca :: <c:choose><c:when test="${not empty param['id']}">Edycja rozmowcy</c:when><c:otherwise>Dodaj rozmówce</c:otherwise></c:choose></h1></h2> </center>

            
            

            
           <%-- <form:input path="dataurodzenia" type="date" placeholder="Data" required="true"/> <form:errors path="data"/>--%><br/>
            
            
         
            
            
            
          
            
       
        <form:form commandName="rozmowca" method="POST" action="addr.htm">
            <form:hidden path="id"/>
    	<form role="form">
  <div class="form-group">
    <label for="text">Imię:</label>
                <form:input path="imie" placeholder="Imię" required="true" type="text" class="form-control" /><form:errors path="imie" />
  </div>
  <div class="form-group">
    <label for="text">Nazwisko:</label>
    <form:input path="nazwisko"  type="text" class="form-control" placeholder="Nazwisko" required="true"/><form:errors path="nazwisko"/>
  </div>
   <div class="form-group">
    <label for="text">Data urodzenia:</label>
<form:input class="form-control" id="dataurodzenia" path="dataurodzenia" type="text" placeholder="Dataurodzenia" required="true"/><form:errors path="dataurodzenia"/>
  </div>
<div class="form-group">
  <label for="text">Opis:</label>
 <form:input path="opis" placeholder="Opis" required="true" class="form-control"/><form:errors path="opis"/>
</div>
   <div class="form-group">
   
 <label for="text">Zdjęcie:</label>
     
    <form:input type="file" path="zdjecie" placeholder="Zdjecie" required="true" class="form-control"/><form:errors path="zdjecie"/>

   </div>
       <c:choose>  <c:when test="${not empty param['id']}"><form:button type="submit" class="btn btn-default">Zapisz</form:button></c:when><c:otherwise><form:button type="submit" class="btn btn-default">Dodaj rozmówce</form:button></c:otherwise></c:choose>

   </form>
         </form:form>

  </div>
 




  



    </div>

  </div>


    

      <hr>

      <footer>
        <p>© Company 2014</p>
      </footer>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
 
  </body>
</html>