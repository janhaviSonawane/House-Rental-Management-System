package HomeAway;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class visit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("uname");
		String house=request.getParameter("house");
		String time=request.getParameter("ptime");
		String date=request.getParameter("pdate");
		PrintWriter pw=response.getWriter();
		HttpSession h=request.getSession();
		h.setAttribute("house", house);
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeAway","root","osn12345");
			String query="insert into visit (username,housename,time,date) values(?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1, username);
			pst.setString(2 ,house);
			pst.setString(3 ,time);
			pst.setString(4 ,date);
			
			int m=pst.executeUpdate();
			if(m>0)
			{
				response.sendRedirect("Payment.jsp");
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
