/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.HashMap;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.CustomerDAO;
/**
 *
 * @author Vinay
 */
public class CheckOutCtr extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
     HttpSession session = request.getSession();
     
  
        String btn = request.getParameter("submit");
   
        String id = request.getParameter("ID");
  
String emailverify = request.getParameter("EMAILVERIFY");
  
String contactno = request.getParameter("CONTACTNO");
  
String fromdate = request.getParameter("FROMDATE");
   
  
String todate = request.getParameter("TODATE");
  
String shippingaddress = request.getParameter("SHIPPINGADDRESS");
  
session.setAttribute("CONTACTNO",contactno);
session.setAttribute("FROMDATE",fromdate);
session.setAttribute("TODATE",todate);
session.setAttribute("SHIPPINGADDRESS",shippingaddress);

HashMap <String,String> map = new HashMap();

map.put("id",id);
map.put("emailverify", emailverify);
map.put("contactno", contactno);
map.put("fromdate",fromdate);
map.put("todate", todate);
map.put("shippingaddress", shippingaddress);

        
String msg  = " " ; 
    boolean flag;
    
     if (  btn.equals("CheckOut") )
   { 
       
  
    flag =  CustomerDAO.CheckPayment(map); 
    
          
   if ( flag == true )
   { 
 
       msg  = "<center><b>Payment done! Please click<a href='Bill.jsp'>&nbsp here</a> to view your bill.</b></center>" ; 
   } 
   else 
   { 
  
       msg   = "<center><b>Please fill all fields again...</b></center>"  ; 
       
       
   }}
  
       
   request.setAttribute("msg"  , msg ); 
       
       RequestDispatcher  dispatcher  = request.getRequestDispatcher("CheckOut.jsp"); 
       
       dispatcher.forward(request, response);
   

    
}}
    