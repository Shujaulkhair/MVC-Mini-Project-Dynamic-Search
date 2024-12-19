<%@ page isELIgnored="false" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm" %>

<!-- Start SEARCHING DATA -->

<h1 style="text-align: center; color:blue;">Search Data Dynamically</h1>

<fm:form action="search" modelAttribute="mod" style="margin: 50px auto; width: 50%; font-family: Arial, sans-serif;">

    <div style="background: linear-gradient(135deg, #ffffff, #d7e9f7); padding: 20px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);">
        <h2 style="text-align: center; color: #333; margin-bottom: 20px;">Search Important Data</h2>

        <table align="center" style="width: 100%; border-spacing: 10px;">
            <tr>
                <td style="text-align: right; font-weight: bold; color: #333;">Name:</td>
                <td><fm:input path="name" style="width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 5px;"/></td>
            </tr>

            <tr>
                <td style="text-align: right; font-weight: bold; color: #333;">Salary:</td>
                <td><fm:input path="sal" style="width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 5px;"/></td>
            </tr>

            <tr>
                <td style="text-align: right; font-weight: bold; color: #333;">Address:</td>
                <td><fm:input path="addr" style="width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 5px;"/></td>
            </tr>

            <tr>
                <td style="text-align: right; font-weight: bold; color: #333;">Designation:</td>
                <td>
                    <fm:select path="designation" style="width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 5px;">
                        <fm:option value="">-- SELECT VALUE --</fm:option>
                        <fm:option value="Manager">Manager</fm:option>
                        <fm:option value="Developer">Developer</fm:option>
                        <fm:option value="Designer">Designer</fm:option>
                        <fm:option value="Merchent Navy">Merchent Navy</fm:option>
                        <fm:option value="Navy">Navy</fm:option>
                        <fm:option value="Teacher">Teacher</fm:option>
                        <fm:option value="UI/UX Designer">UI/UX Designer</fm:option>
                        <fm:option value="Team Leader">Team Leader</fm:option>
                        <fm:option value="Project Manager">Project Manager</fm:option>
                    </fm:select>
                </td>
            </tr>

            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" value="Search Data" title="Click to search for the entered data" style="background: #4CAF50; color: white; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer; font-size: 16px;">
                    <input type="reset" value="Cancel" title="Reset all the fields" style="background: #f44336; color: white; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer; font-size: 16px;">
                </td>
            </tr>
        </table>
    </div>

</fm:form>

<!-- End SEARCHING DATA -->


<!-- Start HOME AND ADD EMPLOYEE -->
<style>
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
    input[type="text"], input[type="number"], select {
      width: 100%;
      padding: 8px;
      border: 1px solid #CCC;
      border-radius: 5px;
      box-sizing: border-box;
    }
    

</style>

<center>
  <div style="display: inline-block; text-align: center; margin: 10px;">
    <a href="./">
      <img src="images/home.png" width="50px" height="50px"><br>
      <h3><span>Home</span></h3>
    </a>
  </div>
  <div style="display: inline-block; text-align: center; margin: 10px;">
    <a href="add_emp">
      <img src="images/addemp.png" width="50px" height="50px"><br>
      <h3><span>Add Emp</span></h3>
    </a>
  </div>
</center>

<!-- Ending HOME AND ADD EMPLOYEE -->



<!-- Start DISPLAY DATA -->
<h2 style="text-align: center;"> ${resultMsg}</h2>

<c:choose>
	<c:when test="${!empty empList}">
		<h1 style="color:green; text-align: center;">Employee Report</h1>
		<table border="1" align="center" style="width: 80%; margin-top: 20px; border-collapse: collapse; box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);">
			<tr style="background-color: #1976D2; color: white;">
				<th>Id</th>
				<th>Name</th>
				<th>Salary</th>
				<th>Address</th>
				<th>Designation</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			
			<c:forEach var="emp" items="${empList}">
				<tr style="background-color: #F9F9F9; text-align: center;">
					<td>${emp.eid}</td>
					<td>${emp.name}</td>
					<td>${emp.sal}</td>
					<td>${emp.addr}</td>
					<td>${emp.designation}</td>
					<td><a href="edit_emp?no=${emp.eid}"> <img src="images/edit.png" width="30px" height="40px"></a></td>
					<td><a href="delete_emp?no=${emp.eid}" onclick="return confirm('Do You Want to Delete?')"> <img src="images/delete.png" width="30px" height="40px"></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:when>
	
	<c:otherwise>
		<h1 style="color:red;">Employee Not Found</h1>
	</c:otherwise>
</c:choose>


<!-- Ending DISPLAY DATA -->

