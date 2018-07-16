/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Vinay
 */
public class Connect {
    
     public static Statement statement = null;
    public static Connection connection;
	public static ResultSet rs;
        
        public static void connect_mysql()
    {
    	try  
    	{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
    		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/pet" ,"root","password1");
			statement=connection.createStatement();
   		}
   		catch(Exception e)  
    	{
			System.out.println(" Error : "+ e.toString());
    	}
    }

   
}
    

