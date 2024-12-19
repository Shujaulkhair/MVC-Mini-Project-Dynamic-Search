<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Employee Registration</title>
  <style>
    body {
      font-family: inherit;
      
      background-color: #F4F4F9; /* Light grey background */
      color: #333; /* Standard text color */
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh; /* Full page height */
      flex-direction: column; /* Stack elements vertically */
    }
    .links-container {
      display: flex;
      justify-content: center; /* Center the links horizontally */
      margin-bottom: 20px; /* Add some space below the links */
    }
    .links-container a {
      text-decoration: none;
      margin: 0 15px; /* Add space between the links */
      font-size: 18px;
      color: #1976D2; /* Blue link */
      display: flex;
      align-items: center;
    }
    .links-container img {
      width: 70px; /* Image size */
      height: 70px;
      vertical-align: middle;
      margin-right: 10px;
    }
    .form-container {
      background-color: white; /* White form background */
      padding: 30px;
      border-radius: 10px; /* Rounded corners */
      box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); /* Shadow for depth */
      width: 400px; /* Fixed form width */
    }
    .form-container h1 {
      text-align: center;
      color: #1976D2; /* Blue header text */
      margin-bottom: 20px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
    }
    td {
      padding: 10px 5px;
      font-size: 16px;
    }
    input[type="text"], input[type="number"], select {
      width: 100%;
      padding: 8px;
      border: 1px solid #CCC;
      border-radius: 5px;
      box-sizing: border-box;
    }
    input[type="submit"], input[type="reset"] {
      width: 45%;
      padding: 10px;
      border: none;
      border-radius: 5px;
      color: white;
      font-size: 16px;
      cursor: pointer;
      margin: 5px 5px 0 0;
      box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
    }
    input[type="submit"] {
      background-color: #0288D1; /* Blue for Submit */
    }
    input[type="submit"]:hover {
      background-color: #0277BD; /* Darker blue on hover */
    }
    input[type="reset"] {
      background-color: #FF5722; /* Orange for Reset */
    }
    input[type="reset"]:hover {
      background-color: #E64A19; /* Darker orange on hover */
    }
     .logo-container {
    display: inline-block;
    text-align: center; /* Center align text under the image */
    margin: 10px; /* Add spacing between logos */
  }
  .logo-container img {
    display: block;
    margin: 0 auto; /* Center the image horizontally */
  }
  
    a{
      text-decoration: none;
      color: #1976D2; /* Blue for links */
      font-size: 20px;
    }
    a:hover {
      color: #FF5722; /* Orange on hover */
    }
    img {
      margin-top: 10px;
      border-radius: 10px; /* Rounded corners for the image */
      transition: transform 0.2s ease; /* Smooth hover effect */
    }
    img:hover {
      transform: scale(1.1); /* Slight zoom on hover */
      border-color: #FF5722; /* Orange border on hover */
    }
  
  </style>
</head>
<body>

  <!-- Container for Home and Show Data Links -->
  <div class="links-container">
    <a href="./">
      <img src="images/home.png" alt="Image Not Found">
      <b></b>
    </a>
    <a href="report">
      <img src="images/data1.png" alt="Image Not Found">
      <b></b>
    </a>
  </div>

  <div class="form-container">
    <h1>Employee Registration</h1>
    <fm:form modelAttribute="emp">
      <table>
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
			<td>Designation</td>
			<td><fm:select path="designation">
					<fm:option value="">--SELECT VALUE--</fm:option>
					<fm:option value="Manager">Manager</fm:option>
					<fm:option value="Developer">Developer</fm:option>
					<fm:option value="Designer">Designer</fm:option>
					<fm:option value="Merchent Navy">Merchent Navy</fm:option>
					<fm:option value="Navy">Navy</fm:option>
					<fm:option value="TEACHER">Teacher</fm:option>
					<fm:option value="UI/UX Designer">UI/UX Designer</fm:option>
					<fm:option value="Team Leader">Team Leader</fm:option>
					<fm:option value="Project Manager">Project Manager</fm:option>
				</fm:select>
			</td>
		</tr>
        <tr>
          <td colspan="2" style="text-align: center;">
            <input type="submit" value="Register">
            <input type="reset" value="Cancel">
          </td>
        </tr>
      </table>
    </fm:form>
  </div>

</body>
</html>
