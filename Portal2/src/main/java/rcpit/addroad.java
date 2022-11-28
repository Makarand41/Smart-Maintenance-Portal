package rcpit;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addroad
 */
public class addroad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addroad() {
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
		
	
		
		
		String rname=request.getParameter("RName");
		String rlocation=request.getParameter("location");
		
		String rdepartment=request.getParameter("Department");
		String rdeadline=request.getParameter("Deadline");
       
        
		
		
		try
		{
	    	Connection con=ConnectDB.connect();
		 	PreparedStatement ps2=con.prepareStatement("insert into road values(?,?,?,?)");
		 	
		 	ps2.setString(1,rname);
		 	ps2.setString(2,rlocation);
		 	ps2.setString(3,rdepartment);
		 	ps2.setString(4,rdeadline);
		 	
		 	
		 	
		 	
		 	
		 	
		 	
		 	int res=ps2.executeUpdate();
					if (res>0)
					{
						response.sendRedirect("welcom.html");
					}
					else
					{
						//System.err.println("Registration failed");
						response.sendRedirect("failed.html");
					}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}	
		
		
		
		
		
		
		
		
	}

}
