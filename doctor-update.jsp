<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Doctor's Details</title>
    <link rel = "stylesheet" href = "assets/css/Doctor-update.css">
</head>
<body>
    <form action="${pageContext.request.contextPath}/doctor/update" method="post">
    <h1>Update Doctor's Info</h1>
       <input type="hidden" name="id" value="${doctor.getInt('id')}"/>
       <label> Enter Name:</label><br>
       <input type="text" name="name" value="${doctor.getString('name')}" required/><br/>
       <label> Enter Contact:</label><br>
       <input type="text" name="contact" value="${doctor.getString('contact')}" required/><br/> 
       <label> Enter Experience:</label><br>
       <input type="number" name="experience" value="${doctor.getInt('experience')}" required/>(In Years)<br/>
       <label> Enter Degree:</label><br>
       <input type="text" name="degree" value="${doctor.getString('degree')}" required/><br/>
       <label> Enter Speciality:</label><br>
       <input type="text" name="speciality" value="${doctor.getString('speciality')}" required/><br/>
       <label> Enter Fee:</label><br>
       <input type="number" step="0.01" name="fee" value="${doctor.getDouble('fee')}" required/>(In Rs.)<br/>
        <input type="submit" value="Update"/> 
    <a href="${pageContext.request.contextPath}/doctor/selectD">Back to Doctor List</a>
    </form>
</body>
</html>
