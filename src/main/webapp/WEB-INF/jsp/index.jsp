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
          <a class="navbar-brand" href="#top">Debata.pl</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <form class="navbar-form navbar-right">
            <div class="form-group">
              <input type="text" placeholder="Login" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Hasło" class="form-control">
            </div>
           <a href="zalogowany.html" role=button type="submit" class="btn btn-success">Zaloguj</a>
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1>Witaj na stronie!</h1>
        <p>Webowy System Oceny debat politycznych z modułem klasyfikacji argumentów.</p>
        <p>Nie masz konta?    </p>
        <p><a class="btn btn-primary btn-lg" href="rejestracja.html" role="button">Zarejestruj się »</a></p>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
      <h1>Najnowsze:</h1>
        <c:forEach var="debata" items="${debaty}">
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
        <div class="col-md-4">
        <img src="images/1.webp" />
           <a href="#top"> <h3>Debata liderów</h3></a>
         <p>5000 wyświetleń </p>
          <p>2015-11-10</p>
          <p><a class="btn btn-default" href="#top" role="button">Wyświetl »</a></p>
        </div>
        <div class="col-md-4">
        <img src="images/2.webp" />
           <a href="#top"> <h3>Andrzej Duda vs Andrzej Duda</h3></a>
          <p>4000 wyświetleń </p>
          <p>2015-11-01</p>
          <p><a class="btn btn-default" href="#top" role="button">Wyświetl »</a></p>
       </div>
        <div class="col-md-4">
        <img src="images/3.webp" />
         <a href="#top"> <h3>Debata numer 5</h3></a>
          <p>3000 wyświetleń </p>
          <p>2015-11-03</p>
          <p><a class="btn btn-default" href="#top" role="button">Wyświetl »</a></p>
        </div>
      </div>
</div>
      <hr>
      <div class="container">
      <!-- Example row of columns -->
      <div class="row">
      <h1>Najlepsi rozmówcy:</h1>
        <div class="col-md-4">
        <img src="images/bosak.jpg" height="300px" width="300px"/>
          <h2>Krzysiu Bosak</h2>
         
          <p><a class="btn btn-default" href="#top" role="button">Szczegóły »</a></p>
        </div>
        <div class="col-md-4">
        <img src="images/zandberg.jpg" height="300px" width="300px"/>
          <h2>Adrian Marx</h2>
          
          <p><a class="btn btn-default" href="#top" role="button">Szczegóły »</a></p>
       </div>
        <div class="col-md-4">
        <img src="images/kaminski.jpg" height="300px" width="300px" />
          <h2>Mariusz Kamiński</h2>
          <p><a class="btn btn-default" href="#top" role="button">Szczegóły »</a></p>
        </div>
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