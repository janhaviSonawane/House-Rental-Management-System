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
<title>Add Property</title>
</head>
<body>
<div class="contailer">
     <div class="row" style="margin-top:40px; margin-right:50px;">
        <div class="col-md-3 col-md-offset-5">
        <h1 style=" font-size:60px">Add Property</h1>
        <br>
    	<form action="house" style="font-family: Montserrat;" method="post">
    		<label for="">Username:</label>
        	<input type="text" name="uname" id="" value="${username }" readonly required class="form-control">
        	<br><br>
        	<label for="">House Name:</label>
        	<input type="text" name="house" id="" required class="form-control">
        	<br><br>
        	<label for="">Location:</label>
        	<input type="text" name="location" id="" required class="form-control">
        	<br><br>
        	<select name="type" class="form-control" required>
        	<option value="" >Select Type</option>
        	<option value="1BHK">1BHK</option>
        	<option value="2BHK">2BHK</option>
        	<option value="3BHK">3BHK</option>
        	<option value="3BHK">Bunglow</option>
        	</select>
        	<br><br>
        	<label for="">Price:</label>
        	<input type="number" name="price" id="" required class="form-control">
        	<br><br>
       		<input type="submit" value="Submit" style="background-color: #2288ff" class="btn btn-info">
       		<a href="Main.jsp" style="background-color: #2288ff" class="btn btn-info">Back</a>
    		</form>
    		</div>
    	</div>
    </div>
</body>
</html>