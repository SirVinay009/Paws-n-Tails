
package controller;


import com.GetCon;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class passforgotback extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Connection con =null;
        
           
             String username =request.getParameter("USERNAME1");
             String password =request.getParameter("NEWPASSWORD1");
           
             
try
    {
         con = GetCon.getCon();
   PreparedStatement pst = con.prepareStatement("update customers set CustPassword = ? where CustName= ?");
    pst.setString(1,password);
        pst.setString(2,username);
         pst.executeUpdate();
        out.println("Password changed");
         con.close();
        response.sendRedirect("login.jsp");
}
   catch(SQLException e)
{
    out.println(e) ;
}
    }
}
