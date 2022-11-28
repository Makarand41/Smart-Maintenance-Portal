package rcpit;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class URegister
 */
public class URegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public URegister() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	
		String cname=request.getParameter("Name");
		String cmob=request.getParameter("Mobile");
		String cmail=request.getParameter("Email");
		String cpsw=request.getParameter("Password");
		String caddress=request.getParameter("Address");
		
		
		
		try
		{
	    	Connection con=ConnectDB.connect();
		 	PreparedStatement ps2=con.prepareStatement("insert into users values(?,?,?,?,?)");
		 	ps2.setString(1,cname);
		 	ps2.setString(2, cmob);
		 	ps2.setString(3, cmail);
		 	ps2.setString(4, cpsw);
		 	ps2.setString(5, caddress);
		 	int res=ps2.executeUpdate();
					if (res>0)
					{
						
						response.sendRedirect("welcom.html");
						System.err.println("Registered Successfully   ");
					}
					else
					{
						response.sendRedirect("failed.html");
						System.err.println("Registration failed");
					}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}	
		
		
		
		
		
		
		
		
		
		
	}

}
