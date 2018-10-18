
<%@page import="asgmtPackage.*"%> 
<form action="control" method="post" style = "display:inline;">  
<p>Password : <input type="password" name="password"></p>  
<p>Email : <input type="text" name="email"></p>
<p>Phone : <input type="text" name="phone"></p>
<input type="hidden" name ="username" value = <%=request.getAttribute("username")%>>   
<input type="hidden" name ="page" value="registration">  
<input type="submit" value="Register">  
</form>

<form action="login.jsp" method="post" style = "display:inline;">  
<input type="submit" value="Back"> 
</form>
