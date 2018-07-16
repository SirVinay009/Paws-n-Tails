/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
import model.CustomerDAO;
/**
 *
 * @author Vinay
 */
public class FeedbackCtr extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
   String   btn  =   request.getParameter("feed") ; 
     
   String id = request.getParameter("ID");
   String email    = request.getParameter("EMAIL");
   String firstname = request.getParameter("FIRSTNAME");
   String comments  = request.getParameter("COMMENTS");
   
    HashMap   <String , String>  map  = new HashMap(); 
    
map.put("id",id);
map.put("email",email);
map.put("firstname",firstname);
map.put("comments",comments);

 boolean flag ; 
 String msg  = " " ; 
 
 
   if (  btn.equals("Submit") )
   { 
    
    flag =  CustomerDAO.CheckFeedback(map); 
    
          
   if ( flag == true )
   { 
   
       msg  = "<center><b>Details entered! Please click<a href='index.jsp'>&nbsphere</a> to go the home page.</b></center>" ; 
   } 
   else 
   { 
       msg   = "<center><b>Please fill all fields again...</b></center>"  ; 
       
       
   }}
  
       
   request.setAttribute("msg"  , msg ); 
       
       RequestDispatcher  dispatcher  = request.getRequestDispatcher("Feedback.jsp"); 
       
       dispatcher.forward(request, response);
   
    
}}