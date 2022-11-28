package rcpit;


import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB
{
	static Connection con= null;

	public static Connection  connect()
	{		
		try 
		{
			if (con==null)
			{
				Class.forName("com.mysql.jdbc.Driver");
			//	System.out.println("Driver loaded");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/portal","root","");
			//	System.out.println("Connection established");
			}
		}
		catch(Exception e)
		{
		e.printStackTrace();
			//System.out.println(e);
		}
		return con;
	}
}