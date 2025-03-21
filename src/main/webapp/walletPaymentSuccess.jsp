<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*, java.util.*" %>

<html>
<head>
    <title>Payment Successful</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <style>
        body {
            text-align: center;
            padding: 50px;
            background-color: #f4f4f4;
        }
        .container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            display: inline-block;
        }
        h2 {
            color: green;
        }
        .btn {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #1a237e;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
            text-decoration: none;
        }
        .btn:hover {
            background-color: #001A4D;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Payment Successful! 🎉</h2>
        
        <%
            // Get the amount deducted from query parameter
            int deductedAmount = Integer.parseInt(request.getParameter("amount"));
            
            // Retrieve wallet balance from session
            Integer walletBalance = (Integer) session.getAttribute("walletBalance");
            
            if (walletBalance == null) {
                walletBalance = 0; // Default to zero if not set
            }

            // Deduct the amount
            walletBalance -= deductedAmount;

            // Update session with new wallet balance
            session.setAttribute("walletBalance", walletBalance);
        %>

        <p>Amount Deducted: ₹<%= deductedAmount %></p>
        <h3>Remaining Wallet Balance: ₹<%= walletBalance %></h3>

        <a href="Homepg.jsp" class="btn">Go to Home</a>
    </div>
</body>
</html>
