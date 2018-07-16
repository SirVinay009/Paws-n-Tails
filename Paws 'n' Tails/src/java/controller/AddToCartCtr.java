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
import model.CartItem;


public class AddToCartCtr extends HttpServlet 
{

   
    public void    doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       
        
        HttpSession session   =  request.getSession(); 
       
        ArrayList<CartItem>  list    = null; 
        
        try
        {
        
        if ( session.isNew()) 
        { 
            list  = new ArrayList() ; 
            
            session.setAttribute("itemlist", list);
        }
        else 
        { 
            
            
          list  = (ArrayList<CartItem>)  session.getAttribute("itemlist"); 
            
            
        }  
        
       int id  =  Integer.parseInt( request.getParameter("id") ); 
       
       String petbreed  = request.getParameter("petbreed"); 
       
       
       int qty  =  Integer.parseInt(request.getParameter("qty") ); 
        
       int price  =  Integer.parseInt( request.getParameter("price") ); 
        
       
       int amount  = qty  *  price  ; 
       
       CartItem   item  = new CartItem() ; 
       
       
       item.setPetid(id);
       item.setPetbreed(petbreed);
       item.setQty(qty);
       item.setTotalprice(amount);
       
       list.add(item); 
        
       
       session.setAttribute("itemlist",  list);
       
       String msg  =  "Product Added Successfully to the Cart " ; 
        
        
       RequestDispatcher dispatcher  = request.getRequestDispatcher("ProductList.jsp") ; 
        
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
         
       
        String id  =  request.getParameter("removeitemid"); 
       
    
        
        
        HttpSession session   =  request.getSession(); 
       
        ArrayList<CartItem>  list    = null; 
        
        try
        {
            int pid  = Integer.parseInt(id); 
        if ( session.isNew()) 
        { 
            list  = new ArrayList() ; 
            
            session.setAttribute("itemlist", list);
        }
        else 
        { 
            
            
          list  = (ArrayList<CartItem>)  session.getAttribute("itemlist"); 
            
            
        }  
        
      
        Iterator <CartItem>  itr   =   list.iterator() ; 
        
        
          while ( itr.hasNext()) 
          { 
              
              
                          
                    if ( itr.next().getPetid() == pid ) 
                    { 
                        
                          itr.remove();
                       
                    }
                
                
          }
            
        
            session.setAttribute("itemlist",  list);
       
            String msg  =  "Item  Removed From the Cart " ; 
        
        
       RequestDispatcher dispatcher  = request.getRequestDispatcher("ProductList.jsp") ; 
        
       request.setAttribute("msg",  msg );
        
       dispatcher.forward(request, response);  
   }
catch (Exception e ) 
{ 
   e.printStackTrace();
}
   
   
   
   
   
}
   
}