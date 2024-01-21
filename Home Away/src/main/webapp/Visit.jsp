	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(session.getAttribute("username")==null)
    {
    	response.sendRedirect("Login.jsp");
    }
    %>
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
<% %>
<div class="contailer">
     <div class="row" style="margin-top:80px; margin-right:50px;">
        <div class="col-md-3 col-md-offset-5">
        <h1 style=" font-size:60px">Visit Planner</h1>
        <br>
    	<form action="visit" style="font-family: Montserrat;" method="post">
    		<label for="">Username:</label>
        	<input type="text" name="uname" id="" readonly required class="form-control" value="${username}">
        	<br><br>
        	<label>House Name</label>
       		<select name="house" id="" required class="form-control">
            <option value="">Select House</option>
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
				<option value="<%= rs.getString(2) %>"><%= rs.getString(2) %></option>
				<% 
			}
            }
            catch(Exception e)
            {}
            %>
            
        	</select>
        	<br><br>
        	<label for="">Preferred Time:</label>
        	<input type="time" name="ptime" id="" required class="form-control">
        	<br><br>
        	<label for="">Preferred Date:</label>
        	<input type="date" name="pdate" id="" required class="form-control">
        	<br><br>
        	<a href="Main.jsp" style="background-color: #2288ff" class="btn btn-info">Back</a>
       		<input type="submit" value="Submit" class="btn btn-info" style="background-color: #2288ff">
    		</form>
    		</div>
    	</div>
    </div>
</body>
</html>