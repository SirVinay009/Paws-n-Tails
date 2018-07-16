<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
    <html lang="en">
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="directory/indexcss.css" type="text/css">     
    </head>
    
    <%
        Date today = new Date();
        SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd/MM/yyyy");
        String current = DATE_FORMAT.format(today);
        %>
    
    
    <body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.jsp">Paws 'n' Tails</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
   
                 <li class="active">
                <li><a href="${pageContext.request.contextPath}/About.jsp">About Us</a></li>
                <li><a href="${pageContext.request.contextPath}/Contact.jsp">Contact Us</a></li>
                 <li><a href="${pageContext.request.contextPath}/index.jsp">Logout</a></li>
                
                  </ul>   
           
  
  </div>
</nav>
    
        <div class="container">
            
            <h3 class="text-center">
                
                Verify Payment Details
                
            </h3>
            
            <form class="form-horizontal" method ="POST" action="CheckOutCtr">
                
                 <div class="form-group">
      <label class="control-label col-md-4" for="ID"> Enter a unique ID</label>
<div class="col-md-4">
      <input type="number" class="form-control" id="ID" name="ID" required>
</div>
    </div>
                
                
                <div class="form-group">
      <label class="control-label col-md-4" for="EMAILVERIFY">Email Verify: </label>
<div class="col-md-4">
      <input type="email" class="form-control" id="EMAILVERIFY" name="EMAILVERIFY" required value="<%=session.getAttribute("CUSTEMAIL")%>" readonly>
</div>
    </div>
                
                <div class="form-group">
      <label class="control-label col-md-4" for="CONTACTNO">Contact no: </label>
	  <div class="col-md-4">
      <input type="text" class="form-control" id="CONTACTNO"  name="CONTACTNO" pattern="[0-9]{1,15}"  required>
	  </div>
    </div>
                
                <div class="form-group">
	<label class="control-label col-md-4" for="FROMDATE">Date of Order:</label>
	<div class="col-md-4">
            <input type="date" class="form-control" id="FROMDATE" required name="FROMDATE" value=<%=current%>>
	</div>
</div>

                
                <div class="form-group">
	<label class="control-label col-md-4" for="TODATE">Delivery Date: </label>
	<div class="col-md-4">
	<input type="date" class="form-control" id="TODATE" name="TODATE"  required>
	</div>
</div>
                
                <div class="form-group">
                    <label class="control-label col-md-4" for="SHIPPINGADDRESS">Shipping Address:</label>
                    <div class="col-md-4">
<textarea class="form-control custom-control" rows="3" name="SHIPPINGADDRESS"  required></textarea>
                    </div>
                </div>
                
                <center>
                 <br><br>
          <button type="submit" class="btn btn-md btn-success" name="submit" value="CheckOut">Proceed for Payment</button>
                </center>
            </form>
        </div>
       
<!--</form>-->
        
            
         ${msg}
         
         
        
        </body>
</html>