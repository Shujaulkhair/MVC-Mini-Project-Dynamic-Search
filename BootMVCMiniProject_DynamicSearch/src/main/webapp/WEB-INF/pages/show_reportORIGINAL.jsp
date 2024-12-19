<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm" %>


<%-- <center> --%>
<!-- 	<h3><a href="./"><img src="images/home.png" width="100px" height="100px">Home</a></h3> -->
<!-- 	<h3><a href="add_emp"><img src="images/addemp.png" width="100px" height="100px">Add New Employee</a></h3> -->
<%-- </center> --%>


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
/*       border: 3px solid #0288D1; /* Light blue border */  */
      border-radius: 10px; /* Rounded corners for the image */
      transition: transform 0.2s ease; /* Smooth hover effect */
    }
    img:hover {
      transform: scale(1.1); /* Slight zoom on hover */
      border-color: #FF5722; /* Orange border on hover */
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

<h1 style="text-align: center; color:blue;">Search Data Dynamically</h1>

<fm:form >
	
	<table>
		<tr>
			<td>Name</td>
			<td><fm:input path="name"/></td>
		</tr>
		
		<tr>
			<td>Salary</td>
			<td><fm:input path="sal"/></td>
		</tr>
		
		<tr>
			<td>Address</td>
			<td><fm:input path="addr"/></td>
		</tr>
		
		<tr>
			<td>Designation</td>
			<td><fm:input path="designation"/></td>
		</tr>
		
		<tr>
			<td>
				<input type="submit" value="Register">
				<input type="reset" value="Cancel">
			</td>
		</tr>
	</table>

</fm:form>


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




