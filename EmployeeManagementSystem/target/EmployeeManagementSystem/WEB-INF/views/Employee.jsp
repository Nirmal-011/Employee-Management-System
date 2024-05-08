<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%--     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Page</title>
<style type="text/css">
	body{
		background-color= "aqua";	
	}
	
	tg{
		border= "2";
		cellpadding=="5"
	}
</style>
</head>
<body>
	
	<h3 align="center"> 
		<a href="addEmployee">Add Record</a>
	</h3>
	
	<div align ="center">
		<h2 align ="center">Employee List</h2>
		<table class  =tg>
			<tr>
				<th>Employee Name</th>
				<th>Employee Address</th>
				<th>Employee Phone</th>
				<th>Employee Salary</th>
				<th>Action 1</th>
				<th>Action 2</th>
			</tr>
			<c:forEach item="${listEmployee }" var="e">
				<tr>
					<td>${e.eName }</td>
					<td>${e.eAdd }</td>
					<td>${e.ePhn }</td>
					<td>${e.esalary }</td>
					<td> <a href="<c:url value='/edit/${e.id}'/>">Update</a></td>
					<td> <a href="<c:url value='/delete/${e.id}'/>">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		
	</div>
</body>
</html>