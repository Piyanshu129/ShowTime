<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<html>
<head>
    <title>Payment Successful</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">ShowTime Bookings</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="Homepg.jsp">Home</a></li>
            <li><a href="BookedTicket.jsp">Booked Tickets</a></li>
            <li><a href="Myprofile.jsp">Profile</a></li>
            <li><a href="logout.jsp">Logout</a></li>
        </ul>
    </div>
</nav>

<div class="container">
    <h2 class="text-center text-success">Payment Successful!</h2>
    
    <%
        String paymentId = request.getParameter("payment_id");
        String amountPaid = request.getParameter("amount");
        String uid = (String) session.getAttribute("userId");

        if (paymentId != null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmyshow", "root", "saini_dev79");

                // Store Payment Details in Database
                String query = "INSERT INTO PAYMENTS (USER_ID, PAYMENT_ID, AMOUNT, STATUS) VALUES (?, ?, ?, ?)";
                PreparedStatement stmt = con.prepareStatement(query);
                stmt.setString(1, uid);
                stmt.setString(2, paymentId);
                stmt.setString(3, amountPaid);
                stmt.setString(4, "SUCCESS");
                stmt.executeUpdate();
                con.close();
            } catch (Exception e) {
                out.println("<p>Error: " + e.getMessage() + "</p>");
            }
    %>
        <p>Your Payment ID: <b><%= paymentId %></b></p>
        <p>Amount Paid: ₹<b><%= amountPaid %></b></p>
        <a href="Homepg.jsp" class="btn btn-success">Go to Home</a>
    <% } else { %>
        <h2 class="text-center text-danger">Payment Failed</h2>
        <a href="bookShow.jsp" class="btn btn-warning">Try Again</a>
    <% } %>
</div>

</body>
</html>
 --%>
 
 
 
 
 
 
 
 
 
 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<html>
<head>
    <title>Payment Successful</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <style>
        body {
            background-color: rgba(255,255,255,0.8);
            color: #00246B;
            font-family: Arial, sans-serif;
            padding-top: 70px;
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
        .logo-text {
            font-size: 20px;
            font-weight: bold;
            color: white;
        }
        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 14px;
            margin-right: 15px;
        }
        .btn-auth {
            background-color: #a8d5a2;
            border: none;
            border-radius: 15px;
            padding: 6px 12px;
            font-weight: bold;
            cursor: pointer;
        }
        .container {
            text-align: center;
            margin-top: 100px;
        }
    </style>
</head>
<body>
    <div class="floating-navbar">
        <div class="nav-container">
            <div class="logo-text">ShowTime</div>
            <div class="nav-links">
                <a href="Homepg.jsp">Home</a>
                <a href="BookedTicket.jsp">Booked Tickets</a>
                <a href="Myprofile.jsp">Profile</a>
            </div>
            <button class="btn-auth" onclick="location.href='http://localhost:8080/ShowTime/loginpage.jsp'">Logout</button>
        </div>
    </div>

    <div class="container">
        <h2 class="text-success">Payment Successful!</h2>
        <%
            String paymentId = request.getParameter("payment_id");
            String amountPaid = request.getParameter("amount");
            String uid = (String) session.getAttribute("userId");
            if (paymentId != null) {
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmyshow", "root", "saini_dev79");
                    String query = "INSERT INTO PAYMENTS (USER_ID, PAYMENT_ID, AMOUNT, STATUS) VALUES (?, ?, ?, ?)";
                    PreparedStatement stmt = con.prepareStatement(query);
                    stmt.setString(1, uid);
                    stmt.setString(2, paymentId);
                    stmt.setString(3, amountPaid);
                    stmt.setString(4, "SUCCESS");
                    stmt.executeUpdate();
                    con.close();
                } catch (Exception e) {
                    out.println("<p>Error: " + e.getMessage() + "</p>");
                }
        %>
        <p>Your Payment ID: <b><%= paymentId %></b></p>
        <p>Amount Paid: ₹<b><%= amountPaid %></b></p>
        <a href="Homepg.jsp" class="btn btn-success">Go to Home</a>
        <% } else { %>
        <h2 class="text-danger">Payment Failed</h2>
        <a href="bookShow.jsp" class="btn btn-warning">Try Again</a>
        <% } %>
    </div>
</body>
</html>
 