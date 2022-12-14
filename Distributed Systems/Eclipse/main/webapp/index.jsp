<html lang="en">
<% 

		//getting credentail attributes from loginAction.jsp
		Object sessionEmail = session.getAttribute("Email");
		Object sessionFname = session.getAttribute("FirstName");
		Object sessionLname = session.getAttribute("LastName");
		Object sessionPhone = session.getAttribute("Phone");
		Object sessionPosition = session.getAttribute("Position");

		
		String email = String.valueOf(sessionEmail);
		String firstName = String.valueOf(sessionFname);
		String lastName = String.valueOf(sessionLname);
		String phone = String.valueOf(sessionPhone);
		String position = String.valueOf(sessionPosition);


		String staff = "Staff", admin = "Admin";
		
		if(sessionFname == null){
            System.out.println("(index.jsp)Username hidden\n");
            System.out.println("(index.jsp)Not logged in\n");
        }else{
           
            System.out.println("(index.jsp)Logged in as " + sessionFname + "\n");
        }
		
%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <link rel="shortcut icon" type="image/x-icon" href="https://th.bing.com/th/id/OIP.cAA3eIjKFPQHSQJTSnmTMgHaHa?pid=ImgDet&rs=1    " />
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <style>
    	.jsp-userName{ color: blue;
    	 			display: inline;
                    text-decoration: none;
                    color: hsl(0, 0%, 13%);
                    font-size: 1.1rem;
                    font-family: 'Roboto';
                    }
    </style>
    
    <title>Auto Serve Inc.</title>
</head>
<body>
    <!--Horizontal Header of the web page-->
    <header class="header "><!--FLEXBOX-->

        <h1 id="logo">Auto Serve Inc.</h1><!--Logo-->
        
       
        <nav class="navbar"><!--NAVIGATION BAR-->
            <ul class="link-container">
                <li><a href="#" id="homePage" class="links">Home</a></li>
                <li><a href="#" id="calculatorPage" class="links">Calculator</a></li>
                <li><a href="pages/jobsPages.html" id="jobsPage" class="links">Jobs</a></li>
                <li><a href="#" id="aboutUsPage" class="links">About</a></li>
                <li><a href="#" id = "servicesPage" class="links">Services</a></li>
                
                
                <li><a href="pages/clients.html" class="links jsp-links">
                	<% //Display  clients button only if user is either staff or admin
                	if(position.equals(staff) || position.equals(admin))
                		%> Client Applications <% 
                	   else System.out.println("(index.jsp)Not an admin or staff. Hid Clients link. Email: " + email); %>
                	
                </a></li>
                
                <li><a href="#" id="loginPage" class="links jsp-links">
                	<% //Display login/signup button if user is not logged in
                	if (sessionFname == null) 
                		%> Login/Sign-Up <%
                	 else System.out.println("(index.jsp)Hid Login/Sign-Up button for client/staff"); %>
                </a></li>
                <li><a href="jsp/logoutAction.jsp" class = "Links jsp-linnks"> 
		                <% //Display logout buttong only if user is logged in 
		                if(sessionFname == null) 
		                	System.out.println("(index.jsp)Logout button hidden");         
				        else %> Logout 
				</a></li>
                <li style = "text-align: center;font-size: 2rem;">
                <span class = "profile-name jsp-userName">         
                <% //Display client button only if user is admin/staff 
                if(sessionFname == null)
                	System.out.println("(index.jsp)Username hidden\n");
                else {
                	if(position.equals(admin))
                		out.print(firstName + "("+position+")");
                			else if (position.equals(staff))
                				out.print(firstName + "("+position+")");
                				else
                					out.print(firstName + "("+position+")");
                	
                	System.out.println("(index.jsp)Logged in as " + firstName + "\n");
                	}
                %>

  				 </span></li>

            </ul>
        </nav>

    </header>

    <!--Content loaded using AJAX with JQuery-->
    <main data-aos="zoom-in"
        data-aos-offset="0"
        data-aos-delay="1"
        data-aos-duration="500"
        data-aos-easing="ease-in-out"
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

<script>

var car = false;
var truck = false;
var van = false;
var motorbike = false;
var down = false;

var step = 1;


  //-------------------ADMIN LOGIN----------------
  /*
        $("#input-container").load("pages/states/vehicleInfo.txt").fadeIn("slow");
        var step = 1;

            $("#progress-prev").on('click', function(){
                step--;
                console.log("Step" + step);

                if(step === 1){
                    car = false;
                    truck = false;
                    van = false;
                    motorbike = false;
                    $("#input-container").hide().load("pages/states/vehicleInfo.txt").fadeIn("slow");
                    $("#vehicleDisplay").hide().load("pages/media/carImg.txt").fadeIn("slow");
                    console.log("loaded image on step 1");
                }
            });

        //loads PRICES on click
        $("#progress-next").on('click', function(){
            step++;
            console.log("Step " + step);
            if(step === 2){
                if (car == true){
                    $("#input-container").hide().load("pages/states/servicePrices/carPrices.txt").fadeIn("slow");
                    console.log("loaded car services");
                }

                    else if (truck == true){
                    $("#input-container").hide().load("pages/states/servicePrices/truckPrices.txt").fadeIn("slow");
                    console.log("loaded truck services");
                    }

                    else if (van == true){
                    $("#input-container").hide().load("pages/states/servicePrices/vanPrices.txt").fadeIn("slow");
                    console.log("loaded van services");
                    }

                    else if (motorbike == true){
                    $("#input-container").hide().load("pages/states/servicePrices/bikePrices.txt").fadeIn("slow");
                    console.log("loaded motorbike services");
                    }
                    
                    document.querySelector('.vehicle').style.width = "10%";
                    document.querySelector('.flag').style.width = "5%";
                    console.log("Changed width of vehicle and flag to 10%");

                    $(".flag").css("margin-top", "-3.5%");
                    $(".flag").css("margin-left", "5%");

                    $(".flag").css("position", "absolute");

                    console.log("Changed position of flag to the left of the vehicle");

                    //Estimate container
                    var estimateCost = "<div id = 'estimateCost-container'></div>";
                    var estimateCostH4 = "<h4 id = 'estimateCostH4'>ESTIMATE COST</h4> <br>"
                    var priceTaG = "<p id = 'priceTaG'>$ 0 - 0</p>"
                    $("#subDisplay").append(estimateCost);
                    $("#estimateCost-container").append(estimateCostH4);                   
                    $("#estimateCost-container").append(priceTaG);

                    //css 
                    $("#estimateCost-container").css("padding-top", "2%");
                    $("#estimateCost-container").css("text-align", "center");

                    $("#estimateCostH4").css("font-size", "2rem");
                    $("#estimateCostH4").css("font-family", "sans-serif");
                    $("#priceTaG").css("font-family", "sans-serif");
                    $("#priceTaG").css("font-size", "1.5rem");
                

                    $(".flag").css("margin-left", "12%");
                    $(".carImg").css("margin-left", "2%");

                
                    //Cheque Container
                    var chequeContainer = "<div id = 'cheque-container'></div>";
                    var note = "<p style='color: grey;'>* This is an estimated cost collected from multiple sources. Actual prices may vary.</p>"
                    $("#subDisplay").append(note);

                    $("#subDisplay").append(chequeContainer);
                            // $("#cheque-container").load("pages/states/servicePrices/cheque.txt").fadeIn("fast");

                }//end else if

            else if(step === 3){
                $("#input-container").hide().load("pages/states/bookings.txt").fadeIn("slow");
                $("#progress-prev").hide();
            $("#progress-next").hide();
                console.log("hid both buttons");

            }
        })
  */

</script>
</body>
</html>