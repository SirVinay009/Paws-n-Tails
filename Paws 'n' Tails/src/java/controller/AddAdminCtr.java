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


public class AddAdminCtr extends HttpServlet 
{

    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
    
    
     
    String      btn  =   request.getParameter("submit") ; 
     
    System.out.println("Admin Ctr   : "  + btn );
    
    String     name  =   request.getParameter("ADMINNAME") ; 
    String     email =   request.getParameter("ADMINEMAIL") ; 
    String     password   =   request.getParameter("ADMINPASSWORD") ; 
      
   
       
    HashMap<String , String>  map   =  new HashMap() ; 
    
    map.put("name"  ,  name )  ; 
    
    map.put("email"  , email)  ; 
    
    map.put("password"  , password)  ; 
     
    boolean flag ; 
    
    String msg = "" ; 
  
   if (  btn.equals("addbtn") )
   { 
    
    flag =  AdminDAO.AddAdminMember(map); 
    
          
   if ( flag == true )
   { 
   
       msg  = "Admin record added " ; 
   } 
   else 
   { 
       msg   = " Please fill all fields again..."  ; 
       
       
   }
  
   }
   else if (btn.equals("delbtn"))
   {
       
    flag  =  AdminDAO.RemoveAdminMember( map )  ; 
     
    if ( flag == true )
   { 
   
       msg  = "Admin Record  Removed " ; 
   } 
   else 
   { 
       msg   = " Please fill all fields again..."  ; 
       
       
   }
  
       
   }
   
   
   
       request.setAttribute("msg"  , msg ); 
       
       RequestDispatcher  dispatcher  = request.getRequestDispatcher("AdminConsole.jsp"); 
       
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
