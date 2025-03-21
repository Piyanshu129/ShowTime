<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Home Page</title>
    <link rel="stylesheet" type="text/css" href="css/bookShow.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <!-- Add any additional styling or linking to CSS files here -->
    
    <style>
        /* Add CSS for button color based on the website's theme */
        button {
            background-color: #007bff; /* Set the background color of buttons */
            color: #fff; /* Set the text color of buttons to white */
            padding: 10px 20px; /* Add padding to the buttons */
            border: none; /* Remove border from the buttons */
            cursor: pointer; /* Add pointer cursor to indicate interactivity */
        }
    </style>
    
        <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bookShow.js"></script>
    
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
						<li class="active"><a href="AdminHomePage.jsp">Insert Movie <span class="sr-only">(current)</span></a></li>
					</ul>
					
					
					
					
					
					
					<ul class="nav navbar-nav">
						<li class="active"><a href="adminseemovie.jsp">See Movies <span class="sr-only">(current)</span></a></li>
					</ul>
					
					
					
					
					<ul class="nav navbar-nav">
						<li class="active"><a href="adminseatsbooked.jsp">Seats Booked <span class="sr-only">(current)</span></a></li>
					</ul>
					
					<ul class="nav navbar-nav">
						<li class="active"><a href="adminseeuser.jsp">All Users <span class="sr-only">(current)</span></a></li>
					</ul>
<ul class="nav navbar-nav">
						<li class="active"><a href="logout.jsp">Logout <span class="sr-only">(current)</span></a></li>
					</ul>
				</div><!-- /.navbar-collapse -->
				
				
			</div><!-- /.container-fluid -->
		</nav>
    <center>
        <h1>Welcome Admin!</h1>
        <h2>Add Movie/Events</h2>
        <br>
        <form action="AddMovieServlet" method="post">
            <label for="movieName">Movie Name:</label>
            <input type="text" id="movieName" name="movieName" required><br><br>

            <label for="stars">Stars:</label>
            <input type="text" id="stars" name="stars" required><br><br>

            <label for="startDate">Start Date:</label>
            <input type="date" id="startDate" name="startDate" required><br><br>

            <label for="endDate">End Date:</label>
            <input type="date" id="endDate" name="endDate" required><br><br>

            <!-- Add slots and other movie details as per your requirement -->
           <label for="slot912">Slot 9-12:</label>
			<input type="checkbox" id="slot912" name="slot912" value="slot9-12" ><br><br>

<label for="slot1215">Slot 12-15:</label>
<input type="checkbox" id="slot12-15" name="slot1215" value="slot1215" ><br><br>

<label for="slot1518">Slot 15-18:</label>
<input type="checkbox" id="slot15-18" name="slot1518" value="slot1518" ><br><br>

<label for="slot1821">Slot 18-21:</label>
<input type="checkbox" id="slot18-21" name="slot1821" value="slot1821" ><br><br>

            <label for="goldPrice">Gold Price:</label>
            <input type="number" id="goldPrice" name="goldPrice" required><br><br>

            <label for="silverPrice">Silver Price:</label>
            <input type="number" id="silverPrice" name="silverPrice" required><br><br>

            <label for="imageName">Image Name:</label>
            <input type="text" id="imageName" name="imageName" required><br><br>

            <label for="language">Language:</label>
            <input type="text" id="language" name="language" required><br><br>
             <label for="loc">Location:</label>
            <input type="text" id="loc" name="loc" required><br><br>

            <button type="submit">Add Movie</button>
        </form>
    </center>
</body>
</html>
