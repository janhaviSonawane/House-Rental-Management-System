<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div class="container" style="margin-left:160px;">
        <div class="row" style="margin-top:100px;">
            
    <form action="feedback" method="post" style="font-family: Montserrat;">
        <h1 style="margin-left:370px; font-size:60px">Feedback</h1>
        <br>
        <div class="col-md-5 col-md-offset-4">
        <label>Username</label>
		<input type="text" name="username" class="form-control" required value=" ${username} " readonly>
		<br><br>
		<label>Feedback</label>
		<input type="text" name="feedback" class="form-control" required>
		<br><br>
		<label>Rating</label>
		<select name="rating" class="form-control" required>
		<option value="1 star">1 Star</option>
		<option value="2 star">2 Star</option>
		<option value="3 star">3 Star</option>
		<option value="4 star">4 Star</option>
		<option value="5 star">5 Star</option>
		</select>
		<br><br>
        </div>
        </div><div class="row">
        <div class="col-md-4 col-md-offset-4">
        <input type="submit" value="Submit" name="submitbtn" style="background-color: #2288ff" class="btn btn-info ">
        <a href="Main.jsp" style="background-color: #2288ff" class="btn btn-info"> Back</a> 
        <br><br>
        </div>
    </form>
<!-- <form action="feedback" method="post">
<label>Username</label>
<input type="text" name="username">
<br><br>
<label>Feedback</label>
<input type="text" name="feedback">
<br><br>
<label>Rating</label>
<select name="rating">
<option value="1 star">1 Star</option>
<option value="2 star">2 Star</option>
<option value="3 star">3 Star</option>
<option value="4 star">4 Star</option>
<option value="5 star">5 Star</option>
</select>
<br><br>
<input type="submit" value="Submit">
</form> -->
</body>
</html>