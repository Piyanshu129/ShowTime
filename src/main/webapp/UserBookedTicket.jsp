<%-- 

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="Database.alldata" %>
<%@ page import="Database.alldata" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.List"%>
<%@ page import="Database.DateAndTime" %>


<html>
<head>
    <title>Show Information</title>
    <link rel="stylesheet" type="text/css" href="css/bookShow.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>

<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">ShowTime Bookings</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="Homepg.jsp">Home <span class="sr-only">(current)</span></a></li>
					</ul>
					
					
					
					
					
					
					<ul class="nav navbar-nav">
						<li class="active"><a href="BookedTicket.jsp">Booked Tickets <span class="sr-only">(current)</span></a></li>
					</ul>
					
					
					
					
					<ul class="nav navbar-nav">
						<li class="active"><a href="Myprofile.jsp">Profile <span class="sr-only">(current)</span></a></li>
					</ul>
<ul class="nav navbar-nav">
						<li class="active"><a href="logout.jsp">Logout <span class="sr-only">(current)</span></a></li>
					</ul>
				</div><!-- /.navbar-collapse -->
				
				
			</div><!-- /.container-fluid -->
		</nav>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="text-center">Selected Seats:</h2>
                <div class="text-center">
                <%
                String uid = (String) session.getAttribute("userId");
                String[] selectedSeats = request.getParameterValues("selectedSeats[]");
                if (selectedSeats != null) {
                    for (String seat : selectedSeats) {
                        out.println("<p>" + seat + "</p>");
                    }
                }
                String dateofshow = request.getParameter("dateBooked");
                int movieId = Integer.parseInt(request.getParameter("movieid"));
                String slotBooked = request.getParameter("slotBooked");
                %>
                </div>
                <div class="text-center">
                    <h2>Date Booked:</h2>
                    <p><%= dateofshow %></p>
                    <h2>Slot Booked:</h2>
                    <p><%= slotBooked %></p>
           
                    <h2>Gold Price:</h2>
                    <p><%= request.getParameter("goldPrice") %></p>
                    <h2>Silver Price:</h2>
                    <p><%= request.getParameter("silverPrice") %></p>
                    <h2>Your Total Price:</h2>
    
                <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmyshow", "root", "saini_dev79");
                    String query = "SELECT TOTALPRICE FROM TBLTICKET WHERE MOVIEID=? AND uid=? AND DATEOFSHOW=? AND SLOT=? ORDER BY TICKETID DESC LIMIT 1";
                    try (PreparedStatement stmt = con.prepareStatement(query)) {
                        stmt.setInt(1, movieId);
                        stmt.setString(2, uid);
                        stmt.setString(3, dateofshow);
                        stmt.setString(4, slotBooked);
                        try (ResultSet rset = stmt.executeQuery()) {
                            while (rset.next()) {
                                int totalprice = rset.getInt("TOTALPRICE");
                %>
                                <p><%= totalprice %></p>
                <%
                            }
                        }
                    }
                } catch (Exception e) {
                    out.println("<p>Error: " + e.getMessage() + "</p>");
                }
                %>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
 --%>
 
 
 
 
 
 
 
 
 
<!--  new -->



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<html>
<head>
    <title>Show Information</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/bookShow.css"/>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>

    <style>
        /* General Styling */
        body {
            background-color: rgba(255,255,255,0.8); /* Light theme */
            color: #00246B; /* Dark Blue */
            font-family: Arial, sans-serif;
            padding-top: 70px;
        }

        /* Floating Centered Navbar */
        .floating-navbar {
            position: fixed;
            top: 20px;
            left: 50%;
            transform: translateX(-50%);
            width: 90%;
            max-width: 800px;
            background: rgba(23, 60, 78, 0.9);
            border-radius: 12px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
            z-index: 1000;
            padding: 10px 20px;
        }

        .nav-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        /* Logo */
        .logo-container {
            display: flex;
            align-items: center;
        }

        .logo-text {
            font-size: 20px;
            font-weight: bold;
            color: white;
            margin-left: 10px;
        }

        /* Navigation Links */
        .nav-links {
            display: flex;
            gap: 20px;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        .nav-links a:hover {
            color: #a8d5a2;
        }

        /* Buttons */
        .btn-auth {
            padding: 6px 12px;
            background-color: #a8d5a2;
            border: none;
            border-radius: 15px;
            font-weight: bold;
            cursor: pointer;
            color: #2c3e50;
            transition: background-color 0.3s ease;
        }

        .btn-auth:hover {
            background-color: #8ccf8a;
        }

        /* Container Styling */
        .content-container {
            max-width: 800px;
            margin: auto;
            padding: 30px;
            background: white;
            border-radius: 12px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        /* Payment Button */
        #pay-btn {
            padding: 10px 20px;
            font-size: 18px;
            background-color: #1a237e;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            margin-top: 20px;
        }

        #pay-btn:hover {
            background-color: #001A4D;
        }
                .wallet-container {
            text-align: center;
            margin: 20px;
            padding: 15px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }

        .wallet-balance {
            font-size: 20px;
            font-weight: bold;
            color: green;
        }

        .btn-wallet {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 15px;
            margin-top: 10px;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-wallet:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

    <!-- Floating Navbar -->
    <div class="floating-navbar">
        <div class="nav-container">
            <div class="logo-container">
                <span class="logo-text">ShowTime</span>
            </div>
            <div class="nav-links">
                <a href="Homepg.jsp">Home</a>
                <a href="BookedTicket.jsp">Booked Tickets</a>
                <a href="Myprofile.jsp">Profile</a>
            </div>
           
            <button class="btn-auth" onclick="location.href='logout.jsp'">Logout</button>
        </div>
    </div>

    <div class="container content-container">
        <h2 class="text-center">Selected Seats:</h2>
        <div class="text-center">
            <%
                String uid = (String) session.getAttribute("userId");
                String[] selectedSeats = request.getParameterValues("selectedSeats[]");
                if (selectedSeats != null) {
                    for (String seat : selectedSeats) {
                        out.println("<p>" + seat + "</p>");
                    }
                }
                String dateofshow = request.getParameter("dateBooked");
                int movieId = Integer.parseInt(request.getParameter("movieid"));
                String slotBooked = request.getParameter("slotBooked");
            %>
        </div>

        <h2>Date Booked:</h2>
        <p><%= dateofshow %></p>
        <h2>Slot Booked:</h2>
        <p><%= slotBooked %></p>
		
<h2 >Wallet Balance:</h2><br> <p>₹ <%= session.getAttribute("walletBalance") == null ? "0" : session.getAttribute("walletBalance") %></p>
           
        <h2>Your Total Price:</h2>
        <%
            int totalprice = 0;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmyshow", "root", "saini_dev79");
                String query = "SELECT TOTALPRICE FROM TBLTICKET WHERE MOVIEID=? AND uid=? AND DATEOFSHOW=? AND SLOT=? ORDER BY TICKETID DESC LIMIT 1";
                try (PreparedStatement stmt = con.prepareStatement(query)) {
                    stmt.setInt(1, movieId);
                    stmt.setString(2, uid);
                    stmt.setString(3, dateofshow);
                    stmt.setString(4, slotBooked);
                    try (ResultSet rset = stmt.executeQuery()) {
                        while (rset.next()) {
                            totalprice = rset.getInt("TOTALPRICE");
                        }
                    }
                }
            } catch (Exception e) {
                out.println("<p>Error: " + e.getMessage() + "</p>");
            }
        %>
        <p><b>₹ <%= totalprice %></b></p>
        
        <!-- Payment Button -->
        
   
<button id="pay-wallet-btn">Pay with Wallet</button>
<button id="pay-btn">Pay Online with Razorpay</button>
 </div>
<script>
    var walletBalance = <%= session.getAttribute("walletBalance") == null ? "0" : session.getAttribute("walletBalance") %>;
    var totalPrice = <%= totalprice %>;

    document.getElementById('pay-wallet-btn').onclick = function () {
        if (walletBalance >= totalPrice) {
            alert("Payment successful using Wallet!");
            window.location.href = "walletPaymentSuccess.jsp?amount=" + totalPrice;
        } else {
            alert("Insufficient wallet balance! Please use Razorpay.");
        }
    };

    var options = {
        "key": "rzp_test_PBB9cJmrVrOhLo",
        "amount": totalPrice * 100,
        "currency": "INR",
        "name": "BookMyShow Clone",
        "description": "Movie Ticket Booking",
        "image": "your_logo_url",
        "handler": function (response) {
            alert("Payment successful! Payment ID: " + response.razorpay_payment_id);
            window.location.href = "paymentSuccess.jsp?payment_id=" + response.razorpay_payment_id + "&amount=" + totalPrice;
        },
        "prefill": {
            "name": "<%= session.getAttribute("userName") %>",
            "email": "<%= session.getAttribute("userEmail") %>",
            "contact": "<%= session.getAttribute("userPhone") %>"
        },
        "theme": {
            "color": "#1a237e"
        }
    };

    var rzp1 = new Razorpay(options);
    document.getElementById('pay-btn').onclick = function (e) {
        rzp1.open();
        e.preventDefault();
    };
</script>


</body>
</html>
