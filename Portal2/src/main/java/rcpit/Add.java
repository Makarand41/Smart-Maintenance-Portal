package rcpit;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Add
 */
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add() {
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
		String umob=request.getParameter("Mobile");
		
		String upass=request.getParameter("Password");
		String uaddress=request.getParameter("Address");
        String utaluka=request.getParameter("Taluka");
        String udistrict=request.getParameter("District");
        String umail=request.getParameter("Email");
		
		
		try
		{
	    	Connection con=ConnectDB.connect();
		 	PreparedStatement ps2=con.prepareStatement("insert into department values(?,?,?,?,?,?,?)");
		 	
		 	ps2.setString(1,umail);
		 	ps2.setString(2, upass);
		 	ps2.setString(3,uname);
		 	ps2.setString(4,uaddress);
		 	ps2.setString(5,umob);
		 	ps2.setString(6,utaluka);
		 	ps2.setString(7,udistrict);
		 	
		 	
		 	
		 	
		 	
		 	int res=ps2.executeUpdate();
					if (res>0)
					{
						response.sendRedirect("S.html");
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
