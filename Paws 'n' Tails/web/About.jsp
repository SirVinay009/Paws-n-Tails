<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="directory/aboutcss.css" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
  
    </head>
    <body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.jsp">Paws 'n' Tails</a>
            </div>
            
          <ul class="nav navbar-nav navbar-right">
        <li class="active">
        <li><a href="${pageContext.request.contextPath}/Feedback.jsp">Feedback</a></li>
                <li><a href="${pageContext.request.contextPath}/login.jsp">Login</a></li>
                <li><a href="${pageContext.request.contextPath}/Contact.jsp">Contact Us</a></li>
                <li><a href="${pageContext.request.contextPath}/Registration.jsp">Sign Up</a></li>
    </ul>
            
        </div>
    </nav>
    
    <div align="center">
    <div class="container">
        <h2>
            About Us
        </h2>
        
    </div>
        
    </div>
    
      <div class="col-md-6 ">
    <img src="http://www.regionalstratansw.com/wp-content/uploads/2016/04/pets500px.jpg" alt="abc" class="xyz" height="350">
            
              </div> 
    
    <div class="container">
    <div class="row container abc">
      <div class="col-md-6 text-center b2">
          
          <p>
            <b>We are a committed team of individuals aiming to provide a  first class experience of a pet website.
                   We hope you shall enjoy the look and feel of this web site as you surf for products, look for accessories and hope this results in
                   a culminating experience for you. Paws 'n' Tails is ready greet you.. Are you ready to adopt home a pet?</b>
                
    </p>    
      </div>
     
    </div>
        
        <form class="form-horizontal" method ="POST" action="services.jsp">
        <center>
            <button class="btn btn-success" type="submit">Our Services</button>
        </center>
         </form>
    
    </div>
    
    
    
    </body>
</html>