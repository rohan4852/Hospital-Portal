<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Patient</title>
</head>
<body>
    <h1>Create New Patient</h1>
    <form action="${pageContext.request.contextPath}/patient/create" method="post">
       <label> Enter Name:</label><br>
       <input type="text" name="name" required/><br/>
       <label> Enter Contact:</label><br>
       <input type="number" name="contact" required/><br/>
       <label> Enter Address:</label><br>
        <input type="text" name="address" required/><br/>
        <label> Enter Gender:</label><br>
        <input type="text" name="gender" required/><br/>
        <label> Enter Age:</label><br>
        <input type="number" name="age" required/><br/>
        <label> Enter Allergy:</label><br>
        <input type="text" name="allergy"/><br/>
        <input type="submit" value="Create"/>
    </form>
    <a href="${pageContext.request.contextPath}/patient_data/selectP">Back to Patient List</a>
</body>
</html>
