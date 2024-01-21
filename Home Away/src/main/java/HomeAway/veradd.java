package HomeAway;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class veradd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String type=request.getParameter("type");
		String location=request.getParameter("location");
		String uname=request.getParameter("uname");
		String amt=request.getParameter("price");
		PrintWriter pw=response.getWriter();
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeAway","root","osn12345");
			String query="insert into house (name,type,location,username,price) values (?,?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1, name);
			pst.setString(2, type);
			pst.setString(3, location);
			pst.setString(4, uname);
			pst.setString(5, amt);
			
			int x=pst.executeUpdate();
			if(x>0)
			{
				String query2="delete from verify where hid="+id+"";
				PreparedStatement pst2=con.prepareStatement(query2);
				int y=pst2.executeUpdate();
				if(y>0)
				{
					response.sendRedirect("Verify.jsp");
				}
				else
				{
					pw.write(query2);
				}
			}
			else
			{
				pw.write("Fail");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
