package com;

import java.sql.Connection;
import java.sql.*;


public class GetCon 
{

    
   public static    Connection   getCon()
   {

      Connection  con  = null; 
      
      try 
      { 
  
          
          
          Class.forName( DBInitializer.DRIVER ); 
          con = DriverManager.getConnection(DBInitializer.URL,DBInitializer.USERNAME,DBInitializer.PASSWORD);
         
          
   
      } 
      catch(ClassNotFoundException e)
      {
          System.out.println( e );
      }
      
      catch(SQLException e)
      {
          System.out.println( e );
      }
    return  con  ;    
  }

}