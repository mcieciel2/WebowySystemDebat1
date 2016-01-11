
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
    <title>Webowy System debat politycznych z modułem klasyfikacji argumentów</title>

    <!-- Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">

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
       <div class="container">
  <div class="row">
<center><h2>${debata.tytul}</h2></center>

<center> 

   <iframe width="560" height="315" src="${debata.video}" frameborder="0" allowfullscreen></iframe>

    </center>
    <center><h4>Liczba wyświetleń: ${debata.wyswietlenia} | Ocena Debaty: ${debata.ocena}               
            
        </h4> </center>
<center><h4>Kategoria: ${debata.kategoria.nazwa}</h4></center>
    <center><h4>Opis: ${debata.opis} </h4></center>
</div>
</div>
    </div>



 <div class="container">
  <div class="row">

      <c:forEach var="rozmowca" items="${debata.getRozmowcy()}">
          
        <div class="col-md-6 jumbotron">
          <center><a href="#top"><h3>${rozmowca.rozmowca.imie} ${rozmowca.rozmowca.nazwisko}</h3></a></center> 
                  <center><img src="images/gwiazdowski.jpg" height="200px" weight="200px" /></center>

                <center><h1>60%</h1></center> 
                    <c:forEach var="argument" items="${rozmowca.getArgument()}">
                        <div class="alert alert-success">
                        ${argument.tresc}
                        <p><a href="plus.htm?id=${argument.id}&debataId=${debata.id}"><icon class="glyphicon glyphicon-plus"></icon></a>
                        <a href="minus.htm?id=${argument.id}&debataId=${debata.id}"><icon class="glyphicon glyphicon-minus"></icon></a> ${argument.plus} ${argument.minus} dotacje  finansowanie</p> 
                       <p></p>

                       </div>
                    </c:forEach>
       </div>
      </c:forEach>
 <div class="col-md-6 jumbotron">
  <center><a href="#top"><h3>Piotr Szumlewicz</h3></a></center>
      <center> <img src="images/szumlewicz.jpg" height="200px" weight="200px" /></center> 
          
      <center><h1>40%</h1></center> 

          <div class="alert alert-warning"> <b> Wie pani, że daję słowo honoru nie wpadłem na to w tej chwili, ale już tyle jest tych performanców związanych też z listami, ja już to pokazałem zresztą w wyborach do Sejmiku Dolnośląskiego i rzeczywiście dostałem się z ostatniego miejsca, zbierając najwięcej głosów ze wszystkich bezpartyjnych samorządowców. </b>
          <p><icon class="glyphicon glyphicon-plus"></icon>
<icon class="glyphicon glyphicon-minus"></icon>+5 wybory</p>
       </div>

       <div class="alert alert-danger">
 W ciągu ostatnich 10 czy tam 12 lat partie polityczne wzięły na dotacje miliard złotych i o tym się praktycznie nie mówi, miliard złotych zostało zabranych obywatelom, czyli około stu milionów rocznie. 

 <p><icon class="glyphicon glyphicon-plus"></icon>
<icon class="glyphicon glyphicon-minus"></icon>-10 dotacje finansowanie</p> 
<p></p>

</div>
   <div class="alert alert-info">Za rok… obcokrajowcy będą mogli kupić ziemię w Polsce. 
<p><icon class="glyphicon glyphicon-plus"></icon>
<icon class="glyphicon glyphicon-minus"></icon>+3 obcokrajowcy</p> 
         </div>
  
          
        </div>

  </div>
 







  </div>

  
         <div class="container jumbotron">


<h2>Komentarze:</h2>

        <hr> 
      <div class="row">
      <div class="col-md-2">
      <center><h4>xyz</h4><img src="images/profil.png" height="100px" weight="100"></center>
     </div>
        <div class="col-md-9 alert alert-warning">
       <p> Oni przecież zlikwidowali trzecią stawkę podatku dochodowego i podatek spadkowy od wielkich majątków. </p>
        <p>wspiera: Nikt</p>
      </div>
          <icon class="glyphicon glyphicon-plus"></icon>
<icon class="glyphicon glyphicon-minus"></icon><h4>+2</h4>
      </div>
<hr>
<div class="row">
     <div class="col-md-2">
      <center><h4>user</h4><img src="images/szumlewicz.jpg" height="100px" weight="100"></center>
     </div>
        <div class="col-md-9 alert alert-warning">
       <p> Trybunał Europejski wyraził pogląd, że przymus do jakichkolwiek czynności medycznych jest sprzeczny z prawami człowieka. </p>
        <p>wspiera: Szumlewicz</p>

      </div>
      <icon class="glyphicon glyphicon-plus"></icon>
<icon class="glyphicon glyphicon-minus"></icon><h4>+5</h4>
      </div>
      <hr>
     <div class="form-group">
  <label for="comment">Dodaj komentarz:</label>
  <textarea class="form-control" rows="7" id="komentarz"></textarea>
</div>
 <label for="comment">Wspierasz: <select class="form-control">
  <option>Nikt</option>
  <option>Robert Gwiazdowski</option>
  <option>Piotr Szumlewicz</option>
</select></label> <button type="submit" class="btn btn-default">Dodaj komentarz</button>

  
  </div>




      <hr>

      <footer>
        <p>© Company 2014</p>
      </footer>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" ></script>
  </body>
</html>