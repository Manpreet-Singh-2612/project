package newpackage1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NewServlet extends HttpServlet 
{
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8"); 
        String uname = request.getParameter("uname");
         String pswd = request.getParameter("psw");
         String remember =request.getParameter("remember");
        try (PrintWriter out = response.getWriter())
        {     
            Class.forName("com.mysql.jdbc.Driver");  
            Connection conn = DriverManager.getConnection("jdbc:mysql:3306//localhost/mydb?useSSL=false&allowPublicKeyRetrieval=true","root","azimalinderjit");  
            PreparedStatement stmt = conn.prepareStatement("Select Username,Password from Aapuser");   
            ResultSet rs = stmt.executeQuery();  
            int flag = 0;
            while(rs.next())
            {
                String r=rs.getString("Username");
                String s=rs.getString("Password");
                
                if(uname.equals(r))
               {
                if(pswd.equals(s))
                   {
                       flag=1;
                    }
                }
}
if(flag ==1)
{
    
out.println("Login sucessful");
}
else
{
    out.println("Login unsuccessful");
}

conn.close();  

}
       catch(Exception e)
       {
           System.out.println(e);
       }
        }
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo()
    {
        return "Short description";
    }
}


   