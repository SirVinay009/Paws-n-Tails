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
  <link rel="stylesheet" href="directory/PetList.css" type="text/css">

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

                      
                <li><a href="${pageContext.request.contextPath}/AdminConsole.jsp">Site Members</a></li>
                <li><a href="${pageContext.request.contextPath}/index.jsp">Logout</a></li>
                 <li><a href="${pageContext.request.contextPath}/OrderList.jsp">Order List</a></li>
                <li><a href="${pageContext.request.contextPath}/FeedbackList.jsp">Feedback List</a></li>
                <li><a href="${pageContext.request.contextPath}/AccessoryList.jsp">Accessory List</a></li>
                <li><a href="${pageContext.request.contextPath}/PaymentList.jsp">Payment List</a></li>
                
            </ul>   
          
  </div>
</nav>
    
  <center>
        <h1> Pets </h1>
   
<table class="table table-hover" cellpadding="5" cellspacing="5" border ="2">
  <thead>
    <tr>
 <th>ID</th>
      <th>Pet Breed</th>
      <th>Pet Desc</th>
      <th>Pet Price</th>
      <th>Pet Stock</th>
     
    </tr>
  </thead>   
  
  <% 
 
       
       HttpSession newsession = request.getSession();
    
    
       Connection con = null;
      
       ResultSet resultSet = null;
       PreparedStatement pst= null; 
   
       
try
 {

    
 con  =   GetCon.getCon(); 
 
 String qry  = "" ; 
 
 qry  = "Select *   from  pet" ; 
    
 
 pst  =  con.prepareStatement(qry) ; 
 
 
 resultSet =   pst.executeQuery();
 

while(resultSet.next())
{
   

%>


    <tr>
   
          
<td><%=resultSet.getString("ID") %></td>
<td><%=resultSet.getString("PETBREED") %></td>
<td><%=resultSet.getString("PETDESC") %></td>
<td><%=resultSet.getString("PETPRICE") %></td>
<td><%=resultSet.getString("PETSTOCK") %></td>



    </tr>
    
    
<%
   
    }

}
catch(Exception e)
{
e.printStackTrace();
}

%>


</table>

 <div class="col-md-6 ">
 
     <div class="abc">
         
                
    <form class="form-horizontal" method="POST" action="RemoveProductCtr">
        
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
        
        

         <button type="submit" value="delete" class="btn btn-md btn-success"  name="submit">Remove Product</button>
    </form>   
        </div>
  
   
                ${msg}
        
        
     </div>
                
                 
<br><br><br> 

<center>
        <br><br><br>
        <button type="submit"  class="btn btn-md btn-success printpagebutton" onclick="myFunction()" >Print</button>
        </center>
        
    

  </body>
</html>

        
