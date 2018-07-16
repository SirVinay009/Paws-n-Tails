
package controller;

import com.GetCon;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ImageServlet extends HttpServlet 
{

    
    protected void  doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       
        
        
        
        
        
             response.setContentType( "image/jpg" );
        
        
             String  id  =    request.getParameter("petid"); 
            
             int    i    =    Integer.parseInt(id); 
             
             
             Connection con  =   null;   
            
             con  =  GetCon.getCon();
              
             String qry  = "select PETIMAGE from  pet where  ID = ?" ; 
             
            
             ResultSet rs  =  null; 
             PreparedStatement   pst  =  null;   
         
           try 
            { 
                
            pst =  con.prepareStatement(qry);
         
            pst.setInt(1  ,  i );
          
            rs   =  pst.executeQuery(); 
            
          
            
            
            //InputStream  imgstr  =    rs.getBinaryStream("PETIMAGE"); 
            
           
            
           
            if (rs.next()) {
                    byte[] content = rs.getBytes("PETIMAGE");
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