	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="jakarta.servlet.http.HttpSession" %>
    <%@ page import="java.io.PrintWriter" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Away</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
</head>
<body>
    <!-- NamvBar -->
    <header>
        <div class="nav contailer">

            <a href="Main.jsp" class="logo"><i class='bx bx-home'></i>Home Away</a>
            <!-- Menu -->
            <input type="checkbox" name="" id="menu">
            <label for="menu"></label>
            <!-- List  -->
            <ul class="navbar">
                <li><a href="Main.jsp">Home</a></li>
                <li><a href="House.jsp">Add</a></li>
                <li><a href="Complaint.jsp">Complaint</a></li>
                <li><a href="HSearch.jsp">Search</a></li>
                <li><a href="Feedback.jsp">Feedback</a></li>
            </ul>

            <!-- LogIn -->
            <a href="Logout.jsp" class="btn">Log Out</a>
        </div>
    </header>
    <!-- Home -->
    <section class="home container" id="home">
        <div class="home-text">
            <h1>Find the Best <br>Properties <br>To Live.</h1>
            <a href="Registration.jsp" class="btn">Sign Up</a>
        </div>
    </section>

    <!-- About -->

    <section class="about container" id="about">
        <div class="about-img">
            <img src="about.jpg" alt="">
        </div>
        <div class="about-text">
            <p>Get in touch with us to Sell or Rent Your Houses</p>
            <p>Rent a beautiful house for your family.</p>
            <p>Choose from flats in societies, individual </p>
            <p>apartments, bungalows & villas.</p><br>
            <a href="" class="btn">Learn More</a>
        </div>
    </section>

    <!-- Properties  -->
    <section class="properties container" id="properties">
        <div class="heading">
            <span></span>
            <h2>Our Featured Properties</h2>
            <p>khsdgvjskvhsjvkjshvjskvhskjvkj <br>affskgskshkfkjshffkjh</p>
        </div>
        <div class="properties-container container">


            <div class="box">
                <img src="p1.jpg" alt="">
                <h3>(Price)</h3>
                <div class="content">
                    <div class="text">
                        <h3><a href="Visit.jsp" style="color:black;">The Palace</a></h3>
                        <p>Koregaon Park,Pune</p>
                    </div>
                    <div class="icon">
                        <i class='bx bxs-bed' ><span>3</span></i>
                        <i class='bx bxs-dish' ><span>1</span></i>
                    </div>
                </div>
            </div>

            <div class="box">
                <img src="p2.jpg" alt="">
                <h3>(Price)</h3>
                <div class="content">
                    <div class="text">
                        <h3><a href="Visit.jsp" style="color:black;">The Palace</a></h3>
                        <p>Koregaon Park,Pune</p>
                    </div>
                    <div class="icon">
                        <i class='bx bxs-bed' ><span>3</span></i>
                        <i class='bx bxs-dish' ><span>1</span></i>
                    </div>
                </div>
            </div>

            <div class="box">
                <img src="p3.jpg" alt="">
                <h3>(Price)</h3>
                <div class="content">
                    <div class="text">
                        <h3><a href="Visit.jsp" style="color:black;">The Palace</a></h3>
                        <p>Koregaon Park,Pune</p>
                    </div>
                    <div class="icon">
                        <i class='bx bxs-bed' ><span>3</span></i>
                        <i class='bx bxs-dish' ><span>1</span></i>
                    </div>
                </div>
            </div>

            <div class="box">
                <img src="p4.jpg" alt="">
                <h3>(Price)</h3>
                <div class="content">
                    <div class="text">
                        <h3><a href="Visit.jsp" style="color:black;">The Palace</a></h3>
                        <p>Koregaon Park,Pune</p>
                    </div>
                    <div class="icon">
                        <i class='bx bxs-bed' ><span>3</span></i>
                        <i class='bx bxs-dish' ><span>1</span></i>
                    </div>
                </div>
            </div>
            
            <div class="box">
                <img src="p5.jpg" alt="">
                <h3>(Price)</h3>
                <div class="content">
                    <div class="text">
                       <h3><a href="Visit.jsp" style="color:black;">The Palace</a></h3>
                        <p>Koregaon Park,Pune</p>
                    </div>
                    <div class="icon">
                        <i class='bx bxs-bed' ><span>3</span></i>
                        <i class='bx bxs-dish' ><span>1</span></i>
                    </div>
                </div>
            </div>
            
            <div class="box">
                <img src="p6.jpg" alt="">
                <h3>(Price)</h3>
                <div class="content">
                    <div class="text">
                        <h3><a href="Visit.jsp" style="color:black;">The Palace</a></h3>
                        <p>Koregaon Park,Pune</p>
                    </div>
                    <div class="icon">
                        <i class='bx bxs-bed' ><span>3</span></i>
                        <i class='bx bxs-dish' ><span>1</span></i>
                    </div>
                </div>
            </div>


        </div>
    </section>

    <!-- Footer -->
    <section class="footer">
        <div class="footer-container container">
            <h2>Home Away</h2>
            <div class="footer-box">
                <h3>Quick Links</h3>
                <a href="#">Agency</a>
                <a href="#">Agency</a>
                <a href="#">Agency</a>
            </div>
            <div class="footer-box">
                <h3>Locations</h3>
                <a href="#">Agency</a>
                <a href="#">Agency</a>
                <a href="#">Agency</a>
            </div>
            <div class="footer-box">
                <h3>Contact</h3>
                <a href="#">Agency</a>
                <a href="#">Agency</a>
                <div class="social">
                    <a href="#"></a>
                </div>
            </div>

        </div>
    </section>
</body>
</html>