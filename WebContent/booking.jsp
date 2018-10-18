<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking</title>
</head>
<body>
<h2> Booking Menu </h2>
<form action = "control" method = "post" style = "display:inline;">
<p><div align = "left">Built-up Area (Sq. ft.) : </div><input type = "text" name = "area" value = "0"></p>
<p><div align = "left">Cost of Construction  : </div><input type = "text" name = "cost" value = "0"></p>
<p><div align = "left">Location : </div><textarea name="location" cols="40" rows="5"></textarea></p>
<input type = "hidden" name ="page" value ="booking">
<input type = "submit" value = "Get Quote">
</form>
<form action="login.jsp" method="post" style = "display:inline;">  
<input type="submit" value="Logout"> 
</form>
</body>
</html>