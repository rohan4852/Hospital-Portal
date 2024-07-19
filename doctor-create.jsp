<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Doctor</title>
    <link rel = "stylesheet" href="assets/css/Doctor.css"> 
    <link rel = "stylesheet" href="assets/css/Doctor-creat.css">
</head>
<body>
    <h1>Register New Doctor</h1>
    <form action="${pageContext.request.contextPath}/doctor/create" method="post"> 
       <label> Enter Id:</label><br>
       <input type = "integer" id = "id" required placeholder = "enterid">
       <label> Enter Name:</label><br>
       <input type="text" name="name" required/><br/>
       <label> Enter Contact:</label><br>
       <input type="number" name="contact" required/><br/>
       <label> Enter Experience:</label><br>
       <input type="number" name="experience" required/><br/>
       <label> Enter Degree:</label><br>
       <input type="text" name="degree" required/><br/>
       <label> Enter Speciality:</label><br>
       <input type="text" name="speciality" required/><br/>
       <label> Enter Fee:</label><br>
       <input type="number" step="0.01" name="fee" required/><br/>
       <input type="submit" value="Register"/>
    </form>
    <a href="${pageContext.request.contextPath}/doctor/selectD">Back to Doctor List</a>
<link rel = "script" href ="assets/js/Doctor.js">
<link rel = "script" href ="assets/js/Doctor-Create.js">
</body>
</html>
