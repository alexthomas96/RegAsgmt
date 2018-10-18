package asgmtPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		RegistrationServices service = null;
		response.setContentType("text/html");
		try 
		{ 
			service = new RegistrationServices();
		}
		catch(Exception e)
		{
			System.out.println("FATAL ERROR : Exiting!");
			System.out.println(e);
			System.exit(0);
		}
		RegistrationBean user = new RegistrationBean(); 
		RequestDispatcher rd = null;
		boolean flag = false;
		String username = null, password = null, email = null;
		long phone = 0L;
		PrintWriter out = response.getWriter();
		
		switch(request.getParameter("page"))
		{
			case "login" : username = request.getParameter("username");
						   password = request.getParameter("password");
						   
						   try 
						   {user = service.getUser(username);}
						   catch(Exception e)
						   {
							   System.out.println("FATAL ERROR : Exiting!");
							   System.out.println(e);
							   System.exit(0);
						   }	   
						   
						   if(user == null || !user.getPassword().equals(password))
						   {
							   if(user == null)
								   out.print("<h4> ERROR : No such user exists!<h4>");
							   else 
								   out.print("<h4> ERROR : Incorrect password!<h4>");
							   rd = request.getRequestDispatcher("login.jsp");
							   rd.include(request, response);
						   }
						   else
						   {
							   request.setAttribute("bean", user);
							   request.setAttribute("username", username);
							   rd = request.getRequestDispatcher("welcome.jsp");
							   rd.forward(request, response);
						   }
						   break;
						  
			case "checkUser" : username = request.getParameter("username");
							   try 
							   {flag = service.checkUsernameExists(username);}
							   catch(Exception e)
							   {
								   System.out.println("FATAL ERROR : Exiting!");
								   System.out.println(e);
								   System.exit(0);
							   }
				
							   if(!flag)
								   request.setAttribute("existUser", "notexists");
							   else
								   request.setAttribute("existUser", "exists");
							   
							   request.setAttribute("username", username);
							   rd = request.getRequestDispatcher("checkUser.jsp");
							   rd.forward(request, response);
							   
							   break;
							  
			case "registration" : username = request.getParameter("username");
								  password = request.getParameter("password");
								  email = request.getParameter("email");
								  phone = Long.parseLong(request.getParameter("phone"));
								  user.setUsername(username);
								  user.setPassword(password);
								  user.setEmail(email);
								  user.setPhone(phone);
								  try 
								  {flag = service.registerUser(user);}
								  catch(Exception e)
								  {
									  System.out.println("FATAL ERROR : Exiting!");
									  System.out.println(e);
									  System.exit(0);
								  }
								 
								  if(flag)
								  {
									  out.print("<h4> SUCCESS : User registered!</h4>");
									  request.setAttribute("bean", user);
								  }
								  else
									  out.print("<h4> ERROR : Unable to create user. Try again later!<h4><br>");
								  try 
								  {
									  TimeUnit.SECONDS.sleep(3);
								  }
								  catch(Exception e)
								  {
									  System.out.println("FATAL ERROR : Exiting!");
									  System.out.println(e);
									  System.exit(0);
 
								  }
								  rd = request.getRequestDispatcher("login.jsp");
								  rd.include(request, response);
								  break;
								  
			case "booking" : double cost = Double.parseDouble(request.getParameter("cost"));
							 double area = Double.parseDouble(request.getParameter("area"));
							 request.setAttribute("policy1", (area * 1) + (cost * 0.01));
							 request.setAttribute("policy2", (area * 3) + (cost * 0.03));
							 request.setAttribute("policy3", (area * 5) + (cost * 0.05));
							 System.out.println(request.getAttribute("location"));
							 rd = request.getRequestDispatcher("policy.jsp");
							 rd.include(request, response);
							 break;
				  
		}
	}
}
