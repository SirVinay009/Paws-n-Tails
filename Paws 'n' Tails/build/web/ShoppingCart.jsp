<%@page import="model.AccessoryCartItem"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.CartItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="directory/normalize.css">
   <link rel="stylesheet" type="text/css" href="directory/styles.css">
   <link rel="stylesheet" type="text/css" href="directory/shoppingcss.css">
   <script src="scripts/jquery.js"></script>
   <script src="scripts/modernizr.js"></script>
   
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
                
                <li><a href="${pageContext.request.contextPath}/ProductList.jsp">Services</a></li>
                <li><a href="${pageContext.request.contextPath}/index.jsp">Logout</a></li>
            
            </ul>   
          
  
         </div>
      </nav>
        <div class="shoppingtitle">
             <h2>
                 Shopping Cart
                           </h2>
       </div>
        
        <div class="carttitle">
            <h4>
              Items Added to Cart 
              
            </h4>
            
            
        </div>
                
                
                
                    <div class="tabledetails">
           
  <table class="table table-bordered">
    <thead>
      <tr>
        
      </tr>
    </thead>
    <tbody>
        
        
        
         <%
                    
                      ArrayList<CartItem> itemlist  = (ArrayList<CartItem>) session.getAttribute("itemlist") ; 

                      ArrayList<AccessoryCartItem> itemlist1  = (ArrayList<AccessoryCartItem>) session.getAttribute("itemlist1") ; 

                      
                      int id   =  0 ; 
                    
                      int totalprice  = 0  ; 
                    
                      int qty   = 0  ; 
                    
                    
                      for ( CartItem item  : itemlist)
                      {
                
                        id  = item.getPetid(); 
                        totalprice  = item.getTotalprice(); 
                        qty   = item.getQty() ; 




         %>
        
        
        
      <tr>
          
    <form   method="GET" action="AddToCartCtr"   name="removeitemform"  >
          
          <td> 
      
              <label><input type="checkbox" value="<%= id %>"  name="removeitemid"> <%= id %></label>
        
        
         </td>
        
        
         
         <td> 
        
          <img class="img-thumbnail" src= "${pageContext.request.contextPath}/ImageServlet?petid=<%=id%>" alt="Chania" width="80" height="80">                  
        
         </td>
        
         
         
         
         <td> 
            Quantity  :  <%= qty %>  <br> 
         </td>
        <td>
        
            Total Price : <%= totalprice %>
        </td>
   
   
        
        <td>
          <button type="submit" class="btn btn-md btn-success">  Remove Item </button>
        </td>      
     
    </form>
    
  </tr>
  
      <%
      
      }
      %>
  
      
      
      <%
                      for ( AccessoryCartItem item  : itemlist1)
                      {
                
                        id  = item.getAccessoryid(); 
                        
                        totalprice  = item.getTotalprice(); 
                        qty   = item.getQty() ; 


        System.out.println("id "  + id );
         System.out.println("  total price "  + totalprice );
      %>
    
      <tr>
          
    <form  method="GET" action="AccesoryToCartCtr"   name="removeitemform"  >
          
          <td> 
      
              <label><input type="checkbox" value="<%= id %>"  name="removeitemid1"> <%= id %></label>
        
        
         </td>
        
        
         
         <td> 
        
          <img class="img-thumbnail" src= "${pageContext.request.contextPath}/ImageAccessory?accessoryid=<%=id%>" alt="Chania" width="80" height="80">                  
        
         </td>
        
         
         
         
         <td> 
            Quantity  :  <%= qty %>  <br> 
         </td>
        <td>
        
            Total Price : <%= totalprice %>
        </td>
   
   
        
        <td>
          <button type="submit" class="btn btn-md btn-success">  Remove Item </button>
        </td>      
     
    </form>
    
  </tr>
    
      
      
  <%
      
      }
      %>
     
    </tbody>
  </table>

      
    </div>  
   
           
 <form class="form-horizontal" method = "GET" action="CheckOut.jsp">
                
             
                 <br><br>
          <button type="submit" class="btn btn-md btn-success"> CheckOut </button>
               
       
 </form>
      
      
    
    </body>
</html>
