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
            
    <form action="complaint" method="post" style="font-family: Montserrat;">
        <h1 style="margin-left:370px; font-size:60px">Complaint</h1>
        <br>
        <div class="col-md-5 col-md-offset-4">
        <label for="">User:</label><br>
        <input type="text" name="username" value=" ${username} " readonly class="form-control">
        <br><br>
        <label for="">Complaint:</label><br>
        <textarea  name="complaint" rows="4" cols="50" class="form-control"></textarea>
        <br><br>
        </div>
        </div><div class="row">
        <div class="col-md-4 col-md-offset-4">
        <input type="submit" value="Submit" name="submitbtn" style="background-color: #2288ff" class="btn btn-info ">
        <a href="Main.jsp" style="background-color: #2288ff" class="btn btn-info">Back</a> 
        <br><br>
        </div>
    </form>
    
        </div>
    </div>
</body>
</html>