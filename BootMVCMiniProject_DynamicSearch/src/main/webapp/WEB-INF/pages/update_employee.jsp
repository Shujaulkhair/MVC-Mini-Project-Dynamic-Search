<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update Employee</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f6f9; /* Light gray background for a clean look */
      color: #333;
      margin: 0;
      padding: 0;
    }
    .header {
      background-color: #00897B; /* Dark teal color */
      color: white;
      padding: 15px 20px;
      text-align: center;
      font-size: 24px;
      font-weight: bold;
    }
    .home-link {
      text-align: left;
      padding: 10px 20px;
      background-color: #0288D1; /* Light blue for home button */
    }
    .home-link a {
      color: white;
      text-decoration: none;
      font-size: 18px;
      display: flex;
      align-items: center;
    }
    .home-link img {
      width: 25px;
      height: 25px;
      margin-right: 10px;
    }
    .form-container {
      background-color: white;
      padding: 30px;
      border-radius: 10px;
      width: 100%;
      max-width: 600px;
      margin: 20px auto;
      box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
    }
    table {
      width: 100%;
      border-collapse: collapse;
    }
    td {
      padding: 12px;
      font-size: 16px;
      text-align: left;
    }
    td input[type="text"], td input[type="number"], td select {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
    }
    td input[type="submit"], td input[type="reset"] {
      width: 48%;
      padding: 12px;
      font-size: 16px;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 20px;
    }
    td input[type="submit"] {
      background-color: #0288D1; /* Blue color for Submit button */
      color: white;
      border: none;
    }
    td input[type="submit"]:hover {
      background-color: #0277BD;
    }
    td input[type="reset"] {
      background-color: #FF5722; /* Orange color for Reset button */
      color: white;
      border: none;
    }
    td input[type="reset"]:hover {
      background-color: #E64A19;
    }
  </style>
</head>
<body>

  <!-- Home Page Link at the top -->
  <div class="home-link">
    <a href="./">
      <img src="images/home.png" alt="Home">
      Home
    </a>
  </div>

  <!-- Header Section -->
  <div class="header">
    Edit Employee Details
  </div>

  <!-- Update Employee Form -->
  <div class="form-container">
    <fm:form modelAttribute="mod">
      <table>
        <tr>
          <td><label for="eid">Id</label></td>
          <td><fm:input path="eid" id="eid" readonly="true" /></td>
        </tr>
        
        <tr>
          <td><label for="name">Name</label></td>
          <td><fm:input path="name" id="name" /></td>
        </tr>
        
        <tr>
          <td><label for="sal">Salary</label></td>
          <td><fm:input path="sal" id="sal" /></td>
        </tr>
        
        <tr>
          <td><label for="addr">Address</label></td>
          <td><fm:input path="addr" id="addr" /></td>
        </tr>
        
        <tr>
          <td><label for="designation">Designation</label></td>
          <td><fm:input path="designation" id="designation" /></td>
        </tr>
        
        <tr>
          <td colspan="2" style="text-align: center;">
            <input type="submit" value="Update Employee">
            <input type="reset" value="Cancel">
          </td>
        </tr>
      </table>
    </fm:form>
  </div>

</body>
</html>
