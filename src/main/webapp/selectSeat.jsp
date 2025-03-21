<%-- 






<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="Database.alldata" %>
<%@ page import="Database.DateAndTime" %>
<%@ page import ="java.util.ArrayList" %> 
<%@ page import ="java.util.List" %>

<html>
<head>
    <title>Select Seats</title>
    <link rel="stylesheet" type="text/css" href="css/bookShow.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
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
                <h2 class="text-center">Select Seats</h2>

                <div class="seat-container">
                 <h3>Movie Information:</h3>
            <%
            
            
            //String userId = (String) session.getAttribute("userId");

                // Retrieve movie information from the previous page
                String selectedMovie = request.getParameter("selectedMovie");
              
                int movieId = Integer.parseInt(request.getParameter("selectedMovieId"));
                int goldprice=Integer.parseInt(request.getParameter("goldprice"));
                int silverprice=Integer.parseInt(request.getParameter("silverprice"));
                // Parse MovieID as an integer
               // int goldprice=Integer.parseInt(request.getParameter("goldprice"));
                //int silverprice=Integer.parseInt(request.getParameter("silverprice"));
               List<String> ss = alldata.getinfo(movieId);
                
                
               List<String> slots = new ArrayList<>();
                try {
        			Class.forName("com.mysql.jdbc.Driver");
        			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmyshow", "root",
        	                   "saini_dev79");
        				
        				
        				String query = "SELECT * FROM TBLMOVIES WHERE MovieID=?";
        	           PreparedStatement stmt = con.prepareStatement(query);
        	           stmt.setInt(1, movieId);
        	           

        	           
        	           ResultSet rset=stmt.executeQuery();
        	           while(rset.next()) {
        	        	   
        	        	   String SLOT912=rset.getString("SLOT912");
        	               String SLOT1215=rset.getString("SLOT1215");
        	               String SLOT1518=rset.getString("SLOT1518");
        	               String SLOT1821=rset.getString("SLOT1821");
        	               
        	              
        	               if(SLOT912!=null) {
        	               	slots.add(SLOT912);
        	               }
        	               
        	               if(SLOT1215!=null) {
        	               	slots.add(SLOT1215);
        	               }
        	               if(SLOT1518!=null) {
        	               	slots.add(SLOT1518);
        	               }
        	               if(SLOT1821!=null) {
        	               	slots.add(SLOT1821);
        	               }
        	               
        	               
        	               
        	               
        	        	   
        	             
        	        	   
        	           }
        	           
        		} catch (ClassNotFoundException e) {
        			// TODO Auto-generated catch block
        			e.printStackTrace();
        		} catch (SQLException e) {
        			// TODO Auto-generated catch block
        			e.printStackTrace();
        		}
            %>
            <p>Selected Movie/Event: <%= selectedMovie %></p>
           	<p>Gold Seat Price: <%= goldprice %></p>
           	<p>Silver Seat Price: <%= silverprice %></p>
           	<p>Location: Bennett University</p>
           	<p>Date and Slots:</p>
            
    </div>
    
    
                <form action="ticketbooking.jsp" method="post">
 	    
 	    			
 	     <input type="hidden" name="selectedMovieId" value="<%=movieId %>">
 	      	     <input type="hidden" name="goldprice" value="<%=goldprice %>">
 	     
 	      	     <input type="hidden" name="silverprice" value="<%=silverprice %>">
 	      	       <input type="hidden" name="moviename" value="<%=selectedMovie %>">
 	      	      
 	      	     
 	      	     
 	     
 	               
  <% 
        try {
            int index = 0; // Added an index variable to make IDs unique
            for (String se : ss) {
            %>
            <label>
            <input type="checkbox" id="slot" name="selectedMoviedate" value="<%=se%>" />
            <%=se %>
            </label>
            <br>
                    
            <% 
            	
                for (String slotss : slots) {
        %>
                    <label>
            <input type="checkbox" id="slot" name="selectedMovieslot" value="<%=slotss%>" />
            <%=slotss %>
            </label>
                   <br>
                   
        <%
                    index++;
                }
        %>
           <br>    
        <% 
       
	}
            }
        catch (Exception e) {
            out.println("An error occurred: " + e.getMessage());
        }
        %>
  <center>
        <input type="submit" value="Confirm Seats">
    </center>

			 
           
        </form>
	
            </div>
        </div>
    </div>
</body>
</html>










 --%>
 
 
 
 
 
 
 
 
 
 
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="Database.alldata" %>
<%@ page import="Database.DateAndTime" %>
<%@ page import ="java.util.ArrayList" %> 
<%@ page import ="java.util.List" %>

<html>
<head>
    <title>Select Seats</title>
    <link rel="stylesheet" type="text/css" href="css/bookShow.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <style>
        /* Custom Styling */
        body {
            background-color: #f8f9fa; /* Light gray background */
            color: rgba(23, 60, 78, 0.9); /* Darker text for better readability */
        }
        .seat-container {
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }
        h2, h3 {
            color: rgba(23, 60, 78, 0.9); /* Bootstrap primary color */
        }
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
        input[type="checkbox"] {
            margin-right: 5px;
        }
        .btn-primary {
            background-color: rgba(23, 60, 78, 0.9);
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
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

<!-- Updated Navbar -->
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
             <div class="wallet-info">
                <span style="color: white; font-weight: bold;">Wallet: ₹ <%= session.getAttribute("walletBalance") == null ? "0" : session.getAttribute("walletBalance") %></span>
                <button class="btn-wallet" onclick="addMoney()">+ Add Money</button>
            </div>

            <!-- Sign-In Button -->
            <button class="btn-auth" onclick="location.href='logout.jsp'">Logout</button>
        </div>
    </div>

<!-- Seat Selection Section -->
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h2 class="text-center mt-3">Select Seats</h2>
            <div class="seat-container">
                <h3>Movie Information:</h3>

                <%
                // Retrieve movie details
                String selectedMovie = request.getParameter("selectedMovie");
                int movieId = Integer.parseInt(request.getParameter("selectedMovieId"));
                int goldprice = Integer.parseInt(request.getParameter("goldprice"));
                int silverprice = Integer.parseInt(request.getParameter("silverprice"));

                List<String> ss = alldata.getinfo(movieId);
                List<String> slots = new ArrayList<>();

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmyshow", "root", "saini_dev79");
                    String query = "SELECT * FROM TBLMOVIES WHERE MovieID=?";
                    PreparedStatement stmt = con.prepareStatement(query);
                    stmt.setInt(1, movieId);
                    ResultSet rset = stmt.executeQuery();

                    while (rset.next()) {
                        String SLOT912 = rset.getString("SLOT912");
                        String SLOT1215 = rset.getString("SLOT1215");
                        String SLOT1518 = rset.getString("SLOT1518");
                        String SLOT1821 = rset.getString("SLOT1821");

                        if (SLOT912 != null) slots.add(SLOT912);
                        if (SLOT1215 != null) slots.add(SLOT1215);
                        if (SLOT1518 != null) slots.add(SLOT1518);
                        if (SLOT1821 != null) slots.add(SLOT1821);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                %>

                <p><strong>Selected Movie/Event:</strong> <%= selectedMovie %></p>
                <p><strong>Gold Seat Price:</strong> ₹<%= goldprice %></p>
                <p><strong>Silver Seat Price:</strong> ₹<%= silverprice %></p>
                <p><strong>Location:</strong> Bennett University</p>
                <p><strong>Date and Slots:</strong></p>
            </div>

            <!-- Seat Selection Form -->
            <form action="ticketbooking.jsp" method="post">
                <input type="hidden" name="selectedMovieId" value="<%= movieId %>">
                <input type="hidden" name="goldprice" value="<%= goldprice %>">
                <input type="hidden" name="silverprice" value="<%= silverprice %>">
                <input type="hidden" name="moviename" value="<%= selectedMovie %>">

                <div class="seat-container">
                    <h3>Select Date & Slot</h3>
                    <%
                    try {
                        int index = 0;
                        for (String se : ss) {
                    %>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="date_<%= index %>" name="selectedMoviedate" value="<%= se %>">
                        <label class="form-check-label" for="date_<%= index %>"><%= se %></label>
                    </div>
                    <%
                            for (String slotss : slots) {
                    %>
                    <div class="form-check ml-3">
                        <input type="checkbox" class="form-check-input" id="slot_<%= index %>" name="selectedMovieslot" value="<%= slotss %>">
                        <label class="form-check-label" for="slot_<%= index %>"><%= slotss %></label>
                    </div>
                    <%
                                index++;
                            }
                        }
                    } catch (Exception e) {
                        out.println("An error occurred: " + e.getMessage());
                    }
                    %>
                </div>

<br>
                <center>
                    <button type="submit" class="btn btn-primary mt-3">Confirm Seats</button>
                </center>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>
 