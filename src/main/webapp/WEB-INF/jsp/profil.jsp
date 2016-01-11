<%-- 
    Document   : profil
    Created on : 2016-01-09, 15:00:03
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
    <title>Profil użytkownika ${uzytkownik.imie} ${uzytkownik.nazwisko}</title>

  
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
              
                            <a href="<c:url value="/login.htm"/>" role=button type="submit" class="btn btn-danger">Wyloguj</a>
			
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
     
        <h1>Profil użytkownika ${uzytkownik.imie} ${uzytkownik.nazwisko}</h1>
        <p>Webowy System Oceny debat politycznych z modułem klasyfikacji argumentów.</p>
      
     
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
      <div>

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
   <li role="presentation" class="active"><a href="#mojprofil" aria-controls="home" role="tab" data-toggle="tab">Mój profil</a></li>

    <li role="presentation" ><a href="#wybierzterminy" aria-controls="profile" role="tab" data-toggle="tab">Wybierz terminy</a></li>

  </ul>

  <!-- Tab panes -->

  <div class="tab-content">

   <div role="tabpanel" class="tab-pane active" id="mojprofil">

  <center> <h3>Mój profil</h3></center>
    	

    	<form role="form">
  <div class="form-group">
     <label for="email">Login:</label>
    ${uzytkownik.login}
</div>
<div class="form-group">
    <label for="email">Imię:</label>
   ${uzytkownik.imie} 
  </div>
  <div class="form-group">
    <label for="pwd">Nazwisko:</label>
    ${uzytkownik.nazwisko}
  </div>
 
  <div class="form-group">
    <label for="pwd">Adres email:</label>
   ${uzytkownik.email}
  </div>
   <div class="form-group">
   
    <label>Avatar</label>
     <img src="images/profil.png" height="100px" weight="100px" />

   </div>
  
  <a href="<c:url value="/editu.htm"/>?id=${uzytkownik.id}" type="button" align="right" type="submit" class="btn btn-default">Edytuj dane</a>
  <button align="right" type="submit" class="btn btn-default">Zmień hasło</button>


   </form>

  </div>
  

    <div role="tabpanel" class="tab-pane" id="wybierzterminy">


  <center>  <h3>Wybierz terminy: </h3></center>

 <ul class="list-group">
  <a href="#top" class="list-group-item">
    <span class="badge">14</span>
  służba zdrowia</a>
  
  <a href="#top" class="list-group-item">
    <span class="badge">2</span>
    polityka zagraniczna</a>
  
  <a href="#top" class="list-group-item">
    <span class="badge">1</span>
    obronność</a>
 
</ul>
    	
    	<div class="form-group">

    	<label for="sel2">Kategoria:</label>
  <select class="form-control" id="sel1">
    <option>Zdrowie</option>
    <option>Ekologia</option>
    <option>Filozofia</option>
    <option>Wybory</option>
  </select>
  <label for="sel1">Wybierz terminy:</label>
  <select class="form-control" id="sel1">
    <option>media</option>
    <option>służby specjalne</option>
    <option>polityka prorodzinna</option>
    <option>militaria</option>
  </select>
  

  <button type="submit" class="btn btn-default">Dodaj</button>
</div>



    </div>
  
 




  

  </div>

</div>
    
      </div>
      </div>

      <hr>

      <footer>
        <p>© Company 2014</p>
      </footer>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" ></script>
  </body>
</html>