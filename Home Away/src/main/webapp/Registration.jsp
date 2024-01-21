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
<title></title>

</head>
<body>

<script type="text/javascript">
		function validateEmail() {
			
			 const email = document.getElementById("email").value.trim();
			 const pass=document.getElementById("pass").value.trim();

			    
			    if (email.length<1) {
			        alert("Please enter an email address.");
			        return false;
			        
			    }
			    else if(!email.match(/^[^\s@]+@[^\s@]+\.[^\s@]+$/)){
			    	alert("Invalid Email");
			    	return false;
			    	
			    }
			    if (pass.length<1) {
			        alert("Password is needed.");
			        return false;
			        
			    }
			    else if(!pass.match(/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/))
			    	{
			    	alert("Invalid Password "+pass);
			    	alert("Minimum 8 Characters \n Minimum 1 Uppercase \n Minimum 1 Special Character \n Minimum 1 LowerCase ");
			    	return false;
			    	}
			    else return true;
			    
		}
	</script>
<div class="container" style="margin-left:160px;">
        <div class="row" style="margin-top:100px;">
            
    <form method="post" action='register' style="font-family: Montserrat;" id="register1" onsubmit="return validateEmail()" >
        <h1 style="margin-left:100px; font-size:60px">Registration Form</h1>
        <br>
        <div class="col-md-5 col-md-offset-1">
        <label for="">Name:</label>
        <input type="text" name="name" id="name" required class="form-control">
        <br><br>
        <label for="">Email:</label>
        <input type="text" name="email" id="email" required class="form-control">
        <br><br>
        <label for="">Type:</label>
        <select name="type" id="type" required class="form-control">
            <option value="">Select Type</option>
            <option value="customer">Customer</option>
            <option value="houseowner">House Owner</option>
             <option value="admin">Admin</option>
        </select>
        <br><br>
        </div>
        <div class="col-md-5 col-md-offset-1">
        <label for="">Phone:</label>
        <input type="text" maxlength="10"  name="phone" id="phone" required class="form-control">
        <br><br>
        <label for="">Username:</label>
        <input type="text" name="user" id="uname" required class="form-control">
        <br><br>
        <label for="">Password:</label>
        <input type="password" name="pass" id="pass" required class="form-control">
        <br><br>
        </div>
        </div><div class="row">
        <div class="col-md-4 col-md-offset-1">
        <a href="Main.jsp" style="background-color: #2288ff" class="btn btn-info">Back</a>
        <input type="submit" value="Register" name="submitbtn" style="background-color: #2288ff" class="btn btn-info "> 
        <br><br>
        </div>
    </form>
    
        </div>
    </div>
</body>
</html>