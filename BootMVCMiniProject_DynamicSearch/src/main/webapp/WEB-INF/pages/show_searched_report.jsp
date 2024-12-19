<%@ page isELIgnored="false" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm" %>

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


 

 
<!-- <!-- Container for Home and Show Data Links --> 
<!-- <div class="links-container" style="text-align: center; margin-top: 10px; margin-left: 10px;"> -->
<!--     <a href="./" style="margin: 0 20px; text-decoration: none; color: #333;"> -->
<!--         <img src="images/home.png" alt="Home" style="width: 100px; height: 100px; display: block; margin: 0 auto;"> -->
<!--         <b>Home</b> -->
<!--     </a> -->
<!--     <a href="report" style="margin: 0 20px; text-decoration: none; color: #333;"> -->
<!--         <img src="images/data1.png" alt="Show Data" style="width: 100px; height: 100px; display: block; margin: 0 auto;"> -->
<!--         <b>Show Data</b> -->
<!--     </a> -->
<!-- </div> -->