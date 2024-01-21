	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200&display=swap" rel="stylesheet">
<body>
<div class="container" style="margin-left:150px;">
        <div class="row" style="margin-top:100px;">
            
    <form action="login" method="post" style="font-family: Montserrat;">
        <h1 style="margin-left:370px; font-size:60px">Login</h1>
        <br>
        <div class="col-md-5 col-md-offset-4">
        <label for="">Type:</label>
        <select name="type" id="" required class="form-control">
            <option value="">Select Type</option>
            <option value="customer">Customer</option>
            <option value="admin">Admin</option>
            <option value="houseowner">House Owner</option>
        </select>
        <br><br>
        <label for="">User Name:</label>
        <input type="text" name="uname" id=""  class="form-control">
        <br><br>
        <label for="">Password:</label>
        <input type="Password" name="pass" id="" required class="form-control">
        <br><br>
        
        </div>
        
        </div><div class="row">
        <div class="col-md-4 col-md-offset-4">
        <input type="submit" value="Login" name="submitbtn" style="background-color: #2288ff" class="btn btn-info "> 
        <br><br>
        <div>
        <p>New To the Website <a href="Registration.jsp">Register?</a></p>
        </div>
        </div>
    </form>
    
        </div>
    </div>
</body>
</html>