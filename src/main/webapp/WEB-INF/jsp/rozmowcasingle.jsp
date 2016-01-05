
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
           <!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>${rozmowca.imie} ${rozmowca.nazwisko}</title>

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
     
        <h1>Rozmówca </h1>
        <p>Webowy System Oceny debat politycznych z modułem klasyfikacji argumentów.</p>
      
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
      <div>



            
            

            
           <%-- <form:input path="dataurodzenia" type="date" placeholder="Data" required="true"/> <form:errors path="data"/>--%><br/>
            
            
         
            
            
            
          
            
       
        <form:form commandName="rozmowca" method="POST" action="addr.htm">
            <form:hidden path="id"/>
    	<form role="form">
  <div class="form-group">
    <label for="email">Imię:</label>
                ${rozmowca.imie}
  </div>
  <div class="form-group">
    <label for="pwd">Nazwisko:</label>
   ${rozmowca.nazwisko}
  </div>
   <div class="form-group">
    <label for="pwd">Data urodzenia:</label>
   ${rozmowca.dataurodzenia}
  </div>
<div class="form-group">
  <label for="comment">Opis:</label>
${rozmowca.opis}
</div>
<div class="form-group">
  <label for="comment">Odbyte:</label>
${rozmowca.odbyte}
</div>
<div class="form-group">
  <label for="comment">Wygrane:</label>
${rozmowca.wygrane}
</div>
<div class="form-group">
  <label for="comment">Ranking:</label>
${rozmowca.ranking}
</div>
<div class="form-group">
  <label for="comment">Procent:</label>
${rozmowca.wygrane}/${rozmowca.odbyte}
</div>

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