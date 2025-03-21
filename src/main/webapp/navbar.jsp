<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShowTime Bookings</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Floating Navbar with Glassmorphism Effect */
        .navbar-custom {
            position: fixed;
            top: 20px;
            left: 50%;
            transform: translateX(-50%);
            width: 90%;
            background: rgba(255, 255, 255, 0.3); /* Transparent white */
            backdrop-filter: blur(10px); /* Glass effect */
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 10px 20px;
            z-index: 1000;
        }
        .navbar-custom .navbar-brand {
            font-weight: bold;
            color: #000000;
            font-size: 1.5rem;
        }
        .navbar-custom .nav-link {
            color: #333;
            font-weight: 500;
            transition: 0.3s ease;
        }
        .navbar-custom .nav-link:hover {
            color: #ff5722; /* Highlight color */
        }
        .navbar-toggler {
            border: none;
            outline: none;
        }
        /* Ensure body content starts below navbar */
        body {
            padding-top: 80px;
            background-color: #f8f9fa; /* Light background */
        }
    </style>
</head>
<body>

<!-- Floating Navbar -->
<nav class="navbar navbar-expand-lg navbar-light navbar-custom">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"> ShowTime</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" href="Homepg.jsp"> Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Myprofile.jsp"> My Profile</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="BookedTicket.jsp"> Booked Tickets</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="logout.jsp"> Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Bootstrap Script -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
