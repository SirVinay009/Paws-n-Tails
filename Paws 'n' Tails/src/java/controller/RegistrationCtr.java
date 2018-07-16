package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.CustomerDAO;


public class RegistrationCtr extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String btn = request.getParameter("submit");
        
   String custid = request.getParameter("CUSTID");
   String custname = request.getParameter("CUSTNAME");
   String custphone   = request.getParameter("CUSTPHONE"); 
   String custemail = request.getParameter("CUSTEMAIL");
   String custpassword = request.getParameter("CUSTPASSWORD");
   String custaddress = request.getParameter("CUSTADDRESS");
   String custcity = request.getParameter("CUSTCITY");
   String custstate = request.getParameter("CUSTSTATE");
   String custpincode = request.getParameter("CUSTPINCODE");

   HttpSession session = request.getSession();
   
    session.setAttribute("CUSTNAME", custname);
   
   
   HashMap   <String , String>  map  = new HashMap(); 
   
   map.put("custid",custid);
   
   map.put("custname"  , custname) ; 
   
   map.put("custphone"  , custphone); 
   
   map.put("custemail",  custemail) ; 
   
   map.put("custpassword"  , custpassword) ; 
   
   map.put("custaddress", custaddress) ; 
   
   map.put("custcity",  custcity) ; 
   
   map.put("custstate"  , custstate ) ; 
   
   map.put("custpincode", custpincode) ; 
   
   
   boolean flag ; 
    
    String msg = "" ; 
  
   if (  btn.equals("Submit") )
   { 
    
    flag =  CustomerDAO.saveCustomer(map);
    
          
   if ( flag == true )
   { 
   
       msg  = "<center><b>Registration Details entered!! Click <a href='services.jsp'>&nbsp here </a> to see our services</b></center>" ; 
   } 
   else 
   { 
       msg   = "<center><b>Please fill all fields again...<center><b>"  ; 
           
        }
    }
   
  
   
       request.setAttribute("msg"  , msg ); 
       
       RequestDispatcher  dispatcher  = request.getRequestDispatcher("Registration.jsp"); 
       
       dispatcher.forward(request, response);
   
            
       
    }
    
    }
  