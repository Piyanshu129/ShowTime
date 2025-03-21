<%-- <%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>My Profile</title>
    <link rel="stylesheet" type="text/css" href="css/bookShow.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <style>
        /* Add custom styles here if needed */
    </style>
</head>
<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">ShowTime Bookings</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="Homepg.jsp">Home <span class="sr-only">(current)</span></a></li>
                    <li><a href="BookedTicket.jsp">Booked Tickets</a></li>
                    <li><a href="Myprofile.jsp">Profile</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <center><h2 class="text-center">My Profile</h2></center>
                <% 
                String userId = (String) session.getAttribute("userId");
                if (userId != null) {
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        String url = "jdbc:mysql://localhost:3306/bookmyshow";
                        String username = "root";
                        String password = "saini_dev79";
                        Connection connection = DriverManager.getConnection(url, username, password);
                        PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM userregister WHERE USERID = ?");
                        preparedStatement.setString(1, userId);
                        ResultSet resultSet = preparedStatement.executeQuery();
                        if (resultSet.next()) {
                            String userName = resultSet.getString("UNAM");
                            String userEmail = resultSet.getString("UEID");
                            String userMobile = resultSet.getString("UMOB");
                            int userAge = resultSet.getInt("AGE");
                            String userGender = resultSet.getString("GENDER");
                %>
                <div style="margin: 20px;">
                    <strong>Name:</strong> <%= userName %><br>
                    <strong>Email:</strong> <%= userEmail %><br>
                    <strong>Mobile:</strong> <%= userMobile %><br>
                    <strong>Age:</strong> <%= userAge %><br>
                    <strong>Gender:</strong> <%= userGender %><br>
                </div>
                <%
                        } else {
                %>
                <div style="margin: 20px;">
                    <p>No user found with the provided ID.</p>
                </div>
                <%
                        }
                        resultSet.close();
                        preparedStatement.close();
                        connection.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else {
                %>
                <div style="margin: 20px;">
                    <p>No user ID found in the session. Please log in.</p>
                </div>
                <%
                }
                %>
            </div>
        </div>
    </div>
  
 --%>
 
 
 
 
 
 
 
 <%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>My Profile</title>
    <link rel="stylesheet" type="text/css" href="css/bookShow.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>

    <style>
        body {
            background-color: rgba(255, 255, 255, 0.9);
            font-family: Arial, sans-serif;
            padding-top: 80px;
            color: black;
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

        .logo-text {
            font-size: 20px;
            font-weight: bold;
            color: white;
        }

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

        /* Profile Card */
        .profile-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: auto;
            margin-top: 50px;
        }

        .profile-card {
            background: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 400px;
        }

        .profile-card h2 {
            color: #00246B;
        }

        .profile-details {
            text-align: left;
            font-size: 16px;
        }

        .profile-details strong {
            color: #00246B;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="floating-navbar">
        <div class="nav-container">
            <div class="logo-text">ShowTime</div>

            <div class="nav-links">
                <a href="Homepg.jsp">Home</a>
                <a href="BookedTicket.jsp">Booked Tickets</a>
                <a href="Myprofile.jsp">Profile</a>
            </div>

            <button class="btn-auth" onclick="location.href='logout.jsp'">Logout</button>
        </div>
    </div>

    <div class="profile-container">
        <div class="profile-card">
            <h2>My Profile</h2>
            <div class="profile-details">
                <% 
                String userId = (String) session.getAttribute("userId");
                if (userId != null) {
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        String url = "jdbc:mysql://localhost:3306/bookmyshow";
                        String username = "root";
                        String password = "saini_dev79";
                        Connection connection = DriverManager.getConnection(url, username, password);
                        PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM userregister WHERE USERID = ?");
                        preparedStatement.setString(1, userId);
                        ResultSet resultSet = preparedStatement.executeQuery();
                        if (resultSet.next()) {
                            String userName = resultSet.getString("UNAM");
                            String userEmail = resultSet.getString("UEID");
                            String userMobile = resultSet.getString("UMOB");
                            int userAge = resultSet.getInt("AGE");
                            String userGender = resultSet.getString("GENDER");
                %>
                <p><strong>Name:</strong> <%= userName %></p>
                <p><strong>Email:</strong> <%= userEmail %></p>
                <p><strong>Mobile:</strong> <%= userMobile %></p>
                <p><strong>Age:</strong> <%= userAge %></p>
                <p><strong>Gender:</strong> <%= userGender %></p>
                <%
                        } else {
                %>
                <p>No user found with the provided ID.</p>
                <%
                        }
                        resultSet.close();
                        preparedStatement.close();
                        connection.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                %>
                <p>Error retrieving user data.</p>
                <%
                    }
                } else {
                %>
                <p>No user ID found in session. Please log in.</p>
                <%
                }
                %>
            </div>
        </div>
    </div>
</body>
</html>
 