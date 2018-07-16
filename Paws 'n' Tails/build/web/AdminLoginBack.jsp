

<%@page import="model.AdminDAO"%>
<%@page import="model.CustomerDAO"%>
<%@page import="com.GetCon"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<%

       String username   = request.getParameter("AdminName") ; 
       
       
       String password   = request.getParameter("AdminPassword"); 
       
       
         if(  AdminDAO.checkAdminLogin(username, password)   )
         {          
             RequestDispatcher dispatcher  = request.getRequestDispatcher("AdminConsole.jsp"); 
                     
             dispatcher.forward(request, response);
                                         
                    
          }
          else 
          { 
                   
                      out.println("Please Try logging in again");
                
          }
    
    
%>


