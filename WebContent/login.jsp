<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

<h2> Login Menu </h2>

<form action="control" method="post">  
<p>Username : <input type="text" name="username"></p> 
<p>Password :   <input type="password" name="password"></p> 
<input type="hidden" name ="page" value="login"> 
<input type="submit" value="Login">  
</form>

<br><br>
<form action="checkUser.jsp" method="post">
<input type="hidden" name ="exists" value="first"> 
<blink>New here? </blink> <input type="submit" value="Register New User">  
</form> 

</body>
</html>