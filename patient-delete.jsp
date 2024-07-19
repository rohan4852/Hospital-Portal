<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Patient</title>
</head>
<body>
    <h1>Delete Patient</h1>
    <c:choose>
        <c:when test="${not empty patient}">
            <p>Are you sure you want to delete the following patient?</p>
            <p>Name: ${patient.name}</p>
            <p>Name: ${patient.contact}</p>
            <form action="${pageContext.request.contextPath}/patient/delete" method="post">
                <input type="hidden" name="id" value="${patient.name}"/>
                <input type="submit" value="Delete"/>
            </form>
        </c:when>
        <c:otherwise>
            <p>Patient not found!</p>
        </c:otherwise>
    </c:choose>
    <a href="${pageContext.request.contextPath}/patient_data/selectP">Back to Patient List</a>
</body>
</html>
