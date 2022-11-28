package rcpit;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Delete
 */
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete() {
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
		
		
		String uname=request.getParameter("Name");
		String upass=request.getParameter("Password");
		
		try
		{
			Connection conn=ConnectDB.connect();
		    String query =( "delete from department where name = ? and  password=?");
		    PreparedStatement ps4 = conn.prepareStatement(query);
		    ps4.setString(1,uname);	
		    ps4.setString(2,upass);
		    int res=ps4.executeUpdate();
			if (res>0)
			{
				response.sendRedirect("S.html");
				//System.err.println("Successfully Deleted Account  ");
			}
			else
			{
				response.sendRedirect("failed.html");
				//System.err.println("failed to delete account ");
			}
	}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
		
		
		
		
		
		
		
		
		
	}

}
