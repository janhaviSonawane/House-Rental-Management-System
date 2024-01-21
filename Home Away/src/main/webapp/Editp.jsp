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
<%
String id=request.getParameter("id");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeAway","root","osn12345");
	String query="select * from house where hid=?";
	PreparedStatement pst=con.prepareStatement(query);
	pst.setString(1,id);
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{

%>

<div class="contailer">
     <div class="row" style="margin-top:80px; margin-right:50px;">
        <div class="col-md-3 col-md-offset-5">
        <h1 style=" font-size:60px">Edit</h1>
        <br>
    	<form action="aeditproperty" style="font-family: Montserrat;" method="post">
    	
        	<input type="hidden" name="id" id="" required value="<%=id %>" class="form-control" >
    		<label for="">Name:</label>
        	<input type="text" name="name" id="" required value="<%=rs.getString(2) %>" class="form-control">
        	<br><br>
        	<label for="">Type:</label>
        	<input type="text" name="type" id="" required value="<%=rs.getString(3) %>" class="form-control">
        	<br><br>
        	<label for="">Location:</label>
        	<input type="text" name="location" value="<%=rs.getString(4) %>" required class="form-control">
        	<br><br>
        	<label for="">Username:</label>
        	<input type="text" name="uname" value="<%=rs.getString(5) %>" required class="form-control">
        	<br><br>
        	<label for="">Price:</label>
        	<input type="number" name="amt" value="<%=rs.getString(6) %>" required class="form-control">
        	<br><br>
        	<a href="Properties.jsp" class="btn btn-info">Back</a>
       		<input type="submit" value="Submit" class="btn btn-info">
    		</form>
    		</div>
    	</div>
    </div>
    <%
	}
	}
    catch(Exception e)
    {
    	
    }
    %>
    
</body>
</html>