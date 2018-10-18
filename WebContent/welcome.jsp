<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<%@page import="asgmtPackage.RegistrationBean"%>  
<%  
RegistrationBean bean=(RegistrationBean)request.getAttribute("bean");  
out.print("<h2> Welcome "+bean.getUsername() + "</h2>");  
out.print("<p> Current date & time is : "+ java.util.Calendar.getInstance().getTime() + "</p>");
%>

<form action="view.jsp" method="post" style = "display:inline;">  
	<input type="hidden" name ="username" value="<%=bean.getUsername()%>"> 
<input type="submit" value="View User Details"> 
</form>

<form action="booking.jsp" method="post" style = "display:inline;">  
	<input type="submit" value="Go to booking page"> 
</form>

<form action="login.jsp" method="post" style = "display:inline;">  
	<input type="submit" value="Logout"> 
</form>

</body>
</html>