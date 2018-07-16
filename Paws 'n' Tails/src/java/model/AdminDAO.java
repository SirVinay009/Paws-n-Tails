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
import javax.servlet.http.Part;

public class AdminDAO 
{
    
      public  static boolean   checkAdminLogin(  String adminname  , String adminpassword )  
        { 
            
            Connection con  =   null;   
            
            con  =  GetCon.getCon();
              
            String   qry  =  "select *  from  pet.admn where  ADMINEMAIL = ? AND ADMINPASSWORD = ?"; 
            
            ResultSet rs  =  null; 
            PreparedStatement   pst  =  null;   
           
            try 
            { 
                
            pst =  con.prepareStatement(qry);
            pst.setString(1 ,  adminname );
            pst.setString(2,   adminpassword );
            
            rs  =   pst.executeQuery(); 
             
            
            
            if (  rs.next() ) 
            {
                System.out.println(  "AdminDAO : "  +  rs.getString("AdminName") ) ; 
                
                
                con.close();
            
                return  true ; 
            }
           
            
            
             con.close();
            }
            
            catch (SQLException e ) 
            { 
               
                System.out.println(e );
            }
            
           
            return false;
            
        }

      
     


      public static  boolean    createProduct(  HashMap<String , Object>  productmap )  
      { 
          
            Connection con  =   null;   
            
            con  =  GetCon.getCon();
           
            String qry  = "insert into pet values(?,?, ?,?, ?,?)" ; 
             
            
            
            PreparedStatement   pst  =  null;   
            InputStream  inputstream = null;
           
           String ids =(String) productmap.get("petid");
              int id = Integer.parseInt(ids);
            try 
            { 
                 
            pst =  con.prepareStatement(qry);
          
            pst.setInt(1 , id) ;
            pst.setString(2, (String)  productmap.get("petbreed") );
            pst.setString(3 , (String)   productmap.get("petdesc") );
            pst.setString(4,  (String)    productmap.get("petprice") );
            pst.setString(5 , (String)    productmap.get("petstock") );
               
                
              
            Part filepart = (Part)  productmap.get("petimage"); 
            inputstream = filepart.getInputStream(); 
            
            
            pst.setBlob(6, inputstream);
           // pst.setBinaryStream(6, (InputStream)fis, (int)(image.length()));
            
            int s  =   pst.executeUpdate(); 
            if ( s > 0 )
            { 
                System.out.println("Image uploades successfully !! ");
            }
            else 
            { 
                 System.out.println("Image uploaded  failed  !! ");
            }
            
            
            inputstream.close();
            con.close();
            }
            catch( SQLException e ) 
            { 
              e.printStackTrace();
                
            }
            catch ( FileNotFoundException e )
            { 
                e.printStackTrace();
            }
            catch ( IOException e )
            { 
                e.printStackTrace();
            }
            catch(NumberFormatException nfe)
            {
                
            }
           
            return true; 
      }

     
    public static boolean AddAdminMember(HashMap <String, String> map)
    {
        
          Connection con  =   null;   
            
             con  =  GetCon.getCon();
          
             
             
            String qry  = "insert into admn (ADMINNAME, ADMINEMAIL, ADMINPASSWORD) values(?, ?, ?)" ; 
             
             
           
            PreparedStatement   pst  =  null;  
           
            System.out.println("Admin DAO admin name" +   map.get("name") );
            System.out.println("admin DAO email" +    map.get("email") );
            System.out.println("admin DAO  password" +   map.get("password") );
   
             try 
            { 
                
            pst =  con.prepareStatement(qry);
           
            pst.setString(1,    map.get("name") );
            
            pst.setString(2,    map.get("email") );
            pst.setString(3 ,   map.get("password") );
            
            
            pst.executeUpdate();
        
            con.close();
            
    }
    catch(SQLException e)
    {
         e.printStackTrace();
    }
      
       
             return true;
    }

      
    public static boolean  RemoveAdminMember(HashMap <String, String> map)
    {
        
          Connection con  =   null;   
            
             con  =  GetCon.getCon();
          
             
             
            String qry  = "delete from admn  where ADMINNAME = ? AND  ADMINPASSWORD = ?" ; 
             
             
           
            PreparedStatement   pst  =  null;  
           
         
             try 
            { 
                
            pst =  con.prepareStatement(qry);
           
            pst.setString(1,    map.get("name") );
            
            
            pst.setString(2 ,   map.get("password") );
            
            
            pst.executeUpdate();
        
            con.close();
            
    }
    catch(SQLException e)
    {
         e.printStackTrace();
    }
      
       
             return true;
    }

    public static boolean CreateProductAccessory( HashMap<String,Object> map)
      {
           
           Connection con  =   null;   
            
             con  =  GetCon.getCon();
         
            String sql  = "INSERT INTO accessory values(?,?,?,?,?,?)"; 
           InputStream  inputstream = null;
           PreparedStatement   pst  =  null;
           String ids =(String) map.get("accessoryid");
              int id = Integer.parseInt(ids);  
           
		try
		{
                    con =  GetCon.getCon(); 
                    
			pst =  con.prepareStatement(sql);
         
            pst.setInt(1, id);
            pst.setString(2, (String) map.get("accessorytype") );
            pst.setString(3 , (String) map.get("accessorydesc") );
            pst.setString(4, (String) map.get("accessoryprice") );
            pst.setString(5 , (String) map.get("accessorystock") );
               
             
            Part filepart = (Part)  map.get("accessoryimage"); 
            inputstream = filepart.getInputStream(); 
            
            
            pst.setBlob(6, inputstream);
           // pst.setBinaryStream(6, (InputStream)fis, (int)(image.length()));
            
            int s  =   pst.executeUpdate(); 
            if ( s > 0 )
            { 
                System.out.println("Image uploaded successfully !! ");
            }
            else 
            { 
                 System.out.println("Image uploaded  failed  !! ");
            }
            
            
            inputstream.close();
            con.close();
            }
            catch( SQLException e ) 
            { 
              e.printStackTrace();
                
            }
            catch ( FileNotFoundException e )
            { 
                e.printStackTrace();
            }
            catch ( IOException e )
            { 
                e.printStackTrace();
            }
            catch(NumberFormatException nfe)
            {
                
            }
           
            return true; 
      }
      
    public static boolean RemoveProductAccessory( HashMap<String,String> productmap)
    {
             Connection con  =   null;   
            
             con  =  GetCon.getCon();
          
           
            String qry  ="delete from accessory  where ACCESSORYTYPE = ? AND  ACCESSORYDESC = ?" ; 
             
             
            ResultSet rs  =  null; 
            PreparedStatement   pst  =  null;  
           
         
             try 
            { 
                
            pst =  con.prepareStatement(qry);
                 pst.setString(1,  productmap.get("accessorytype") );
            
            
            pst.setString(2 , productmap.get("accessorydesc") );
            
            
            pst.executeUpdate();
        
            con.close();
            
    }
    catch(SQLException e)
    {
         e.printStackTrace();
    }
      
       
             return true;
    }
    
    public static boolean RemoveProductItem(HashMap<String, String> productmap)
    {
         Connection con  =   null;   
            
             con  =  GetCon.getCon();
          
           
            String qry  ="delete from pet  where PETBREED = ? AND  PETDESC = ?" ; 
             
             
            ResultSet rs  =  null; 
            PreparedStatement   pst  =  null;  
           
         
             try 
            { 
              pst =  con.prepareStatement(qry);
                 pst.setString(1,  productmap.get("petbreed") );
            
            
            pst.setString(2 , productmap.get("petdesc") );
            
            
            pst.executeUpdate();
        
            con.close();
            
    }
    catch(SQLException e)
    {
         e.printStackTrace();
    }
      
       
             return true;
    }}