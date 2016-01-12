<%-- 
    Document   : addDebata
    Created on : 2015-11-28, 00:11:07
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
    <title>Dodawanie debaty</title>

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
   
        <h1>Dodawanie debaty</h1>
        <p>Webowy System Oceny debat politycznych z modułem klasyfikacji argumentów.</p>
      
      </div>
    </div>


    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
     

  <!-- Nav tabs -->
 
    <center>	<h2> <h1>Debata :: <c:choose><c:when test="${not empty param['id']}">Edycja debaty</c:when><c:otherwise>Dodawanie debaty</c:otherwise></c:choose></h1></h2> </center>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Debata</title>
    </head>
     
       
        
        <form:form commandName="debata" method="POST" action="addd.htm">
            
         
    	<form role="form">
             <form:hidden path="id"/>
  <div class="form-group">
    <label for="text">Tytuł:</label>
    <form:input class="form-control" path="tytul" placeholder="Tytuł" required="true" /><form:errors path="tytul"/><br/>
  </div>
  <div class="form-group">
  <label for="comment">Opis:</label>
  <form:input class="form-control" id="opis" rows="7" path="opis" type="text" placeholder="Opis" required="true"/><form:errors path="opis"/>
</div>
 <div class="form-group">
    <label for="pwd">Data:</label>
<form:input class="form-control" id="data" path="data" type="text" placeholder="Data" required="true"/><form:errors path="data"/>
  </div>
 
   <div class="form-group">
    <label for="">Link wideo:</label>
    <form:input type="text" class="form-control" id="video"  path="video" placeholder="Video" required="true"/><form:errors path="video"/>
  </div>
  <label for="">Kategoria:</label></br>
  <form:select items="${kategorie}" path="kategoria" class="form-control" itemValue="id" itemLabel="nazwa"></form:select></br>

           
           
       
  <hr>

  <h2>Rozmówcy</h2>
 <form:select items="${rozmowcy}" path="rozmowca" class="form-control" itemValue="id" itemLabel="nazwisko"></form:select></br>
<button id="dodajrozmowce" align="right" class="btn btn-success" type="button" value="">Dodaj rozmówce</button>
<div id="kontenerrozmowcow">

</div>
   <hr>
           
           <c:choose> <c:when test="${not empty param['id']}"><form:button align="right" type="submit" class="btn btn-success">Zapisz</form:button></c:when><c:otherwise><form:button id="dodajdebate" align="right" type="submit" class="btn btn-success">Dodaj debate</form:button></c:otherwise></c:choose>
       
        </form:form>


 <hr>
<%--
 <h2>Argumenty rozmówcy Robert Gwiazdowski</h2>
 <div class="form-group">
  <label for="comment">Argument <select class="form-control">
  <option>1</option>
  <option>2</option>
  <option>3</option>
  <option>4</option>
  <option>5</option>
</select></label>
  <textarea class="form-control" rows="7" id="opis"></textarea>
</div>
<select multiple class="form-control">
  <option>Opcja 1</option>
  <option>Opcja 2</option>
  <option>Opcja 3</option>
  <option>Opcja 4</option>
  <option>Opcja 5</option>
</select>

 <button type="submit" class="btn btn-default">Akceptuj</button>
    <button type="submit" class="btn btn-default">Usuń rozmówce</button>
   <h2>Argumenty rozmówcy Piotr Szumlewicz</h2>
 <div class="form-group">
  <label for="comment">Argument <select class="form-control">
  <option>1</option>
  <option>2</option>
  <option>3</option>
  <option>4</option>
  <option>5</option>
</select></label>
  <textarea class="form-control" rows="7" id="opis"></textarea>
</div>
<select multiple class="form-control">
  <option>Opcja 1</option>
  <option>Opcja 2</option>
  <option>Opcja 3</option>
  <option>Opcja 4</option>
  <option>Opcja 5</option>
</select>
 <button type="submit" class="btn btn-default">Akceptuj</button>
   <button type="submit" class="btn btn-default">Usuń rozmówce</button>--%>
<hr>

   </form>

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
    	<script>
		function utworzRozmowce(index, idRozmowcy, nazwaRozmowcy){
			var $kontener = $("#kontenerrozmowcow");
			var $opakowacz = jQuery('<div/>',{});
			jQuery('<h3/>',{text: nazwaRozmowcy}).appendTo($opakowacz);
			jQuery('<input/>',{text: '', type:'hidden', id: 'listarozmowcow['+index+'].id', name: 'listarozmowcow['+index+'].id', value: idRozmowcy}).appendTo($opakowacz);

			jQuery('<input/>',{text: '', type:'text', id: 'listarozmowcow['+index+'].argument[0]', name: 'listarozmowcow['+index+'].argument[0]'}).appendTo($opakowacz);
			jQuery('<input/>',{text: '', type:'text', id: 'listarozmowcow['+index+'].argument[1]', name: 'listarozmowcow['+index+'].argument[1]'}).appendTo($opakowacz);
			jQuery('<input/>',{text: '', type:'text', id: 'listarozmowcow['+index+'].argument[2]', name: 'listarozmowcow['+index+'].argument[2]'}).appendTo($opakowacz);
			
			$opakowacz.appendTo($kontener);
		}
		var i=0;
		$(document).ready(function() {
			$("#dodajrozmowce").click(function(e){
				utworzRozmowce(i++, $("#rozmowca").val(), $("#rozmowca option:selected").text())
			})
		})
	</script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" ></script>
  </body>
</html>
