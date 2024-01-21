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

public class complaint extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String complaint=request.getParameter("complaint");
		PrintWriter pw=response.getWriter();
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeAway","root","osn12345");
			String query="insert into complaint (username,complaint) values (?,?)";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,username);
			pst.setString(2, complaint);
			
			int row=pst.executeUpdate();
			if(row>0)
			{
				response.sendRedirect("Complaint.jsp");
			}
			else
			{
				pw.write("fail");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
