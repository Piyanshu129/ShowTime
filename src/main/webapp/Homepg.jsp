<%-- 
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<!DOCTYPE HTML>
<html>
	<head>
		<title>ShowTime Bookings</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/bookShow.css"/>
		<script type="text/javascript" src="js/jquery.js">
		</script>
		<script type="text/javascript" src="js/bootstrap.js">
		</script> 
		<script type="text/javascript" src="js/bookShow.js">
		</script>

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

		<center><h3>Recommended Movies</h3></center>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			

			<div class="item active">
				<img src="img/gamer.jpg" alt="Chania">
			</div>

			<div class="item">
				<img src="img/pk.jpg" alt="Flower">
			</div>


<div class="item ">
				<img src="image/salar.jpg" alt="Chania">
			</div>
			<div class="item">
				<img src="img/roy.jpg" alt="Flower">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<center><h3>Best of Live Events</h3></center>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item ">
				<img src="image/anubhav.jpeg" alt="Chania">
			</div>

			<div class="item">
				<img src="image/samay.jpg" alt="Chania">
			</div>

			<div class="item">
				<img src="image/gaurav.jpeg" alt="Flower">
			</div>

			<div class="item active">
				<img src="image/gupta.jpeg" alt="Flower">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	
	
	
	<center><h3>Explore Fun Activities</h3></center>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="image/mystery.jpeg" alt="Chania">
			</div>

			<div class="item">
				<img src="image/escp.jpeg" alt="Chania">
			</div>

			<div class="item">
				<img src="image/fear.jpeg" alt="Flower">
			</div>

			<div class="item">
				<img src="image/cc.jpeg" alt="Flower">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
						<h3 class="panel-title">Book your tickets</h3>
						</div>
						<div class="panel-body">
							<center><h2></h2></center>
	<form action="selectSeat.jsp" method="post">
		<center>
			<%
				try {
					// Load the JDBC driver
					Class.forName("com.mysql.jdbc.Driver");

					// Connect to the database
					String url = "jdbc:mysql://localhost:3306/bookmyshow";
					String username = "root";
					String password = "saini_dev79";
					Connection connection = DriverManager.getConnection(url, username, password);

					// Create a statement
					Statement statement = connection.createStatement();

					// Get today's date in the format yyyy-MM-dd
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					Date today = new Date();
					String todayDate = sdf.format(today);

					// Execute SQL query for movie details with date condition
					String query = "SELECT * FROM TBLMOVIES WHERE ? BETWEEN STARTDATE AND ENDDATE";
					PreparedStatement preparedStatement = connection.prepareStatement(query);
					preparedStatement.setString(1, todayDate);
					ResultSet resultSet = preparedStatement.executeQuery();
					int count = 0; // Tokeep track of the number of cards in a row

					while (resultSet.next()) {
						count++;
					%>
					<div class="movie-container">
						<div class="movie-card">
							<h3><%= resultSet.getString("MOVIENAME") %></h3>
							<img class="movie-image" src="image/<%= resultSet.getString("IMAGENAME") %>" alt="Movie Image">
							<p>Stars: <%= resultSet.getString("STARS") %></p>
							<p>Language: <%= resultSet.getString("LANGUAGE") %></p>
							<input type="radio" name="selectedMovie" value="<%= resultSet.getString("MOVIENAME") %>">
							<%= resultSet.getString("MOVIENAME") %>
							<p>Available Slots:</p>
							<%
								if (resultSet.getString("SLOT912") != null) {
							%>
							<label><input type="radio" name="selectedSlot" value="9-12"> Slot 9-12</label><br>
							<%
								}
							%>
							<%
								if (resultSet.getString("SLOT1215") != null) {
							%>
							<label><input type="radio" name="selectedSlot" value="12-15"> Slot 12-15</label><br>
							<%
								}
							%>
							<%
								if (resultSet.getString("SLOT1518") != null) {
							%>
							<label><input type="radio" name="selectedSlot" value="15-18"> Slot 15-18</label><br>
							<%
								}
							%>
							<%
								if (resultSet.getString("SLOT1821") != null) {
							%>
							<label><input type="radio" name="selectedSlot" value="18-21"> Slot 18-21</label><br>
							<%
								}
							%>
							<h6><input type=checkbox name="selectedMovieId" value="<%= resultSet.getInt("MovieID") %>">I accept to term and condition</h6>
							<input type="submit" value="Select seat">
							<input type="hidden" name="goldprice" value="<%= resultSet.getInt("GOLDPRICE") %>">
							<input type="hidden" name="silverprice" value="<%= resultSet.getInt("SILVERPRICE") %>">
						</div>
					</div>
					<%
						// If three cards are displayed in a row, close the row and reset the count
						if (count % 3 == 0) {
					%>
					<div style="clear:both;"></div>
					<%
						}
					}

					// Close resources
					resultSet.close();
					preparedStatement.close();
					statement.close();
					connection.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</center>
	</form>

	<script>
		function updateSelectedSlot() {
			var selectedSlot = document.querySelector('input[name="selectedSlot"]:checked');
			if (selectedSlot) {
				document.querySelector('input[name="selectedSlot"]').value = selectedSlot.value;
			}
		}
	</script>
						</div>	
					</div>
				</div>
			</div>
		</div>
		
		
		
		
		
		
		
		
		
		
		
		
	
	
	
	
	
	
	

	
</body>
</html>
 --%>
 
 
 
 
 
 
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>ShowTime Bookings</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/bookShow.css"/>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>

    <style>
        /* General Styling */
        body {
            background-color:rgba(255,255,255,0.8); /* Light Blue */
            color: #00246B; /* Dark Blue */
            font-family: Arial, sans-serif;
            padding-top: 70px; /* Prevents content from being hidden under fixed navbar */
        }

        

        /* Carousel Styling */
        .carousel-inner img {
            width: 100%;
            height: 400px;
            object-fit: cover;
        }

        /* Movie Container */
        .movie-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
            padding: 20px;
        }

        /* Movie Card */
        .movie-card {
            background: white; /* White background for contrast */
            width: 280px;
            border-radius: 10px;
            padding: 15px;
            text-align: center;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            margin: 10px;
            color: #00246B; /* Dark Blue Text */
        }

        .movie-card img {
            width: 100%;
            height: 350px;
            border-radius: 8px;
            object-fit: cover;
        }

        /* Button Styling */
        .btn-primary {
            background-color: rgba(23, 60, 78, 0.9);
            border: none;
            color: #CADCFC;
        }

        .btn-primary:hover {
            background-color: #001A4D;
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

        .logo-container img {
            height: 40px;
            width: auto;
            border-radius: 5px;
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

    <!-- Navbar -->
    <div class="floating-navbar">
        <div class="nav-container">
            <!-- Logo -->
            <div class="logo-container">
                <span class="logo-text">ShowTime</span>
            </div>

            <!-- Navigation Links -->
            <div class="nav-links">
                <a href="Homepg.jsp">Home</a>
                <a href="BookedTicket.jsp">Booked Tickets</a>
                <a href="Myprofile.jsp">Profile</a>
            </div>
             <!-- Wallet Display -->
            <div class="wallet-info">
                <span style="color: white; font-weight: bold;">Wallet: ₹ <%= session.getAttribute("walletBalance") == null ? "0" : session.getAttribute("walletBalance") %></span>
                <button class="btn-wallet" onclick="addMoney()">+ Add Money</button>
            </div>

            <!-- Sign-In Button -->
            <button class="btn-auth" onclick="location.href='http://localhost:8080/ShowTime/loginpage.jsp'">Logout</button>
        </div>
    </div>
    
    <!-- Wallet Section -->
    <div class="wallet-container">
        <h3>Your Wallet Balance:</h3>
        <p class="wallet-balance">₹ <%= session.getAttribute("walletBalance") == null ? "0" : session.getAttribute("walletBalance") %></p>
        <button class="btn-wallet" onclick="addMoney()">Add Money to Wallet</button>
    </div>

   <script src="https://checkout.razorpay.com/v1/checkout.js"></script>

<script>
    function addMoney() {
        let choice = confirm("Do you want to add money via Razorpay? Click 'OK' for Razorpay or 'Cancel' for manual entry.");
        
        if (choice) {
            // Razorpay payment option
            let amount = prompt("Enter amount to add via Razorpay:");
            if (amount && !isNaN(amount) && amount > 0) {
                var options = {
                    "key": "rzp_test_PBB9cJmrVrOhLo", // Replace with your Razorpay API key
                    "amount": amount * 100, // Amount in paise
                    "currency": "INR",
                    "name": "BookMyShow Wallet",
                    "description": "Wallet Top-Up",
                    "handler": function (response) {
                        alert("Money added successfully! Payment ID: " + response.razorpay_payment_id);
                        window.location.href = "updateWallet.jsp?amount=" + amount;
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
                rzp1.open();
            } else {
                alert("Invalid amount!");
            }
        } else {
            // Manual addition
            let amount = prompt("Enter amount to add:");
            if (amount && !isNaN(amount) && amount > 0) {
                window.location.href = "updateWallet.jsp?amount=" + amount;
            } else {
                alert("Invalid amount!");
            }
        }
    }
</script>


		    <!-- Movie Carousel -->
		    <div class="container">
		        <h3 class="text-center">Recommended Movies</h3>
		        <div id="myCarousel" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
		    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		    <li data-target="#myCarousel" data-slide-to="1"></li>
		    <li data-target="#myCarousel" data-slide-to="2"></li>
		  </ol>
		
		  <!-- Wrapper for slides -->
		  <div class="carousel-inner">
		    <div class="item active">
		      <img src="image/animal.jpg" alt="Los Angeles">
		    </div>
		
		    <div class="item">
		      <img src="image/pushpa2.avif" alt="Chicago">
		    </div>
		
		    <div class="item">
		      <img src="image/stree2.avif" alt="New York">
		    </div>
		  </div>
		
		  <!-- Left and right controls -->
		  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#myCarousel" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
		    </div>

    <!-- Movie Selection Section -->
    <div class="container">
        <h3 class="text-center">Book your tickets</h3>
        <div class="movie-container">
            <form action="selectSeat.jsp" method="post">
                <% 
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmyshow", "root", "saini_dev79");
                    PreparedStatement ps = connection.prepareStatement("SELECT * FROM TBLMOVIES WHERE ? BETWEEN STARTDATE AND ENDDATE");
                    ps.setString(1, new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
                    ResultSet rs = ps.executeQuery();
                    
                    while (rs.next()) { 
                %>
                        <div class="movie-card">
                            <img src="image/<%= rs.getString("IMAGENAME") %>" alt="<%= rs.getString("MOVIENAME") %>">
                            <div class="movie-details">
                                <h4><%= rs.getString("MOVIENAME") %></h4>
                                <p>⭐ Stars: <%= rs.getString("STARS") %></p>
                                <p>🎬 Language: <%= rs.getString("LANGUAGE") %></p>
                            </div>
                            <div class="movie-slots">
                                <input type="radio" name="selectedMovie" value="<%= rs.getString("MOVIENAME") %>"> Select
                                <p>Available Slots:</p>
                                <% if (rs.getString("SLOT912") != null) { %>
                                    <label><input type="radio" name="selectedSlot" value="9-12"> Slot 9-12</label><br>
                                <% } if (rs.getString("SLOT1215") != null) { %>
                                    <label><input type="radio" name="selectedSlot" value="12-15"> Slot 12-15</label><br>
                                <% } if (rs.getString("SLOT1518") != null) { %>
                                    <label><input type="radio" name="selectedSlot" value="15-18"> Slot 15-18</label><br>
                                <% } if (rs.getString("SLOT1821") != null) { %>
                                    <label><input type="radio" name="selectedSlot" value="18-21"> Slot 18-21</label><br>
                                <% } %>
                            </div>
                            <div class="terms">
                                <input type="checkbox" name="selectedMovieId" value="<%= rs.getInt("MovieID") %>"> 
                                <label>I accept terms</label>
                            </div>
                            <input type="hidden" name="goldprice" value="<%= rs.getInt("GOLDPRICE") %>">
                            <input type="hidden" name="silverprice" value="<%= rs.getInt("SILVERPRICE") %>">
                            <input type="submit" value="Select seat" class="btn btn-primary">
                        </div>
                <% 
                    }
                    rs.close();
                    ps.close();
                    connection.close();
                } catch (Exception e) { 
                    e.printStackTrace(); 
                } 
                %>
            </form>
        </div>
    </div>
</body>
</html>
