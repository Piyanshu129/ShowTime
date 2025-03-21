<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>ShowTime Bookings</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/bookShow.css"/>
    <style>
        /* Add any additional CSS styles specific to selectSeat.jsp */
        table {
            width: 100%; /* Make the table fill the entire width of its container */
            border-collapse: collapse; /* Collapse the table borders */
            margin-top: 20px; /* Add margin at the top of the table */
        }

        th, td {
            padding: 8px; /* Add padding to table cells for spacing */
            text-align: left; /* Set text alignment to left within cells */
            border: 1px solid #ddd; /* Add border to table cells */
        }

        th {
            /* Set background color for table header cells */
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

<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmyshow", "root", "saini_dev79");

        Statement stmt = con.createStatement();
        String query = "SELECT * FROM TBLMOVIES";
        ResultSet resultSet = stmt.executeQuery(query);
        
       
%>

    <center><h2>Movies List</h2></center>
    <table>
        <tr>
            <th>Movie ID</th>
            <th>Movie Name</th>
            <th>Stars</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Slot 9-12</th>
            <th>Slot 12-15</th>
            <th>Slot 15-18</th>
            <th>Slot 18-21</th>
            <th>Gold Price</th>
            <th>Silver Price</th>
            <th>Image Name</th>
            <th>Language</th>
        </tr>

<%
        while (resultSet.next()) {
%>
            <tr>
                <td><%= resultSet.getInt("MOVIEID") %></td>
                <td><%= resultSet.getString("MOVIENAME") %></td>
                <td><%= resultSet.getString("STARS") %></td>
                <td><%= resultSet.getDate("STARTDATE") %></td>
                <td><%= resultSet.getDate("ENDDATE") %></td>
                <td><%= resultSet.getString("SLOT912") %></td>
                <td><%= resultSet.getString("SLOT1215") %></td>
                <td><%= resultSet.getString("SLOT1518") %></td>
                <td><%= resultSet.getString("SLOT1821") %></td>
                <td><%= resultSet.getInt("GOLDPRICE") %></td>
                <td><%= resultSet.getInt("SILVERPRICE") %></td>
                <td><%= resultSet.getString("IMAGENAME") %></td>
                <td><%= resultSet.getString("LANGUAGE") %></td>
            </tr>
<%
        }
%>
    </table>

<%
        // Close resources
        resultSet.close();
        stmt.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

</body>
</html>
