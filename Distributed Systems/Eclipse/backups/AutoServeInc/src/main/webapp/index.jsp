
<html lang="en">
<% 

		Object email = session.getAttribute("Email");
		Object fname=session.getAttribute("FirstName");
		Object lname=session.getAttribute("LastName");
		Object phone =session.getAttribute("Phone");
		
		
%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <link rel="shortcut icon" type="image/x-icon" href="https://th.bing.com/th/id/OIP.cAA3eIjKFPQHSQJTSnmTMgHaHa?pid=ImgDet&rs=1    " />
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <title>Auto Serve Inc.</title>
</head>
<body>
    <!--Horizontal Header of the web page-->
    <header class="header "><!--FLEXBOX-->

        <h1 id="logo">Auto Serve Inc.</h1><!--Logo-->
        
        <h2>User Name: <% out.print(fname + " " + lname);%></h2>
        <nav class="navbar"><!--NAVIGATION BAR-->
            <ul class="link-container">
                <li><a href="#" id="homePage" class="links">Home</a></li>
                <li><a href="#" id="calculatorPage" class="links">Calculator</a></li>
                <li><a href="pages/jobsPages.html" id="jobsPage" class="links">Jobs</a></li>
                <li><a href="#" id="aboutUsPage" class="links">About</a></li>
                <li><a href="#" id = "servicesPage" class="links">Services</a></li>
                <li><a href="pages/clients.html" class="links">Clients</a></li>
                <li><a href="#" id="loginPage" class="links">Login/Sign-Up</a></li>
            </ul>
        </nav>

    </header>

    <!--Content loaded using AJAX with JQuery-->
    <main data-aos="zoom-in"
    data-aos-offset="0"
    data-aos-delay="1"
    data-aos-duration="500"
    data-aos-easing="ease-in-out
    data-aos-mirror="true"
    data-aos-once="false"
    data-aos-anchor-placement="top">
    </main>
    
    <br><br>
    
    <footer>
        <div id="flex-container">
            <div id="footer-nav">
                <h4>Quick Links</h4> 
                <br>
                    <ul>
                        <li class="categories" id="cars">Cars</li>
                        <li class="categories" id="bikes">Bikes</li>
                        <li class="categories" id="scooters">Scooters</li>
                    </ul>
            </div>
            <!--LOAD LINKS FROM footer-nav using JQuery-->
            <div id="footer-links"></div>
        </div>
<br><br>
<p id="copyright" style="text-align: center; opacity: .5;">Copyright ?? 2022 Auto Serve Inc. All Rights Reserved.</p>
    </footer>
    
<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/18479e6558.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<script src="js/script.js"></script>
</body>
</html>