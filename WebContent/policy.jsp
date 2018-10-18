<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Policies</title>
</head>
<body>
<h2>Policy Quotes</h2>

<p><b>1 year term : </b>Rs. <%=request.getAttribute("policy1")%></p>
<p><b>3 year term : </b>Rs. <%=request.getAttribute("policy2")%></p>
<p><b>5 year term : </b>Rs. <%=request.getAttribute("policy3")%></p>

<form action="login.jsp" method="post" style = "display:inline;">  
<input type="submit" value="Logout"> 
</form>
<form action="booking.jsp" method="post" style = "display:inline;">  
<input type="submit" value="Back"> 
</form>
</body>
</html>