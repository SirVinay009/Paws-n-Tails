 package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.AdminDAO;


public class CreateProductAccessoryCtr extends HttpServlet {

  
     protected void  doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
  
   String      btn  =   request.getParameter("submit") ; 
                    
   String accessoryid    = request.getParameter("ACCESSORYID");
   String accessorytype = request.getParameter("ACCESSORYTYPE");
   String accessorydesc  = request.getParameter("ACCESSORYDESC");
   String accessoryprice = request.getParameter("ACCESSORYPRICE");
   String accessorystock = request.getParameter("ACCESSORYSTOCK");
   

     Part accessoryimage = request.getPart("ACCESSORYIMAGE");
   
    HashMap<String ,  Object>  map  = new HashMap(); 
   
   map.put("accessoryid"    ,  accessoryid); 
   
   map.put("accessorytype"  , accessorytype) ; 
   
   map.put("accessorydesc"   , accessorydesc); 
   
   map.put("accessoryprice"  ,  accessoryprice) ; 
   
   map.put("accessorystock"  , accessorystock) ; 
   
   map.put("accessoryimage"  , accessoryimage) ; 
   
   
   boolean flag ; 
    
    String msg = "" ; 
  
   if (  btn.equals("create") )
   { 
    
    flag =  AdminDAO.CreateProductAccessory(map); 
    
          
   if ( flag == true )
   { 
   
       msg  = "<strong><b>product created! </b></strong> " ; 
   } 
   else 
   { 
       msg   = "<strong><b> Please fill all fields again... </b></strong>"  ; 
       
       
   }}

       request.setAttribute("msg"  , msg ); 
       
       RequestDispatcher  dispatcher  = request.getRequestDispatcher("CreateProductAccessory.jsp"); 
       
       dispatcher.forward(request, response);
   
    
}}
      
       