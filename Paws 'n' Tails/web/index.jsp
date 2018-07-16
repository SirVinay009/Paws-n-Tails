<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html lang="en">
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="directory/indexcss.css" type="text/css">
 
  
    </head>
    
    <body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">Paws 'n' Tails</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
   
             
                <li class="active">
                <li><a href="${pageContext.request.contextPath}/About.jsp">About Us</a></li>
                <li><a href="${pageContext.request.contextPath}/Feedback.jsp">Feedback</a></li>
                <li><a href="${pageContext.request.contextPath}/Contact.jsp">Contact Us</a></li>
                <li><a href="${pageContext.request.contextPath}/login.jsp">User Login</a></li>
                <li><a href="${pageContext.request.contextPath}/Registration.jsp">Sign Up </a></li>
                <li><a href="${pageContext.request.contextPath}/admin.jsp">Admin Login</a></li>
                <li><a href="${pageContext.request.contextPath}/passwordforgot.jsp">Forgot password</a></li>
            
                
                
            </ul>   
          
  
  </div>
</nav>
    
        
          
       <div class="welcometitle">
           <h1 class="text-center">
                 Paws 'n' Tails
           </h1>
       </div>
        
     <div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="directory/pic1.jpg" alt="pics" width="800" height="800">
      </div>

      <div class="item">
        <img src="directory/pic2.jpg" alt="pics2" width="800" height="800">
      </div>
    
      <div class="item">
        <img src="directory/pic3.jpg" alt="pics3" width="800" height="800">
      </div>

      <div class="item">
        <img src="directory/pic4.jpg" alt="pics4" width="800" height="800">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
     </div>
        
                
  <p align="center">

   
  
  <div class="text-center">
    <a href="https://plus.google.com/u/0/112076425804837403183/posts" class="g btn btn_default" target="_blank" text-align="center"><img src="http://2.bp.blogspot.com/-w3kgFqhXU7I/Trduf3NRK-I/AAAAAAAAB80/W4cQ_Bt8oBE/s200/100.png" alt="google it is" width="75" height="75"></a>
    <a href="https://www.facebook.com/profile.php?id=100007472985316" class="fb btn btn_default" target="_blank" text-align="center"><img src="http://i707.photobucket.com/albums/ww77/litewrite/facebook-logo-1.gif" alt="name" width="75" height="75"></a>
    <a href="https://github.com/SirVinay009" class="fb btn btn_default" target="_blank" text-align="center"><img src="http://farm2.static.flickr.com/1428/buddyicons/1522169@N25.jpg" alt="name" width="75" height="75"></a>
  </div>
  </p>
                
                
        
        <form class="form-horizontal"  method="POST" action="services.jsp" name="Registration">
        
            <center>
        <div class="container">
        
        <br>
        
      
            <button type="submit" class="btn btn-success" >Continue</button>
          
        </div>
            </center>
        </form>
  
    
  
    </body>
          
    
</html>