package HomeAway;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
     

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String type=request.getParameter("type");
		String phone=request.getParameter("phone");
		String user=request.getParameter("user");
		String pass=request.getParameter("pass");
		PrintWriter pw=response.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeAway","root","osn12345");
			PreparedStatement pst = con.prepareStatement("insert into "+ type +" (name,username,password,email,phone) values(?,?,?,?,?)");
			pst.setString(1, name);
			pst.setString(2, user);
			pst.setString(3, pass);
			pst.setString(4, email);
			pst.setString(5, phone);
			
			int rowcnt=pst.executeUpdate();
			
			if(rowcnt>0)
			{
				response.sendRedirect("Login.jsp");
			}
			
		} catch (ClassNotFoundException e) {
	
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

}
