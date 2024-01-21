package HomeAway;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user=request.getParameter("uname");
		String house=request.getParameter("house");
		String amt=request.getParameter("amt");
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeAway","root","osn12345");
			String query="insert into payment (username,house,amount) values (?,?,?)";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1, user);
			pst.setString(2, house);
			pst.setString(3, amt);
			
			int x=pst.executeUpdate();
			if(x>0)
			{
				response.sendRedirect("Main.jsp");
			}
			else
			{
				response.sendRedirect("Payment.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
