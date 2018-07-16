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

public class CreateProductCtr extends HttpServlet
{

    protected void  doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
  
  String btn = request.getParameter("submit");
                  
   String petid    = request.getParameter("petid");
   String petbreed = request.getParameter("petbreed");
   String petdesc  = request.getParameter("petdesc");
   String petprice = request.getParameter("petprice");
   String petstock = request.getParameter("petstock");
  
   
   
   Part petimage = request.getPart("petimage");
   
  
   HashMap<String ,  Object>  productmap  = new HashMap(); 
   
   productmap.put("petid"    ,  petid); 
   
   productmap.put("petbreed"  , petbreed) ; 
   
   productmap.put("petdesc"   , petdesc); 
   
   productmap.put("petprice"  ,  petprice) ; 
   
   productmap.put("petstock"  , petstock) ; 
   
   productmap.put("petimage"  , petimage) ; 
   
   
   
  boolean flag  =  AdminDAO.createProduct(productmap) ; 
 

  String msg = "" ; 

  
   if ( flag == true )
   { 
   
       msg  = "<strong><b>New Product Created Successfully .. !! </b></strong> " ; 
   } 
   else 
   { 
       msg   = "<strong><b>Product Upload Failed !! </b></strong>"  ; 
     
   }
  
       request.setAttribute("msg"  , msg ); 
       
       RequestDispatcher  dispatcher  = request.getRequestDispatcher("createProduct.jsp"); 
       
       dispatcher.forward(request, response);
   
   }  
      

}
