<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>

<h1 style="text-align: center; color: white; background-color:black">Update Employee</h1>

<fm:form modelAttribute="mod">

	<table align="center" bgcolor="pink">
	
		<tr>
			<td>Id</td>
			<td><fm:input path="eid" readonly="true"/></td>
		</tr>
		
		<tr>
			<td>Name</td>
			<td><fm:input path="name" /></td>
		</tr>
		
		<tr>
			<td>Salary</td>
			<td><fm:input path="sal" /></td>
		</tr>
		
		<tr>
			<td>Address</td>
			<td><fm:input path="addr" /></td>
		</tr>
		
		<tr>
			<td>Designation</td>
			<td><fm:input path="designation" /></td>
		</tr>
		
		<tr>
			<td><input type="submit" value="Update Employee"></td>
			<td><input type="reset" value="Cancel"></td>
		</tr>
	</table>

</fm:form>

<a href="./"><img src="images/home.png" height="100px" width="100px"></a>