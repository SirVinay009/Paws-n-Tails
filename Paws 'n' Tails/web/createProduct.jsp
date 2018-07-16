<%-- 
    Document   : createProduct
    Created on : Feb 18, 2017, 5:02:58 PM
    Author     : Vinay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    
    <body>
        
         <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.jsp">Paws 'n' Tails</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
   
             
                <li class="active">
               
                
                <li><a href="${pageContext.request.contextPath}/AdminConsole.jsp">Site Members</a></li>
                <li><a href="${pageContext.request.contextPath}/index.jsp">Logout</a></li>
                
            </ul>   
           
  </div>
</nav>
        
    <center>
        <h1>Create Pet</h1>
        
        <form class="form-horizontal" method="POST" action="CreateProductCtr"  enctype="multipart/form-data"  >

        <div class="form-group">
         <label class="control-label col-md-4" for="PETID"> Pet ID: </label>
         <div class="col-md-4"> 
         <input type="number" class="form-control" id="PETID" name="petid" required>
         </div>
        </div>

         <div class="form-group">
      <label class="control-label col-md-4" for="PETBREED"> Pet Breed: </label>
      <div class="col-md-4">
          <input type="text" class="form-control" id="PETBREED" name="petbreed" required>
      </div>
       </div>

         <div class="form-group">
      <label class="control-label col-md-4" for="PETDESC"> Pet Desc: </label>
<div class="col-md-4">
     
    <textarea class="form-control" rows="5" id="PETDESC"  name="petdesc" required></textarea>
   
</div>
    </div>
       

        
         <div class="form-group">
      <label class="control-label col-md-4" for="PETPRICE"> Pet Price: </label>
<div class="col-md-4">
    <input type="text" class="form-control" id="PETPRICE" name="petprice" required>
</div>
    </div>
        
         <div class="form-group">
      <label class="control-label col-md-4" for="PETSTOCK">Pet Stock: </label>
<div class="col-md-4">
    <input type="text" class="form-control" id="PETSTOCK" name="petstock" required>
</div>
    </div>
        
         <div class="form-group">
      <label class="control-label col-md-4" for="PETIMAGE"> Upload Image: </label>
<div class="col-md-2">
      <input type="file" class="form-control" id="PETIMAGE" name="petimage" required>
</div>
    </div>
        
        <button type="submit" class="btn btn-md btn-success">Create Product</button>
      
        
        
        </form>    
    ${msg}
    </center>
   
   
    
    </body>
</html>
