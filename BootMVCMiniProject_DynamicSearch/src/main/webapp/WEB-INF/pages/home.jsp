<%-- <%@ page isELIgnored="false" %> --%>

<!-- <h1>Employee HOME PAGE</h1> -->
<!-- <h1> <a href="report">Get Employee Data</a></h1> -->

<!-- <h1><a href="report"><img src="images/data.png" width="100px" height="100px" alt="image no found"></a></h1> -->.




<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Employee Home Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #F4F4F9; /* Light grey background */
      color: #333; /* Standard text color */
      text-align: center; /* Center align the content */
    }
    h1 {
      color: #1976D2; /* Dark blue text color */
      margin: 20px;
    }
    a {
      text-decoration: none;
      color: #1976D2; /* Blue for links */
      font-size: 20px;
    }
    a:hover {
      color: #FF5722; /* Orange on hover */
    }
    img {
      margin-top: 10px;
/*       border: 3px solid #0288D1; /* Light blue border */ */
      border-radius: 10px; /* Rounded corners for the image */
      transition: transform 0.2s ease; /* Smooth hover effect */
    }
    img:hover {
      transform: scale(1.1); /* Slight zoom on hover */
      border-color: #FF5722; /* Orange border on hover */
    }
    .container {
      margin-top: 50px;
      padding: 20px;
      background-color: white; /* White box */
      width: 50%;
      margin: auto;
      box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); /* Shadow effect */
      border-radius: 10px;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Employee Home Page</h1>
    <h1><a href="report">Get Employee Data</a></h1>
    <a href="report">
      <img src="images/data1.png" width="100px" height="100px" alt="Image not found">
    </a>
  </div>
</body>
</html>
