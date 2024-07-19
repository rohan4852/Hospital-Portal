<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor List</title>
    <link rel = "stylesheet" href="assets/css/Doctor.css">
    <link rel = "stylesheet" href="assets/css/Doctor-list.css">
</head>
<body>
    <form action="${pageContext.request.contextPath}doctor_selectD" method="post"> 
    <h1>Doctors Details</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Contact</th>
            <th>Experience</th>
            <th>Degree</th>
            <th>Speciality</th>
            <th>Fee</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="doctor" items="${doctorList}">
            <tr>
                <td>${doctor.getInt("id")}</td>
                <td>${doctor.getString("name")}</td>
                <td>${doctor.getString("contact")}</td>
                <td>${doctor.getInt("experience")}</td>
                <td>${doctor.getString("degree")}</td>
                <td>${doctor.getString("speciality")}</td>
                <td>${doctor.getDouble("fee")}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/doctor/update?id=${doctor.getInt("id")}">Update</a>
                    <a href="${pageContext.request.contextPath}/doctor/delete?id=${doctor.getInt("id")}" 
                       onclick="return confirm('Are you sure you want to delete this doctor?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="${pageContext.request.contextPath}/doctor/create">Register New Doctor</a>
        </form>
<link rel = "script" href ="assets/js/Doctor.js">
<link rel = "script" href ="assets/js/Doctor-list.js">
</body>
</html>
