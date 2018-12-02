package newpackage1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class signupServlet1 extends HttpServlet
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException 
    {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String uname = request.getParameter("usrname");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String pswd = request.getParameter("pswd");
         String  phno = request.getParameter("mno");
         String  Uid=request.getParameter("uid");
        String add = request.getParameter("add");
        try  
        {
           Class.forName("com.mysql.jdbc.Driver");
            Connection  conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true","root","azimalinderjit");
            PreparedStatement stmt = conn.prepareStatement("insert into Aapuser values(?,?,?,?,?,?,?)"); 
            stmt.setString(1,uname);
            stmt.setString(2,fname);
            stmt.setString(3,lname);  
            stmt.setString(4,pswd);
            stmt.setString(5,phno);
            stmt.setString(6, Uid);
            stmt.setString(7,add);
            int i = stmt.executeUpdate();  
            
            if (i > 0) 
            {
                out.println("You are sucessfully registered");
            }
        }
        catch(Exception e)
    {
         System.out.println(e);}
         out.close();
    
    }

}   