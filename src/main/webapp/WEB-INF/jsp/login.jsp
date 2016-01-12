<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Zaloguj się</title>
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
    <title>Logowanie</title>

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
   

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
     
        <h1>Logowanie</h1>
        <p>Webowy System Oceny debat politycznych z modułem klasyfikacji argumentów.</p>
      
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
      <div>

  <!-- Nav tabs -->
 
    <center>	<h2><h1>Zaloguj się</h1></h2> </center>

            
            

            
         
<body>



	<div id="login-box">


       <form name='loginForm'
			action="<c:url value='/j_spring_security_check' />" method='POST'>
          
    	<form role="form">
  <div class="form-group">
    <label for="text">Login:</label>
      <input type='text' name='username' path="login" placeholder="Login" required="true" type="text" class="form-control" /><form:errors path="login" />
  </div>
  <div class="form-group">
    <label for="pwd">Hasło:</label>
    <input type='password' name='password' path="haslo"  type="password" class="form-control" placeholder="Hasło" required="true"/><form:errors path="haslo"/>
  </div>
  
   

    <button type="submit" class="btn btn-success" name="submit"
						value="submit">Zaloguj się</button>
   </div>
   </form>
        
	

			

		</form>
	</div>

</body>
            
            
          
            
       
       
   </div>
   </form>
       
  </div>
 




  



    </div>

  </div>


    

      <hr>

    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" ></script>
 
  </body>
</html>


</html>