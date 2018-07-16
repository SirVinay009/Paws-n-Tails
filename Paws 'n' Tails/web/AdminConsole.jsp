<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

   <%@page import="java.sql.PreparedStatement"%>
<%@page import="com.GetCon"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <a href="AdminConsole.jsp"></a>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css' >
  <link href="directory/adminconsole.css" rel="stylesheet" type="text/css">

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
  <script>
function myFunction() {
    window.print();
}
</script>
    </head>
    <body>
 
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.jsp">Paws 'n' Tails</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
   
             
                <li class="active">
                <li><a href="${pageContext.request.contextPath}/createProduct.jsp">Create Pet</a></li>
                <li><a href="${pageContext.request.contextPath}/CreateProductAccessory.jsp">Create Accessory</a></li>
                <li><a href="${pageContext.request.contextPath}/OrderList.jsp">Order List</a></li>
                <li><a href="${pageContext.request.contextPath}/index.jsp">Logout</a></li>
                
            </ul>   
          
 
  </div>
</nav>
    
        
    <center>
        <h1> Admin Members  </h1>
   
   
<%
    HttpSession newsession = request.getSession();
    
    
    int count = 1;
    
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;



%>
 
<table class="table table-hover" cellpadding="5" cellspacing="5" border ="2">
  <thead>
    <tr>
 <th>Admin ID</th>
      <th>Admin Name</th>
      <th>Admin Email</th>
    
    </tr>
  </thead>   
   <% 
    
try
{ 
connection =  GetCon.getCon(); 


statement = connection.createStatement();
String sql ="SELECT * FROM admn";

resultSet = statement.executeQuery(sql);
 

while(resultSet.next()){
   

%>


    <tr>
   
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("ADMINNAME") %></td>
<td><%=resultSet.getString("ADMINEMAIL") %></td>

    
</tr>

<%
   
    }}
catch(Exception e)
{
e.printStackTrace();
}

%>


</table> 


 <div class="col-md-6 ">
 
     <div class="abc">
         
                
    <form class="form-horizontal" method="POST" action="AddAdminCtr" >
			
    <div class="form-group">
      <label class="control-label col-md-5 printpagebutton" for="AdminName">Admin Name: </label>
<div class="col-md-6">
      <input type="text" class="form-control printpagebutton" id="ADMINNAME" placeholder="Enter your name here" name="ADMINNAME">
</div>



</div>
	
    
	
	<div class="form-group">
	<label class="control-label col-md-5 printpagebutton" for="ADMINEMAIL">Email: </label>
	<div class="col-md-6">
	<input type="text" class="form-control printpagebutton" id="password" name="ADMINEMAIL" required>
	</div>
</div>

<div class="form-group">
	<label class="control-label col-md-5 printpagebutton" for="ADMINPASSWORD">Password:</label>
	<div class="col-md-6">
	<input type="password" class="form-control printpagebutton" id="ADMINPASSWORD" name="ADMINPASSWORD" required>
	</div>
</div>
        
  
      
        <br><br><br>
        <button type="submit" value ="addbtn" class="btn btn-md btn-success printpagebutton"   name="submit">Add Member</button>
        <button type="submit" value="delbtn" class="btn btn-md btn-success printpagebutton"   name="submit">Remove Member</button>
      
    </form>      
       
        </div>
  
    


  
                ${msg}
        
        
     </div>

<center>
        <br><br><br>
        <button type="submit"  class="btn btn-md btn-success printpagebutton" onclick="myFunction()" >Print</button>
        </center>
        
                
                
                
    </body>
</html>

