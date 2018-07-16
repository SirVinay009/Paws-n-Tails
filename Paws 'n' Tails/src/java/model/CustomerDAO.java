package model;

import com.GetCon;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

public class CustomerDAO {
    
	public  static   boolean  saveCustomer(HashMap<String , String>  map)
	{
		String SQL = "INSERT INTO pet.customers ( CustID, CustName, CustPhone, CustEmail, CustPassword, CustAddress, CustCity, CustState, CustPincode)  values (  ?,?,?,    ?, ?, ? ,    ? , ? , ? );";
		
		Connection con  =  null  ; 
                 con  =  GetCon.getCon();
          
                 
                PreparedStatement pstmt  = null ; 
		try
		{
                    con =  GetCon.getCon(); 
                    
                    			pstmt =  con.prepareStatement(SQL);
			
                        pstmt.setString(1, map.get("custid"));
			pstmt.setString(2,  map.get("custname"));
			pstmt.setString(3,  map.get("custphone"));
			pstmt.setString(4,  map.get("custemail"));
			pstmt.setString(5,  map.get("custpassword"));
			pstmt.setString(6,  map.get("custaddress"));
			pstmt.setString(7,  map.get("custcity"));
			pstmt.setString(8,  map.get("custstate"));
			pstmt.setString(9,  map.get("custpincode"));
			
		   pstmt.executeUpdate();
			con.close();
            
    }
    catch(SQLException e)
    {
         e.printStackTrace();
    }
                return true;
      }


        
        
        public static  HashMap<String, String>  getCustomerByEmail( String   email )  
        { 
            
            String custname = "" ; 
            
            HashMap<String  , String>   map  =  new HashMap(); 
             
            Connection con  =  GetCon.getCon(); 
            
            String  qry  = "Select  *   from   customers where CustEmail = ?" ; 
            
            try 
            {
            
            PreparedStatement   ps  =   con.prepareStatement( qry)  ; 
            
            ps.setString(1 , email);
            
            
            ResultSet rs  = ps.executeQuery(); 
            
            rs.next(); 
            
            
             map.put("custname"   ,  rs.getString("CustName")) ; 
             map.put("custemail"  ,  rs.getString("CustEmail")) ; 
             map.put("custadrs"   ,  rs.getString("CustAddress")) ; 
             map.put("custphone"  ,  rs.getString("CustPhone")) ; 
          
             
            
            
            con.close();
                          
            } 
            catch ( SQLException e ) 
            { 
                
            }
            
              
            return  map; 
            
            
        }
        
        public  static boolean   checkCustomerLogin(  String username  , String password )  
        { 
            
            Connection con  =   null;   
            
            con  =  GetCon.getCon() ; 
              
         
            
            String   qry  =  "Select   * from  pet.customers where  CustEmail = ?  AND  CustPassword = ?"; 
            
            ResultSet rs  =  null; 
            PreparedStatement   pst  =  null;   
          
            try 
            { 
                
            pst =  con.prepareStatement(qry);
            pst.setString(1 ,  username );
            pst.setString(2,   password );
            
            rs  =   pst.executeQuery(); 
             
            
            
            if (  rs.next() )
            {
                
            // HttpSession session = request.getSession();
             //session.setAttribute("CUSTNAME",username);
                    System.out.println("Welcome");    
                con.close();
                
                return true;
            } 
            else
            {
                System.out.println("Error in page");
            }
               
              
            
                 con.close();
            }
            
            catch (SQLException e ) 
            { 
               
                System.out.println(e);
            }
            
           
            return false;
            
        }

        
        
        public static boolean CheckPayment(HashMap<String ,String> map)
        {
      
             Connection con  =  null  ; 
              
                con =  GetCon.getCon();
            
            String sql = "INSERT INTO pet.payment(ID,EmailVerify,ContactNo,FromDate,ToDate,ShippingAddress) values(?,?,?,?,?,?)";
             PreparedStatement pstmt  = null ; 
                try
		{
                    
                    
			pstmt =  con.prepareStatement(sql);
                        pstmt.setString(1,map.get("id"));
			pstmt.setString(2,map.get("emailverify"));
                        pstmt.setString(3,map.get("contactno"));
                        pstmt.setString(4,map.get("fromdate"));
                        pstmt.setString(5,map.get("todate"));
                        pstmt.setString(6,map.get("shippingaddress"));
                        
                        pstmt.executeUpdate();
                     con.close();
            
    }
    catch(SQLException e)
    {
         e.printStackTrace();
    }
                return true;
      }
        


public static boolean CheckFeedback(HashMap<String,String> map)
{
      Connection con  =   null;   
           
       con =  GetCon.getCon();
       
    String sql = "INSERT INTO pet.feedback(ID,Email,FirstName,Comments) values(?,?,?,?)";
  
           
             PreparedStatement   pstmt  =  null;  
		try
		{
                    
                    
			pstmt =  con.prepareStatement(sql);
                        pstmt.setString(1,map.get("id"));
                        pstmt.setString(2,map.get("email"));
                        pstmt.setString(3,map.get("firstname"));
			pstmt.setString(4,map.get("comments"));
                        
                        pstmt.executeUpdate();
                       
                          
        
            con.close();
            
    }
    catch(SQLException e)
    {
         e.printStackTrace();
    }
                return true;
      }

}
  


  