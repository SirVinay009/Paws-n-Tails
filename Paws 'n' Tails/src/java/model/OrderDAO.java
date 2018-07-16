
package model;

import com.GetCon;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;
import java.util.UUID;
import javax.servlet.http.Part;

public class OrderDAO {

    public static  int OrderId ; 
    
    public  static  void saveToOrders( HashMap<String, String>    map  )        
    { 
        
             Connection con  =   null;   
            
          
              
             con  =  GetCon.getCon();
          
             
             String qry  = "insert into pet.orders values(?, ?,   ? ,?,   ?, ?,    ?, ?)" ; 
             
             ResultSet rs  =  null; 
             PreparedStatement   pst  =  null;   
             
            
           
             String uniqueID = UUID.randomUUID().toString();

             Random rnd  = new Random(); 
            
             OrderId  = rnd.nextInt(1000) ; 
            
            
            int count  = 0 ; 
            try 
            { 
                
            pst =  con.prepareStatement(qry);
                   
            pst.setString(1 , uniqueID) ;
            pst.setInt(2 ,  0);
            pst.setString(3 ,   map.get("custadrs"));
            pst.setString(4 , map.get("custemail") );
            pst.setString(5,  map.get("custname") );
            pst.setString(6, map.get("custphone"));
            
            pst.setDate(7, new java.sql.Date( new java.util.Date().getTime())); 
            
            pst.setInt( 8 ,   OrderId );
            
            pst.executeUpdate(); 
                
                
            con.close();
           }
          catch(SQLException e)
          { 
              e.printStackTrace();
                
          }
       
      }
 
    
     public  static  void saveToOrderDetails(  ArrayList<CartItem>  itemlist , int   ordernum )        
    { 
        
            Connection con  =   null;   
            
             
              
            con  =  GetCon.getCon();
          
             
            String qry  = "insert into pet.orderdetails values(?,   ?,   ? ,  ?,   ?,   ?)" ; 
             
            ResultSet rs  =  null; 
            PreparedStatement   pst  =  null;   
             
            Random rnd  = new Random(); 
            
           
            String uniqueID = UUID.randomUUID().toString();
            

            int count  = 0 ; 
                       {
               try 
            { 
                
            pst =  con.prepareStatement(qry);
        
          
            for (  CartItem  item  :   itemlist)
            {
            pst.setString(1 , uniqueID) ;
            pst.setInt(2 ,    ordernum);
            pst.setInt(3 ,  item.getPetid());
            pst.setString(4 ,  item.getPetbreed() );
            pst.setInt(5,  item.getQty() );
            pst.setInt(6,  item.getTotalprice());
           
            
            }
            
            pst.executeUpdate(); 
                
                
            con.close();
           }
          catch(SQLException e)
          { 
              e.printStackTrace();
                
          }
       
      }
 
    }
    
    
       public  static  int getOrderNum(  String   custemail )        
       { 
        
            Connection con  =   null;   
            
            int    orderno  = 0 ; 
            
              
            con  =  GetCon.getCon();
          
             
            String qry  = "select  ORDERNUM from  ORDERS where CUSTEMAIL = ?" ; 
             
            ResultSet rs  =  null; 
            PreparedStatement   pst  =  null;   
           
           
            try 
            { 
                     pst = con.prepareStatement(qry); 

                     pst.setString(1 , custemail ); 
               
        
                     rs  =  pst.executeQuery(); 
                     rs.next(); 
                     
                     orderno = rs.getInt("ORDERNUM"); 
                     
                     
                     con.close();
                     
                     
            } 
               catch ( SQLException e ) 
               { 
              
               }
       return  orderno ; 
       
       }
    
    
    
}
