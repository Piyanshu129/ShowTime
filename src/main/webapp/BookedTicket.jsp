<%-- <%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="javax.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Booked Tickets</title>
    <link rel="stylesheet" type="text/css" href="css/bookShow.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <style>
        /* Add custom styles here if needed */
    </style>
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
    <%
    String uid = (String) session.getAttribute("userId");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmyshow", "root", "saini_dev79");
        String query = "SELECT * FROM TBLTICKET WHERE uid=?";
        
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, uid);
        ResultSet rs = pstmt.executeQuery();
    %>

    <h2 class="text-center">Booked Tickets</h2>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <table class="table table-striped">
                    <thead>
                        <tr>
                          
                            <th>Ticket ID</th>
                            <th>User Name</th>
                            <th>Movie Name</th>
                            <th>Gold Seats Booked</th>
                            <th>Silver Seats Booked</th>
                            <th>Date of Show</th>
                            <th>Slot</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        while (rs.next()) {
                            int movieId = rs.getInt("MOVIEID");
                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmyshow", "root", "saini_dev79");
                                String query1 = "SELECT MOVIENAME FROM TBLMOVIES WHERE MOVIEID=?";
                                
                                PreparedStatement pstmt1 = conn.prepareStatement(query1);
                                pstmt1.setInt(1, movieId);
                                ResultSet rst = pstmt1.executeQuery();

                                if (rst.next()) {
                                    String movieName = rst.getString("MOVIENAME");
                        %>
                                    <tr>
                                        
                                        <td><%= rs.getInt("TICKETID") %></td>
                                        <td><%= rs.getString("UNM") %></td>
                                        <td><%= movieName %></td>
                                        <td><%= rs.getString("GOLDSEATSBOOKED") %></td>
                                        <td><%= rs.getString("SILVERSEATSBOOKED") %></td>
                                        <td><%= rs.getDate("DATEOFSHOW") %></td>
                                        <td><%= rs.getString("SLOT") %></td>
                                    </tr>
                        <%
                                }
                                
                                // Close resources
                                rst.close();
                                pstmt1.close();
                                conn.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <%
        // Close resources
        rs.close();
        pstmt.close();
        con.close();
    } catch (Exception e) {
        out.println("<p>Error: " + e.getMessage() + "</p>");
        e.printStackTrace();
    }
    %>
</body>
</html>
 --%>
 
 
 
 
 
 
 <%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="javax.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Booked Tickets</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/bookShow.css"/>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <style>
        body {
            background-color: rgba(255, 255, 255, 0.8);
            color: #000000;
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
        .table-container {
            margin-top: 80px;
        }
        .table-striped tbody tr:nth-of-type(odd) {
        background-color: rgba(23, 60, 78, 0.9) !important;
        color: white; /* Ensuring text is readable on dark stripes */
    }

    .table-striped tbody tr:nth-of-type(odd) td {
        color: white !important; /* Ensuring text in dark stripes is visible */
    }

    .table-striped tbody tr:hover {
        background-color: rgba(0, 36, 107, 0.1) !important;
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

            <!-- Sign-In Button -->
            <button class="btn-auth" onclick="location.href='logout.jsp'">Logout</button>
        </div>
    </div>
     <%
    String uid = (String) session.getAttribute("userId");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmyshow", "root", "saini_dev79");
        String query = "SELECT * FROM TBLTICKET WHERE uid=?";
        
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, uid);
        ResultSet rs = pstmt.executeQuery();
    %>

    <h2 class="text-center">Booked Tickets</h2>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <table class="table table-striped">
                    <thead>
                        <tr>
                          
                            <th>Ticket ID</th>
                            <th>User Name</th>
                            <th>Movie Name</th>
                            <th>Gold Seats Booked</th>
                            <th>Silver Seats Booked</th>
                            <th>Date of Show</th>
                            <th>Slot</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        while (rs.next()) {
                            int movieId = rs.getInt("MOVIEID");
                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmyshow", "root", "saini_dev79");
                                String query1 = "SELECT MOVIENAME FROM TBLMOVIES WHERE MOVIEID=?";
                                
                                PreparedStatement pstmt1 = conn.prepareStatement(query1);
                                pstmt1.setInt(1, movieId);
                                ResultSet rst = pstmt1.executeQuery();

                                if (rst.next()) {
                                    String movieName = rst.getString("MOVIENAME");
                        %>
                                    <tr>
                                        
                                        <td><%= rs.getInt("TICKETID") %></td>
                                        <td><%= rs.getString("UNM") %></td>
                                        <td><%= movieName %></td>
                                        <td><%= rs.getString("GOLDSEATSBOOKED") %></td>
                                        <td><%= rs.getString("SILVERSEATSBOOKED") %></td>
                                        <td><%= rs.getDate("DATEOFSHOW") %></td>
                                        <td><%= rs.getString("SLOT") %></td>
                                    </tr>
                        <%
                                }
                                
                                // Close resources
                                rst.close();
                                pstmt1.close();
                                conn.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <%
        // Close resources
        rs.close();
        pstmt.close();
        con.close();
    } catch (Exception e) {
        out.println("<p>Error: " + e.getMessage() + "</p>");
        e.printStackTrace();
    }
    %>
</body>
</html>
 