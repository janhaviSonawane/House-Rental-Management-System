<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.Connection"%>
<%@	page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.io.PrintWriter" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("id");
PrintWriter pw=response.getWriter();
/* pw.write(name+" "+type+" "+location); */

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeAway","root","osn12345");
	String query="select * from verify where hid=?";
	PreparedStatement pst=con.prepareStatement(query);
	pst.setString(1, id);

	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
		%>
		<form action="veradd" method="post"> 
		<input type=hidden name="id" value="<%= id%>">
		<label>House Name</label>
		<input type="text" name="name" value=<%=rs.getString(2)%>><br><br>
		<label>Type</label>
		<input type="text" name="type" value=<%=rs.getString(3)%>><br><br>
		<label>Location</label>
		<input type="text" name="location" value=<%=rs.getString(4)%>><br><br>
		<label>User Name</label>
		<input type="text" name="uname" value=<%=rs.getString(5)%>><br><br>
		<label>Price</label>
		<input type="text" name="price" value=<%=rs.getString(6)%>><br><br>
		<br><br>
		<input type="submit" value="Subimt">
		</form>
		<%
	}
}
catch(Exception e)
{
	e.printStackTrace();
}



%>
</body>
</html>