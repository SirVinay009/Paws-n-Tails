
<%@page import="model.AccessoryCartItem"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.InputStream"%>
<%@page import="com.GetCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="directory/ProductListAccessories.css" type="text/css">
   <link rel="stylesheet" type="text/css" href="directory/normalize.css">
   <link rel="stylesheet" type="text/css" href="directory/styles.css">
   <script src="scripts/jquery.js"></script>
   <script src="scripts/modernizr.js"></script>

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
                <li><a href="${pageContext.request.contextPath}/Contact.jsp">Contact Us</a></li>
                <li><a href="${pageContext.request.contextPath}/index.jsp">Logout</a></li>
                <li><a href="${pageContext.request.contextPath}/ShoppingCart.jsp"> Go To Cart</a></li>
                <li><a href="${pageContext.request.contextPath}/ProductList.jsp">Pets</a></li>
            </ul>   
          
  
  </div>
</nav>
            
             <div class="container">
                    <div class="row container secondsection">
                         <div class="col-md-6 firstsection">
  
                             
         <div class="pettitle">
             <h2>
                 Services
                           </h2>
       </div>
                             
                             
      
        <div class="petstitle">
            <h4>
              Accessories
              
            </h4>
            
            
        </div>
        
                              <div class="spacebetween">
                                 <hr>
                             </div>
                             
                             <div class="container">
                             
            <div class="messagetext">
                             
        <div class="alert alert-success">
            <font color="green"> <b>       ${msg}   </b> </font>
        </div>

        <hr size="20">
            </div>                    
                             </div>
         <%   
             
             Connection con  =   null;   
            
             con  =  GetCon.getCon();
          
             
             
             String qry  = "select * from  accessory" ; 
             
            
             ResultSet rs  =  null; 
             PreparedStatement   pst  =  null;   
         
           try 
            { 
                
            pst =  con.prepareStatement(qry);
           
            rs   =  pst.executeQuery(); 

int accessoryid = 0;

String id = "";
            
String  price ="" ; 
            
            String desc = "" ; 
            
            String accessorytype  = ""  ;


            while (  rs.next()) 
            {
           
                
                     accessoryid  = rs.getInt("ID") ; 
            
                     id = String.valueOf(accessoryid); 
           
                     price = rs.getString("ACCESSORYPRICE");
                     
                     desc = rs.getString("ACCESSORYDESC");
                                                
                     accessorytype  = rs.getString("ACCESSORYTYPE"); 

%>

  
            <div class="container">
       <div class="product clear">
               
            <div class="row">
               <header>
				<hgroup>
                <h2> <%= accessorytype %> </h2>
                </hgroup>
			</header>
                <figure>
                <div class="col-sm-4"> 
                <div class="container">
                    
                    
                    <img class="img-responsive" src= "${pageContext.request.contextPath}/ImageAccessory?accessoryid=<%=id%>" alt="Chania" width="200" height="200">     
                
                </div>
                               </div>
                
     </figure> 
  
                    <section>
                        <details>
             <div class="col-sm-8">
                  <div class="container">
                       <summary>
                       <p>  Description  :  <%= desc  %></p> <br>
                       <h3> Price  :  <%= price %> </h3><br>
                       <h3> Accessory Stock : <%= rs.getString("ACCESSORYSTOCK") %> </h3> 
                       </summary>
                 </div>
             </div>
    
                        </details>
                    
                       
                       
                       
                       
                         <form class="form-horizontal"  method="POST" action="AccessoryToCartCtr" name="addtocart">

                             
                 <div class="container">
                     <input type="hidden" name="id" value="<%= id %>" /><br>
                       <input type="hidden" name="accessorytype" value="<%= accessorytype %>" /><br>
                     <strong>Quantity :</strong><input type="number" name="qty" required>  <br>
                     <input type="hidden" name="price" value="<%= price %>" />
                   
                    
                     <br>
                 <div class="buttonforward">
           
                 <button type="submit" class="btn btn-success" > Add To Cart </button>
                 </div>
                 </div>
                         </form>
                     </section>
                     
            </div>
       </div>
            </div>
           
           
            <%
                
             }
           
             con.close();

             } 
            catch( SQLException e ) 
            { 
              e.printStackTrace();
                
            }
           
            %>
       
   
        
         <%
          request.setAttribute("msg", "");
         %>
         
         
            </div>
                    </div>
             </div>
       
    </body>
</html>
 