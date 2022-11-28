package rcpit;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Admin
 */
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Admin() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String uname=request.getParameter("email");
		String upass=request.getParameter("password");
		
		 try
			{
		    	
					if (uname.equals("makarand@gmail.com") && upass.equals("a"))
				{
						
					response.sendRedirect("admin1.html");	
					//System.err.println("login successfull ");
					//AddRemainder.setEm(em);
				}
				else
				{
					response.sendRedirect("failed.html");
					//System.out.println("Invalid login");
				}
	            }
	catch(Exception e)
	{
		System.out.println(e);
	}	

		
		
		
		
	}

}
