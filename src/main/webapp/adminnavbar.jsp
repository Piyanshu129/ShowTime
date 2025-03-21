<!DOCTYPE html>
<html lang="en">
<head>
      <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShowTime Bookings</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <style>
        .navbar-custom {
            background-color: #FCFFCA; /* Light grey background color */
        }
        .navbar-custom .navbar-brand {
            color: #000000; /* Blue color for the brand */
        }
        .navbar-custom .nav-link {
            color: #6c757d; /* Dark grey color for the links */
        }
        .navbar-custom .nav-link:hover {
            color: #000000; /* Blue color for the links on hover */
        }
    </style>
</head>
<body>




<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="AdminHomePage.jsp">Hi admin!!</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="AdminHomePage.jsp">Home <span class="sr-only"></span></a>
      <a class="nav-item nav-link" href="adminseemovie.jsp">See Movies</a>
      <a class="nav-item nav-link" href="adminseatsbooked.jsp">Seats booked</a>
      <a class="nav-item nav-link " href="logout.jsp">Logout</a>
    </div>
  </div>
</nav>

</body>
</html>
