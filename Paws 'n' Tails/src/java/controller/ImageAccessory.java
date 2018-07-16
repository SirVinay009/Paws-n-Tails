/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.GetCon;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Vinay
 */
public class ImageAccessory extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
        
        
        
             response.setContentType("image/jpg" );
       
        
             String  id  =    request.getParameter("accessoryid"); 
            System.out.println("id" +id );
             int    i    =    Integer.parseInt(id); 
             
             
             Connection con  =   null;   
            
             con  =  GetCon.getCon();
              
             String qry  = "select ACCESSORYIMAGE from accessory where  ID = ?" ; 
             
            
             ResultSet rs  =  null; 
             PreparedStatement   pst  =  null;   
         
             try 
            { 
                
            pst =  con.prepareStatement(qry);
         
            pst.setInt(1  ,  i );
          
            rs   =  pst.executeQuery(); 
         
            if (rs.next()) {
                    byte[] content = rs.getBytes("ACCESSORYIMAGE");
                    response.setContentLength(content.length);
                    response.getOutputStream().write(content);
                } else {
                    response.sendError(HttpServletResponse.SC_NOT_FOUND); // 404.
                }

            
            
              con.close();
    
            
            } 
           catch(SQLException  e    )
           {    
               
               System.out.println( e );
               
           }
            
           
      
    
    
    }




}