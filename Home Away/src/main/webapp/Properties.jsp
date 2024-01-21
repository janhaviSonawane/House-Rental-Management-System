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
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200&display=swap" rel="stylesheet">
<title>Properties</title>
</head>
<body>
<div class="container">
<div class="row" style="margin-top:30px;">
<div class="col-md-10 col-md-offset-1">
<table class="table table-borderd table-stripped table-hover" border=1>
<tr>
<th>Name</th>
<th>Type</th>
<th>Location</th>
<th>Price</th>
<th>Edit</th>
</tr>
<%

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeAway","root","osn12345");
	String query="select * from house";
	PreparedStatement pst=con.prepareStatement(query);	
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		%>
		<tr>
		<%-- <td><%=rs.getString(1)%></td> --%>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><%=rs.getInt(6)%></td>
		<td><a href="Editp.jsp?id=<%=rs.getString(1) %>" class="btn btn-info" style="background-color: #2288ff">Edit</a></td>
		</tr>
		<% 
	}
	
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</table>
<a href="Admincontrol.jsp" style="background-color: #2288ff" class="btn btn-info">Back</a>
</div></div></div>
</body>
</html>