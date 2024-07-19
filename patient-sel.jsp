<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create/Update Patient</title>
</head>
<body>
	<h1>Patient Update Form</h1>
	<form action="${patient == null ? 'create' : 'update'}" method="post">
		<c:if test="${patient != null}">
			<input type="hidden" name="id" value="${patient.getInt('id')}" />
		</c:if>
       <label> Enter Name:</label><br>
	   <input type="text" name="name"
			value="${patient != null ? patient.getString('name') : ''}" /><br />
       <label> Enter Contact:</label><br>
	   <input type="text" name="contact"
			value="${patient != null ? patient.getString('contact') : ''}" /><br />
       <label> Enter Address:</label><br>
	   <input type="text" name="address"
			value="${patient != null ? patient.getString('address') : ''}" /><br />
       <label> Enter Gender:</label><br>		
	   <input type="text" name="gender"
			value="${patient != null ? patient.getString('gender') : ''}" /><br />	
       <label> Enter Age:</label><br>
	   <input type="number" name="age"
			value="${patient != null ? patient.getInt('age') : ''}" /><br />	
       <label> Enter Allergy:</label><br>
	   <input type="text" name="allergy"
			value="${patient != null ? patient.getString('allergy') : ''}" /><br />
		<input type="submit" value="Submit" />
	</form>
</body>
</html>
