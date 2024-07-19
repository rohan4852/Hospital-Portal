<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Patient List</title>
</head>
<body>
    <h1>Patient List</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Contact</th>
            <th>Address</th>
            <th>Gender</th>
            <th>Age</th>
            <th>Allergy</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="patient" items="${patientList}">
            <tr>
                <td>${patient.id}</td>
                <td>${patient.name}</td>
                <td>${patient.contact}</td>
                <td>${patient.address}</td>
                <td>${patient.gender}</td>
                <td>${patient.age}</td>
                <td>${patient.allergy}</td>
                <td>
                    <a href="update?id=${patient.id}">Update</a>
                    <a href="delete?id=${patient.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
