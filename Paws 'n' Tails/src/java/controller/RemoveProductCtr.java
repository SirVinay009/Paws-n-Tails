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

public class RemoveProductCtr extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String btn = request.getParameter("submit");
                  
   String petid    = request.getParameter("petid");
   String petbreed = request.getParameter("petbreed");
   String petdesc  = request.getParameter("petdesc");
   String petprice = request.getParameter("petprice");
   String petstock = request.getParameter("petstock");
  
   HashMap<String ,  String>  productmap  = new HashMap(); 
   
   productmap.put("petid"    ,  petid); 
   
   productmap.put("petbreed"  , petbreed) ; 
   
   productmap.put("petdesc"   , petdesc); 
   
   productmap.put("petprice"  ,  petprice) ; 
   
   productmap.put("petstock"  , petstock) ; 
   
   boolean flag ; 
 String msg  = " " ; 
 
 if(btn.equals("delete"))
{
   flag  =  AdminDAO.RemoveProductItem( productmap )  ; 
     
    if ( flag == true )
   { 
   
       msg  = "Product Removed " ; 
   } 
   else 
   { 
       msg   = " Please fill all fields again..."  ; 
       
       
   }}
       
      request.setAttribute("msg"  , msg ); 
       
       RequestDispatcher  dispatcher  = request.getRequestDispatcher("createProduct.jsp"); 
       
       dispatcher.forward(request, response);
    }
   
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}