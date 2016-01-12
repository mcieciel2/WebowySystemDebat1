<%-- 
    Document   : index.jsp
    Created on : 2016-01-10, 20:39:16
    Author     : Marcin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Webowy System debat politycznych z modułem klasyfikacji argumentów</title>

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
      <div class="container">
        <h1>Witaj na stronie!</h1>
        <p>Webowy System Oceny debat politycznych z modułem klasyfikacji argumentów.</p>
        </div>
     
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
      <h1>Najnowsze:</h1>
        <c:forEach var="debata" items="${najnowsze}">
        <div class="col-md-4">
        <img src="${debata.video}" />
          <a href="<c:url value="/singled.htm"/>?id=${debata.id}"><h2>${debata.tytul}</h2></a>
          <p>${debata.wyswietlenia} wyświetleń </p>
          <p>${debata.data}</p>
          <p><a class="btn btn-default" href="<c:url value="/singled.htm"/>?id=${debata.id}" role="button">Wyświetl »</a></p>
        </div>
         </c:forEach>
       
    
         
      </div>
</div>
      <hr>
      <div class="container">
      <!-- Example row of columns -->
      <div class="row">
      <h1>Najpopularniejsze:</h1>
     <c:forEach var="debata" items="${najpopularniejsze}">
        <div class="col-md-4">
        <img src="${debata.video}" />
          <a href="<c:url value="/singled.htm"/>?id=${debata.id}"><h2>${debata.tytul}</h2></a>
          <p>${debata.wyswietlenia} wyświetleń </p>
          <p>${debata.data}</p>
          <p><a class="btn btn-default" href="<c:url value="/singled.htm"/>?id=${debata.id}" role="button">Wyświetl »</a></p>
        </div>
         </c:forEach>
      </div>
</div>
      <hr>
      <div class="container">
      <!-- Example row of columns -->
      <div class="row">
      <h1>Najlepsi rozmówcy:</h1>
      <c:forEach var="rozmowca" items="${najlepsi}">
           <div class="col-md-4">
        <img src="${rozmowca.zdjecie}" height="300px" width="300px"/>
          <h2>${rozmowca.imie} ${rozmowca.nazwisko}</h2>
         <h2>Wygrane: ${rozmowca.wygrane} </h2>
          <p><a class="btn btn-default" href="<c:url value="/singler.htm"/>?id=${rozmowca.id}" role="button">Szczegóły »</a></p>
        </div>
          
      </c:forEach>
       
     
      </div>
      </div>

      <hr>

      <footer>
        <p>© Marcin Cięciel - 2016</p>
      </footer>
    </div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" ></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>