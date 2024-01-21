package HomeAway;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		String type=request.getParameter("type");
		PrintWriter pw=response.getWriter();
		
		
		
		HttpSession session=request.getSession();
		session.setAttribute("username",uname);
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeAway","root","osn12345");
			String query="select * from "+type+" where username=? and password=?";
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, uname);
			pst.setString(2, pass);
			
			ResultSet rs=pst.executeQuery();
		
			if(rs.next())
			{
				if(type.equalsIgnoreCase("admin"))
				{	
					response.sendRedirect("Admincontrol.jsp");
				}
				else
				{
					response.sendRedirect("Main.jsp");
				}
				
			}
		}
		catch(Exception ex)
		{
			
		}
	}

}
