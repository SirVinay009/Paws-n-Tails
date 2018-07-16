
<!Doctype html>
<html>
    <html lang="en">
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css' >
  <link href="C:\Users\Vinay\Documents\NetBeansProjects\Paws 'n' Tails\src\java" rel="stylesheet">

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
 
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">Paws 'n' Tails</a>
            </div>
           
        </div>
    </nav>
    </head>
                
    
    <body>
        
        <div align="center">
            <div class="container">
                
                <h4>
                Administrator Login
                </h4>
           
                <form class="form-horizontal" method="GET" action="AdminLoginBack.jsp">
			    
         <div class="form-group">
      <label class="control-label col-md-4" for="ADMINNAME">Name: </label>
<div class="col-md-4">
      <input type="text" class="form-control" id="ADMINNAME" placeholder="Enter your name here" name="AdminName" required>
</div>
    </div>
        
         <div class="form-group">
      <label class="control-label col-md-4" for="ADMINPASSWORD">Password: </label>
<div class="col-md-4">
      <input type="password" class="form-control" id="ADMINPASSWORD" name="AdminPassword" required>
</div>
    </div>
           
                    
                    <button type="submit" class="btn btn-md btn-success">Login</button>
          
                </form>
            </div>
        
                    
            
                
             
                
            </div>
    </body>
</html>
    
    