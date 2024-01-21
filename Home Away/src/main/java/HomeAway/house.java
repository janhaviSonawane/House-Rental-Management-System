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


public class house extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String house=request.getParameter("house");
		String price=request.getParameter("price");
		String type=request.getParameter("type");
		String location=request.getParameter("location");
		PrintWriter pw=response.getWriter();
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeAway","root","osn12345");
			PreparedStatement pst=con.prepareStatement("insert into verify (name,type,location,username,price) values (?,?,?,?,?)");
			pst.setString(1,house);
			pst.setString(2,type);
			pst.setString(3,location);
			pst.setString(4,uname);
			pst.setString(5,price);
			
			int rowcnt=pst.executeUpdate();
			if(rowcnt>0)
			{
				response.sendRedirect("House.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
