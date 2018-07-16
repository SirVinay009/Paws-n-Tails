<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
 
      </style>
    </head>
    
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">Paws 'n' Tails</a>
            </div>
            
          <ul class="nav navbar-nav navbar-right">
        <li class="active">
                <li><a href="${pageContext.request.contextPath}/About.jsp">About Us</a></li>
                <li><a href="${pageContext.request.contextPath}/Contact.jsp">Contact Us</a></li>
                <li><a href="${pageContext.request.contextPath}/login.jsp">Login</a></li>
                <li><a href="${pageContext.request.contextPath}/Registration.jsp">Sign Up</a></li>
    </ul>
            
        </div>
    </nav>
    <body>
                <div align="center">
       <div class="container">
           <h4>
               Feedback
           </h4>
       </div>
                    
                    <form class="form-horizontal" method="POST" action="FeedbackCtr">
                          
                               
         <div class="form-group">
      <label class="control-label col-md-4" for="ID"> ID: </label>
      <div class="col-md-4">
          <input type="number" class="form-control" id="ID" name="ID" required>
      </div>
       </div> 
                        
                           <div class="form-group">
	<label class="control-label col-md-4" for="EMAIL">Email:</label>
	<div class="col-md-4">
	<input type="email" class="form-control" id="EMAIL" name="EMAIL"  required>
	</div>
</div>
                        
                        <div class="form-group">
      <label class="control-label col-md-4" for="FIRSTNAME">Name:</label>
<div class="col-md-4">
      <input type="text" class="form-control" id="FIRSTNAME" name="FIRSTNAME" pattern="[0-9A-z_.]{4,15}" 
              title="Atleast 4 characters (use only alphabets,numbers and '.','_')"   required>
</div>
    </div>
                      
                        <div class="form-group">
                            <label class="control-label col-md-4"  for="COMMENTS">Your Comments: </label>
                            <div class="col-md-4">
                               <textarea class="form-control" rows="5" id="COMMENTS" name="COMMENTS"  required></textarea>    
                            </div>
                        </div>
                        
                  
                        <br><br>
<button type="submit" class="btn btn-success" name="feed" value="Submit">Submit</button>
                    </form>
	</div>
                  
            ${msg}
            
          
            
                </div>
                </body>
                </html>