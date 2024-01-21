<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="jakarta.servlet.http.HttpSession" %>
    <%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
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

%>
<div class="contailer">
     <div class="row" style="margin-top:80px; margin-right:50px;">
        <div class="col-md-3 col-md-offset-5">
        <h1 style=" font-size:60px">Payment</h1>
        <br>
    	<form action="payment" style="font-family: Montserrat;" method="post">
    		<label for="">Username:</label>
        	<input type="text" name="uname" id="" required value="${username}" readonly class="form-control">
        	<br><br>
        	<label for="">House:</label>
        	<input type="text" name="house" id="" required value="${house}" readonly class="form-control">
        	<br><br>
        	<label for="">Amount:</label>
        	<input type="number" name="amt" value="2000" required readonly class="form-control">
        	<br><br>
        	<a href="Visit.jsp" class="btn btn-info">Back</a>
       		<input type="submit" value="Submit" class="btn btn-info">
    		</form>
    		</div>
    	</div>
    </div>
</body>
</html>