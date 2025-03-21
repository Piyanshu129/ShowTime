<%@ include file="navbar.jsp" %> 
<%@ page import="java.sql.*" %>

<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html> <head> <link rel="stylesheet" type="text/css" href="Homepg.css"> 
<style> .movie-container 
{ 
border: 1px solid #ccc;
 padding: 15px;
  margin: 10px; 
  width: 30%;
   /* Set the width of each card */ 
   float: left;
   box-sizing: border-box;
    }
     .movie-container img { 
     max-width: 100%;
height: auto; 
} 
.movie-card label { 
display: block;
 margin-bottom: 5px; 
 } 
@media (max-width: 768px) { 
.movie-container { 
width: 100%;
 /* Set the width to 100% on smaller screens */ } } 
 </style> </head>
  <body> <center><h2></h2></center>
   <form action="selectSeat.jsp" method="post">
    <center> <% try {
    	// Load the JDBC driver 
    	Class.forName("com.mysql.jdbc.Driver"); 
    	// Connect to the database
    	String url = "jdbc:mysql://localhost:3306/bookmyshow"; 
    	String username = "root"; String password = "saini_dev79"; 
    	Connection connection = DriverManager.getConnection(url, username, password); // Create a statement
    	Statement statement = connection.createStatement(); // Get today's date in the format yyyy-MM-dd 
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
    	Date today = new Date(); String todayDate = sdf.format(today); 
    	// Execute SQL query for movie details with date condition
    	String query = "SELECT * FROM TBLMOVIES WHERE ? BETWEEN STARTDATE AND ENDDATE";
    			PreparedStatement preparedStatement = connection.prepareStatement(query); 
    			preparedStatement.setString(1, todayDate); ResultSet resultSet = preparedStatement.executeQuery(); 
    			int count = 0; 
    			// To keep track of the number of cards in a row %> 
    			<% // Iterate through the result set and display data 
    			while (resultSet.next()) {
    				count++; %> <div class="movie-container">
    				 <div class="movie-card"> <h3><%= resultSet.getString("MOVIENAME") %>
    				 </h3> <img class="movie-image" src="image/<%= resultSet.getString("IMAGENAME") %>" 
    				 alt="Movie Image"> 
    				 <p>Stars: <%= resultSet.getString("STARS") %></p> 
    				 <p>Language: <%= resultSet.getString("LANGUAGE") %></p> 
    				 <input type="radio" name="selectedMovie" value="<%= resultSet.getString("MOVIENAME") %>"> <%= resultSet.getString("MOVIENAME") %>
    				  <p>Available Slots:</p> <% if (resultSet.getString("SLOT912") != null) {
    					  %> <label><input type="radio" name="selectedSlot" value="9-12"> Slot 9-12</label><br> <% } 
    					  %> <% if (resultSet.getString("SLOT1215") != null) {
    						  %> <label><input type="radio" name="selectedSlot" value="12-15"> Slot 12-15</label><br> <% }
    					  %> <% if (resultSet.getString("SLOT1518") != null) { %>
    					   <label><input type="radio" name="selectedSlot" value="15-18"> Slot 15-18</label><br> <% } %> 
    					   <% if (resultSet.getString("SLOT1821") != null) { %> 
    					   <label><input type="radio" name="selectedSlot" value="18-21"> Slot 18-21</label><br> <% } %> 
    					   <h6><input type=checkbox name="selectedMovieId" value="<%= resultSet.getInt("MovieID") %>">I accept to term and condition</h6> <input type="submit" value="Select seat"> 
    					   <input type="hidden" name="goldprice" value="<%= resultSet.getInt("GOLDPRICE") %>"> 
    					   <input type="hidden" name="silverprice" value="<%= resultSet.getInt("SILVERPRICE") %>">
    					    </div> </div> <% // If three cards are displayed in a row, close the row and reset the count 
    					    if (count % 3 == 0) { %> <div style="clear:both;"></div> <% } } 
    			// Close resources 
    			resultSet.close(); 
    			preparedStatement.close(); 
    			statement.close(); connection.close(); }
    catch (Exception e) { e.printStackTrace(); } %> </center> </form> <script>
    function updateSelectedSlot() { var selectedSlot = document.querySelector('input[name="selectedSlot"]:checked'); 
    if (selectedSlot) { document.querySelector('input[name="selectedSlot"]').value = selectedSlot.value; } }
    </script> </body> 
    </html>
