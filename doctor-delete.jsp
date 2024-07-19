<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Doctor</title>
    <link rel = "stylesheet" href="assets/css/Doctor.css">
    <link rel = "stylesheet" href="assets/css/Doctor-delete.css">
</head>
<body>
    <h1>Delete Doctor</h1>
    <c:choose>
        <c:when test="${not empty doctor}">
            <p>Are you sure you want to delete the following doctor?</p>
            <p>ID: ${doctor.id}</p>
            <p>Name: ${doctor.name}</p>
            <form action="${pageContext.request.contextPath}/doctor/delete" method="post">
                <input type="hidden" name="id" value="${doctor.id}"/>
                <input type="submit" value="Delete"/>
            </form>
        </c:when>
        <c:otherwise>
            <p>Doctor not found!</p>
        </c:otherwise>
    </c:choose>
    <a href="${pageContext.request.contextPath}/doctor/read">Back to Doctor List</a>
<link rel = "script" href ="assets/js/Doctor.js">
<link rel = "script" href ="assets/js/Doctor-Delete.js">
</body>
</html>
