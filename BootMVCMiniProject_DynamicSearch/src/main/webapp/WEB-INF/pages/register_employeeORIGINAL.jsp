<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>

<h1>Fill The Employee Form</h1>

<!-- if You are not passing the action tag then it will take tag from which it came. and default method is post. so no need of writing Action and Method. And we will take same url for this also. -->
<fm:form modelAttribute="emp">
	
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