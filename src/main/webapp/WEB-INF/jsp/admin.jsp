<%-- 
    Document   : admin
    Created on : 2015-11-28, 20:41:17
    Author     : Marcin
--%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Panel administracyjny</title>

    <!-- Bootstrap -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

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
          <a href="paneladmina.html" role="button" type="submit" class="btn btn-success">Panel Administracyjny</a>
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
 
        <h1>Panel administracyjny</h1>
        <p>Webowy System Oceny debat politycznych z modułem klasyfikacji argumentów.</p>
      
      </div>
  

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
      

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
   <li role="presentation" class="active"><a href="#debaty" aria-controls="home" role="tab" data-toggle="tab">Zarządzanie debatami</a></li>

    <li role="presentation" ><a href="#rozmowcy" aria-controls="profile" role="tab" data-toggle="tab">Zarządzanie rozmówcami</a></li>
    <li role="presentation"><a href="#uzytkownicy" aria-controls="profile" role="tab" data-toggle="tab">Zarządzanie użytkownikami</a></li>
    <li role="presentation"><a href="#terminy" aria-controls="settings" role="tab" data-toggle="tab">Zarządzanie terminami</a></li>
  </ul>

  <!-- Tab panes -->

  <div class="tab-content">

   <div role="tabpanel" class="tab-pane active" id="debaty">

  <center> <h3>Zarządzanie debatami</h3></center>
    

        
            
<div class="table-responsive">
    	<table class="table table-hover">
  <thead>
    <tr>
     <th>ID</th>
            <th>Tytuł</th>
            <th>Data</th>
            <th>Akcja</th>
    </tr>
  </thead>
  <tbody>
    <tr>
       <c:forEach items="${debaty}" var="debata">
                <tr>
                    <td> <a href="<c:url value="/singled.htm"/>?id=${debata.id}">${debata.id}</a></td>
                    <td>${debata.tytul}</td>
                    <td>${debata.data}</td>
                    <td><a href="<c:url value="/editd.htm"/>?id=${debata.id}">Edytuj</a>/<a href="<c:url value="/deleted.htm"/>?id=${debata.id}">Usuń</a></td>
                </tr>
            </c:forEach>
  </tbody>
</table>

<a href="<c:url value="/addd.htm"/>" role="button" type="submit" class="btn btn-success">Dodaj debatę</a>

  </div>
   </div>
    <div role="tabpanel" class="tab-pane" id="rozmowcy">


   <center>  <h3>Zarządzanie rozmówcami</h3></center>
   

     
      
<div class="table-responsive">
      <table class="table table-hover">
  <thead>
    <tr>
      <th>ID</th>
            <th>Imię</th>
            <th>Nazwisko</th>
            <th>Akcja</th>
    </tr>
  </thead>
  <tbody>
       <c:forEach items="${rozmowcy}" var="rozmowca">
                <tr>
                    <td> <a href="<c:url value="/singler.htm"/>?id=${rozmowca.id}">${rozmowca.id}</a></td>
                    <td>${rozmowca.imie}</td>
                    <td>${rozmowca.nazwisko}</td>
                    <td><a href="<c:url value="/editr.htm"/>?id=${rozmowca.id}">Edytuj</a>/<a href="<c:url value="/deleter.htm"/>?id=${rozmowca.id}">Usuń</a></td>
                </tr>
                
            </c:forEach>
  </tbody>
</table>
</div>
 <a href="<c:url value="/addr.htm"/>" role="button" type="submit" class="btn btn-success">Dodaj rozmówcę</a>



    </div>
    <div role="tabpanel" class="tab-pane" id="uzytkownicy">
    	
    	<center>   <h3>Zarządzanie użytkownikami</h3></center>
      
<div class="table-responsive">
      <table class="table table-hover">
  <thead>
    <tr>
     <th>ID</th>
      <th>Login</th>
      <th>Imię</th>
      <th>Akcja</th>
    </tr>
  </thead>
  <tbody>
       <c:forEach items="${uzytkownicy}" var="uzytkownik">
                <tr>
                    <td> <a href="<c:url value="/uzytkownik/edit.htm"/>?id=${uzytkownik.id}">${uzytkownik.id}</a></td>
                    <td>${uzytkownik.login}</td>
                    <td>${uzytkownik.imie}</td>
                    <td><a href="<c:url value="/deleteu.htm"/>?id=${uzytkownik.id}">Usuń</a></td>
                </tr>
            </c:forEach>
  </tbody>
</table>
</div>

  </div>
 




    <div role="tabpanel" class="tab-pane" id="terminy">
    	
    <center> <h3>Zarządzanie terminami</h3></center>



     <h4>Kategorie: </h4>
        
<div class="table-responsive">
      <table class="table table-hover">
  <thead>
    <tr>
     <th>ID</th>
            <th>Nazwa</th>
            <th>Akcja</th>
    </tr>
  </thead>
  <tbody>
        <c:forEach items="${kategorie}" var="kategoria">
                <tr>
                    <td> <a href="<c:url value="/editk.htm"/>?id=${kategoria.id}">${kategoria.id}</a></td>
                    <td>${kategoria.nazwa}</td>
                    <td><a href="<c:url value="/editk.htm"/>?id=${kategoria.id}">Edytuj</a>/<a href="<c:url value="/deletek.htm"/>?id=${kategoria.id}">Usuń</a></td>
                </tr>
            </c:forEach>
  </tbody>
</table>
    <a href="<c:url value="/addk.htm"/>" role="button" type="submit" class="btn btn-success">Dodaj kategorie</a>

</div>

    <h4>Terminy: </h4>
<div class="table-responsive">
      <table class="table table-hover">
  <thead>
    <tr>
     <th>ID</th>
            <th>Nazwa</th>
            <th>Kategoria</th>
            <th>Akcja</th>
  
    </tr>
  </thead>
  <tbody>
      <c:forEach items="${terminy}" var="termin">
                <tr>
                    <td> <a href="<c:url value="/editt.htm"/>?id=${termin.id}">${termin.id}</a></td>
                    <td>${termin.nazwa}</td>
                    <td>${termin.kategoria.nazwa}</td>
                    <td><a href="<c:url value="/editt.htm"/>?id=${termin.id}">Edytuj</a>/<a href="<c:url value="/deletek.htm"/>?id=${termin.id}">Usuń</a></td>
                </tr>
            </c:forEach>
  </tbody>
</table>
      <a href="<c:url value="/addt.htm"/>" role="button" type="submit" class="btn btn-success">Dodaj termin</a>

</div>
    
    
   




    </div>

  </div>


    
      </div>
      </div>

      <hr>

      <footer>
        <p>© Company 2014</p>
      </footer>
  

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" ></script>
 
  </body>
</html>