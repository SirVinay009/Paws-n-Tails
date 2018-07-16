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
  <link rel="stylesheet" href="directory/PaymentList.css" type="text/css">

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
                <li><a href="${pageContext.request.contextPath}/PetList.jsp">Pet List</a></li>
                
            </ul>   
          
  </div>
</nav>
                
                <center>
        <h1> Customer Payment </h1>
   
<table class="table table-hover" cellpadding="5" cellspacing="5" border ="2">
  <thead>
    <tr>
 <th>ID</th>
      <th>Email Verify</th>
      <th>Contact No</th>
      <th>Order Date</th>
      <th>Delivery Date</th>
      <th>Shipping Address</th>
     
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
 
 qry  = "Select *   from  payment" ; 
    
 
 pst  =  con.prepareStatement(qry) ; 
 
 
 resultSet =   pst.executeQuery();
 

while(resultSet.next())
{
   

%>


    <tr>
        
           
          
<td><%=resultSet.getString("ID") %></td>
<td><%=resultSet.getString("EmailVerify") %></td>
<td><%=resultSet.getString("ContactNo") %></td>
<td><%=resultSet.getString("FromDate") %></td>
<td><%=resultSet.getString("ToDate") %></td>
<td><%=resultSet.getString("ShippingAddress") %></td>



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
                
<br><br><br> 


      <center>
        <br><br><br>
        <button type="submit"  class="btn btn-md btn-success printpagebutton" onclick="myFunction()" >Print</button>
        </center>
        
    

  </body>
</html>