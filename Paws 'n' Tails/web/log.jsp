

<%@page import="model.AccessoryCartItem"%>
<%@page import="model.CustomerDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.CartItem"%>
<%@page import="model.AdminDAO"%>
<%@page import="model.CustomerDAO"%>
<%@page import="com.GetCon"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>



<%
    String custemail = request.getParameter("CUSTEMAIL");
    String password = request.getParameter("CUSTPASSWORD");
    
   session.setAttribute("CUSTEMAIL",custemail);
    
    boolean  status ; 
    
    status  = CustomerDAO.checkCustomerLogin( custemail, password); 
   
    
   ArrayList<CartItem> list  = new ArrayList(); 
   ArrayList<AccessoryCartItem>    list1  = new ArrayList();
    
   session.setAttribute("custdet", CustomerDAO.getCustomerByEmail(custemail) ); 
   
   session.setAttribute("itemlist", list);
   session.setAttribute("itemlist1",  list1 );
  
   
   
   if ( status) 
   { 
    
      response.sendRedirect("ProductList.jsp");
    
   }
   else
   {
   
       response.sendRedirect("login.jsp");
   }  
  
   
   
   
//   if(CustomerUtil.checkCustomerLogin(useremail,password))
//   {
//       RequestDispatcher dispatcher = request.getRequestDispatcher("ProductList.jsp");
//   
//    dispatcher.forward(request, response);
//                                         
//                    
//          }
//          else 
//          { 
//                   
//                      out.println("Please Try logging in again");
//                
//          }
//    
//   
//   }

    %>
