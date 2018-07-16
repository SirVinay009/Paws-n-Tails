
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="directory/regcss.css" type="text/css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
  <link rel="stylesheet" href="directory/regcss.css" type="text/css">
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
        <h1>Create Accessory</h1>
        
        <form class="form-horizontal" method="POST" action="CreateProductAccessoryCtr" enctype="multipart/form-data">
            
             
         <div class="form-group">
      <label class="control-label col-md-4" for="ACCESSORYID"> Accessory ID: </label>
      <div class="col-md-4">
          <input type="number" class="form-control" id="ACESSSORYID" name="ACCESSORYID" required>
      </div>
       </div> 
            
          
         <div class="form-group">
      <label class="control-label col-md-4" for="ACCESSORYTYPE"> Accessory Type: </label>
      <div class="col-md-4">
          <input type="text" class="form-control" id="ACESSSORYTYPE" name="ACCESSORYTYPE" required>
      </div>
       </div>
            
             <div class="form-group">
      <label class="control-label col-md-4" for="ACCESSORYDESC"> Accessory Desc: </label>
<div class="col-md-4">
     
    <textarea class="form-control" rows="5" id="ACCESSORYDESC"  name="ACCESSORYDESC" required></textarea>
   
</div>
    </div>
        
         <div class="form-group">
      <label class="control-label col-md-4" for="ACCESSORYPRICE"> Accessory Price: </label>
<div class="col-md-4">
    <input type="text" class="form-control" id="ACCESSORYPRICE" name="ACCESSORYPRICE" required>
</div>
    </div>
        
         <div class="form-group">
      <label class="control-label col-md-4" for="ACCESSORYSTOCK">Accessory Stock: </label>
<div class="col-md-4">
    <input type="text" class="form-control" id="ACCESSORYSTOCK" name="ACCESSORYSTOCK" required>
</div>
    </div>
            
             <div class="form-group">
      <label class="control-label col-md-4" for="ACCESSSORYIMAGE"> Upload Image: </label>
<div class="col-md-2">
      <input type="file" class="form-control" id="ACCESSORYIMAGE" name="ACCESSORYIMAGE" required>
</div>
    </div>
            
            
<button type="submit" class="btn btn-md btn-success" name="submit" value="create">Create Accessory</button>

        
        </form>    
    ${msg}
    </center>
   
  
    </body>
</html>
            
