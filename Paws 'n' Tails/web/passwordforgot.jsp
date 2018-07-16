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
  <link rel="stylesheet" href="directory/forgot.css" type="text/css">
  <script>
 <script language="javascript">
 function passwordcheck()
            {
              var password1 = document.getElementById("pw1").value;
              var password2 = document.getElementById("pw2").value;
               if (password1 === password2)
               {
                   return true;
                   
               }
               else 
               {
                   alert("password is not same");
                   return false;
               }
            }
</script>
        </script>
  
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
            
            </ul>   
       
  </div>
</nav>
            <div class="container">  
                <div class="row">
            <div class="col-sm-12">          
<div class="welcometitle">
       
        <h2>Change Password</h2> </div>
        <form class="form-horizontal" method="POST" action="passforgotback" >
            
            
            <div class="form-group">
	<label class="control-label col-md-4" for="USERNAME">Username:</label>
	<div class="col-md-4">
	<input type="text" class="form-control" id="USERNAME" name="USERNAME1" pattern="[0-9A-z_.]{4,15}" 
              title="Atleast 4 characters (use only alphabets,numbers and '.','_')" required>
	</div>
</div>
           
          
	
            <div class="form-group">
	<label class="control-label col-md-4" for="">Old Password:</label>
	<div class="col-md-4">
	<input type="password" class="form-control" id="OLDPASSWORD" name="OLDPASSWORD1"   pattern="[0-9]{1,15}" 
              title="Atleast 4 characters (exclude symbols)" required>
	</div>
</div>
            
             <div class="form-group">
	<label class="control-label col-md-4" for="NEWPASSWORD">New Password:</label>
	<div class="col-md-4">
	<input type="password" class="form-control" id="NEWPASSWORD" name="NEWPASSWORD1"   pattern="[0-9]{1,15}" 
               title="Atleast 4 characters (exclude symbols)" required>
	</div>
</div>
            
              <div class="form-group">
	<label class="control-label col-md-4" for="EMAILID">Email ID:</label>
	<div class="col-md-4">
	<input type="email" class="form-control" id="EMAILID" name="EMAILID1" required>
	</div>
</div>
         
            <br>
          <button type="submit" name="Submit" class="btn btn-md btn-success" value="Submit" onclick="passwordcheck()">Submit</button>

	  </form> 
           
           </div>
                </div>
      
</div>     
    
               
                
</body>
</html>