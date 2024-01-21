package HomeAway;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class aeditproperty extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String type=request.getParameter("type");
		String location=request.getParameter("location");
		String uname=request.getParameter("uname");
		String amt=request.getParameter("amt");
		String id=request.getParameter("id");
		PrintWriter pw=response.getWriter();
//		String query="UPDATE house SET name=? ,type=? ,location=? ,username=?,price=? where id=?";
//		pw.write(query);
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeAway","root","osn12345");
			String query="UPDATE house SET name=? ,type=? ,location=? ,username=?,price=? where hid=?";
			//pw.write(query);
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,name);
			pst.setString(2,type);
			pst.setString(3,location);
			pst.setString(4,uname);
			pst.setString(5,amt);
			pst.setString(6,id);
			
			int x=pst.executeUpdate();
		
			if(x>0)
			{
				
				response.sendRedirect("Properties.jsp");
			}
			else
			{
				pw.write("Fail");
			}
		}
		catch(Exception e)
		{
			
			e.printStackTrace()
;		}
	}

}
