
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="directory/regcss.css" type="text/css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
  
    </head>
    
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">Paws 'n' Tails</a>
            </div>
            
          <ul class="nav navbar-nav navbar-right">
      
             
      <li><a href="${pageContext.request.contextPath}/About.jsp">About Us</a></li>
      <li><a href="${pageContext.request.contextPath}/Feedback.jsp">Feedback</a></li>
      <li><a href="${pageContext.request.contextPath}/Contact.jsp">Contact Us</a></li>
      <li><a href="${pageContext.request.contextPath}/login.jsp">Login </a></li>
      <li><a href="${pageContext.request.contextPath}/passwordback.jsp">Forgot password</a></li>
     
      
    </ul>
            
        </div>
    </nav>
    <body>
               
       <div class="container">

            <h3 class="text-center">
               Sign Up To Register
            </h3>
	
           <form class="form-horizontal" method ="POST" action="RegistrationCtr" >
        
         <div class="form-group">
      <label class="control-label col-md-5" for="CUSTID">Enter a Cust ID </label>
<div class="col-md-6">
      <input type="number" class="form-control" id="CUSTID" name="CUSTID"  required>
</div>
    </div>
	
			
    <div class="form-group">
      <label class="control-label col-md-5" for="CUSTNAME">Name: </label>
<div class="col-md-6">
      <input type="text" class="form-control" id="CUSTNAME" placeholder="Enter your name here" name="CUSTNAME"  pattern="[0-9A-z_.]{4,15}" 
              title="Atleast 4 characters (use only alphabets,numbers and '.','_')" required>
</div>
    </div>
	
    <div class="form-group">
      <label class="control-label col-md-5" for="CUSTPHONE">Phone: </label>
	  <div class="col-md-6">
      <input type="text" class="form-control" id="CUSTPHONE"  name="CUSTPHONE"  pattern="{1,15}"  required>
	  </div>
    </div>
	
	<div class="form-group">
	<label class="control-label col-md-5" for="CUSTEMAIL">Email: </label>
	<div class="col-md-6">
	<input type="email" class="form-control" id="password" name="CUSTEMAIL" required>
	</div>
</div>

<div class="form-group">
	<label class="control-label col-md-5" for="CUSTPASSWORD">Password:</label>
	<div class="col-md-6">
	<input type="password" class="form-control" id="CUSTPASSWORD" name="CUSTPASSWORD"  pattern="[0-9]{1,15}"  required>
	</div>
</div>
        
        <div class="form-group">
            <label class="control-label col-md-5" for="CUSTADDRESS"> Address:</label>
	<div class="col-md-6">
	<input type="text" class="form-control" id="CUSTADDRESS" name="CUSTADDRESS" required>
	</div>
</div>
        

<div class="form-group">
	<label class="control-label col-md-5" for="CUSTCITY">City:</label>
	<div class="col-md-6">
	<input type="text" class="form-control" id="CUSTCITY" name="CUSTCITY" required>
	</div>
</div>


<div class="form group">
<label class="control-label col-md-5" for="CUSTSTATE">State:</label>
<div class="col-md-6">
<input type="text" class="form-control" id="CUSTSTATE" name="CUSTSTATE" required>
</div>
</div>
        
        <br><br><br>
<div class="form group">
<label class="control-label col-md-5" for="CUSTPINCODE">Pin Code:</label>
<div class="col-md-6">
<input type="text" class="form-control" id="CUSTPINCODE" name="CUSTPINCODE" required>
</div>
</div>        
        
        <center>
        <br><br><br>
        <button type="submit" class="btn btn-md btn-success" name="submit" value="Submit">Submit</button>
        </center>
           </form>
        </div>
  

           
           ${msg}
           
           
       
           
       </div>
</body>
</html>