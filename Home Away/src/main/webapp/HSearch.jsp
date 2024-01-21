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
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div class="row" style="margin-top:50px;">
<div class="col-md-10 col-md-offset-1" >
<form action="HSearch.jsp">
<select name="location"  class="form-control">
<option value="">Select location</option>
<%
try
{

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
<br>
<select name="type"  class="form-control">
<option value="">Select Type</option>
<%
try
{
	
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
<br>
<select name="price"  class="form-control">
<option value="">Select Price</option>
<%
try
{
	
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
<br>
<a href="Main.jsp" class="btn btn-info" style="background-color: #2288ff">Back</a>&nbsp&nbsp
<input type="submit" class="btn btn-info" style="background-color: #2288ff" value="Apply">
</form>
</div></div></div>
<div class="container">
<div class="row" style="margin-top:30px;">
<div class="col-md-10 col-md-offset-1">
<table class="table table-borderd table-stripped table-hover" border=1>
<tr>
<th>Name</th>
<th>Type</th>
<th>Location</th>
<th>Price</th>
<th>Jump</th>
</tr>
<%
String location=request.getParameter("location");
String type=request.getParameter("type");
String price=request.getParameter("price");
PrintWriter pw=response.getWriter();


try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeAway","root","osn12345");
	String query="select * from house where (location=? OR ?=' ') OR (type=? OR ?=' ') OR (price=? OR ?=' ')";
	PreparedStatement pst=con.prepareStatement(query);
	pst.setString(1, location);
	pst.setString(2,location);
	pst.setString(3,type);
	pst.setString(4,type);
	pst.setString(5,price);
	pst.setString(6,price);
	/* pw.write(query); */
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><%=rs.getInt(6)%></td>
		<td><a href="Visit.jsp" class="btn btn-info" style="background-color: #2288ff">Go</a></td>
		</tr>
		<% 
	}
	
}
catch(Exception e)
{
	
}
%>
</table>
</div></div></div>


</body>
</html>