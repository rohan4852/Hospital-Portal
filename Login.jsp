<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel = "stylesheet" href = "assets/css/login-css.css">
</head>
<body>
     <form action="login">
<h1>Login Form</h1> <hr>
<label > Enter Username:</label><br>
<input type ="text"  name ="username" placeholder ="enterusername" required="required">
<br>
<label for = "inputpassword"> Enter Password:</label><br>
<input type = "password" name = "password" placeholder ="enterpassword" required="required"> <br>
<label for = "inputrole"> Enter Role:</label><br>
<input type = "text" name = "role" placeholder ="enterrole" required="required">
<br>
<input type="checkbox" class="form-check-input" id="exampleCheck1" required="required">
    <label class="form-check-label" for="exampleCheck1">Remember Me</label> <br>
<button type="submit">Login</button>
</form>
<link rel = "script" href = "assets/js/login.js">
</body>
</html>