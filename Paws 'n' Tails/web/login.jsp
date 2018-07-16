<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>   
  <link rel="stylesheet" href="directory/logintitle.css" type="text/css">
 
  
</head>
   <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.jsp"><b>Paws 'n' Tails</b></a>
            </div>
             <ul class="nav navbar-nav navbar-right">
      <li><a href="${pageContext.request.contextPath}/About.jsp"> About Us</a></li>
      <li><a href="${pageContext.request.contextPath}/Feedback.jsp">Feedback</a></li>
      <li><a href="${pageContext.request.contextPath}/Contact.jsp"> Contact Us</a></li>
      <li><a href="${pageContext.request.contextPath}/Registration.jsp">Sign up</a></li>
      <li><a href="${pageContext.request.contextPath}/passwordforgot.jsp">Forgot password</a></li>
            
             </ul>
        </div>
    </nav>
    
<body>    

    
       <div class="container">
<div class="welcometitle">
       
        <h2>Sign In</h2> </div>
      
        <form class="form-horizontal" method="POST" action="log.jsp" name="Registration">
           
              <div class="form-group">
      <label class="control-label col-md-4" for="CUSTEMAIL">User Name:</label>
<div class="col-md-4">
      <input type="email" class="form-control" id="CUSTEMAIL" name="CUSTEMAIL"  required>
</div>
   

              </div>
	
            <div class="form-group">
	<label class="control-label col-md-4" for="CUSTPASSWORD">Password:</label>
	<div class="col-md-4">
	<input type="password" class="form-control" id="CUSTPASSWORD" name="CUSTPASSWORD"  pattern="[0-9]{1,15}"  required>
	</div>
</div>


            
            <br><br>
          <button type="submit" class="btn btn-md btn-success">Log In</button>
<input type="hidden"  name="logintype" value="customer">
	  </form> 
      
</div>     
        
        
    
           <center> <a href="Registration.jsp" /> New User ! Sign Up </center> 
           
          
     
        
    </body>
</html>