<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details</title>
</head>
<body>
<%@page import="asgmtPackage.*"%>  

<h2>User <%=request.getParameter("username") + "'s " %>Details</h2>

<%  
String username = request.getParameter("username");
RegistrationBean user = new RegistrationBean();
RegistrationServices service = new RegistrationServices();
user = service.getUser(username);
out.print("<p> <i>Username </i>: "+user.getUsername() + "</p>");  
out.print("<p> <i>Password </i>: "+user.getPassword() + "</p>");  
out.print("<p> <i>Email </i>: "+user.getEmail() + "</p>");  
out.print("<p> <i>Phone </i>: "+user.getPhone() + "</p>");  
%>
<form action="login.jsp" method="post" style = "display:inline;">  
<input type="submit" value="Logout"> 
</form>
<form action="control" method="post" style = "display:inline;">  
<input type="hidden" name ="username" value="<%=user.getUsername()%>"> 
<input type="hidden" name ="password" value="<%=user.getPassword()%>"> 
<input type="hidden" name ="page" value="login"> 
<input type="submit" value="Back"> 
</form>

</body>

</html>