<!-- Optional Page -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    %>
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
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200&display=swap" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<form action="HSearch.jsp">
<select name="location">
<option value="">Select location</option>
<%
try
{
	PrintWriter pw=response.getWriter();
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeAway","root","osn12345");
	String query="select * from house";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(query);
	while(rs.next())
	{
	%>
	 <option value="<%=rs.getString(4)%>"><%= rs.getString(4) %></option>
	<%	
	}
}
catch(Exception e)
{}
%>
</select>
<select name="type">
<option value="">Select Type</option>
<%
try
{
	PrintWriter pw=response.getWriter();
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeAway","root","osn12345");
	String query="select * from house";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(query);
	while(rs.next())
	{
	%>
	 <option value="<%=rs.getString(3)%>"><%= rs.getString(3) %></option>
	<%	
	}
}
catch(Exception e)
{}
%>
</select>
<select name="price">
<option value="">Select Price</option>
<%
try
{
	PrintWriter pw=response.getWriter();
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeAway","root","osn12345");
	String query="select * from house";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(query);
	while(rs.next())
	{
	%>
	 <option value="<%=rs.getString(6)%>"><%= rs.getString(6) %></option>
	<%	
	}
}
catch(Exception e)
{}
%>
</select>
<a href="Main.jsp" class="btn btn-info">Back</a>
<input type="submit" value="Apply">
</form>
</body>
</html>