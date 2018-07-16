/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AccessoryCartItem;
import model.CartItem;

/**
 *
 * @author Vinay
 */
public class AccessoryToCartCtr extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        HttpSession session   =  request.getSession(); 
       
        ArrayList<AccessoryCartItem>  list    = null; 
        
        try
        {
        
        if ( session.isNew()) 
        { 
           
            list  = new ArrayList<AccessoryCartItem>() ; 
            
            session.setAttribute("itemlist1", list);
        }
        else 
        { 
            
            
          list  = (ArrayList<AccessoryCartItem>)  session.getAttribute("itemlist1"); 
            
            
        }  
        
       int id  =  Integer.parseInt( request.getParameter("id") ); 
       
       String accessorytype  = request.getParameter("accessorytype"); 
       
       
       int qty  =  Integer.parseInt(request.getParameter("qty") ); 
        
       int price  =  Integer.parseInt( request.getParameter("price") ); 
        
       
       int amount  = qty  *  price  ; 
       
       AccessoryCartItem   item  = new AccessoryCartItem() ; 
       
      
       item.setAccessoryid(id);
       item.setAccessorytype(accessorytype);
       item.setQty(qty);
       item.setTotalprice(amount);
       
       list.add(item); 
     
       
       session.setAttribute("itemlist1",  list);
       
       String msg  =  "Product Added Successfully to the Cart " ; 
        
        
       RequestDispatcher dispatcher  = request.getRequestDispatcher("ProductListAccessories.jsp") ; 
        
       request.setAttribute("msg",  msg );
        
       dispatcher.forward(request, response);
        
        
        }
        
        catch(NumberFormatException e)
        {
            
        }
        
    }


    @Override
   public void  doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
   { 
         
       
        String id  =  request.getParameter("removeitemid1"); 
       
        HttpSession session   =  request.getSession(); 
       
        ArrayList<AccessoryCartItem>  list    = null; 
        
        try
        {
            int pid  = Integer.parseInt(id); 
        if ( session.isNew()) 
        { 
            list  = new ArrayList() ; 
            
            session.setAttribute("itemlist1", list);
        }
        else 
        { 
            
            
          list  = (ArrayList<AccessoryCartItem>)  session.getAttribute("itemlist1"); 
            
            
        }  
        
      
        Iterator <AccessoryCartItem>  itr   =   list.iterator() ; 
        
        
          while ( itr.hasNext()) 
          { 
              
              
                          
                    if ( itr.next().getAccessoryid()== pid ) 
                    { 
                        
                          itr.remove();
                       
                    }
                
                
          }
            
        
            session.setAttribute("itemlist1",  list);
       
            String msg  =  "Item  Removed From the Cart " ; 
        
        
       RequestDispatcher dispatcher  = request.getRequestDispatcher("ProductListAccessories.jsp") ; 
        
       request.setAttribute("msg",  msg );
        
       dispatcher.forward(request, response);  
   }
catch (Exception e ) 
{ 
   e.printStackTrace();
}
   }}
   
   