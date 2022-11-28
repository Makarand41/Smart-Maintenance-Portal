<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    
<%@page import="java.sql.*" %>
<%@page import="rcpit.*" %>  
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	//int id = Integer.parseInt(request.getParameter("id"));
         String id = request.getParameter("id");
	try
	{
		Connection con=ConnectDB.connect();
		PreparedStatement ps=con.prepareStatement("update complaint set status=? where Name=?");
		
		ps.setString(1,"approve");
		//ps.setInt(2,id);
		ps.setString(2,id);
		int rs = ps.executeUpdate();
		
		if(rs > 0)
		{
			response.sendRedirect("S.html");
		}
		else
		{
			response.sendRedirect("failed.html");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

%>



</body>
</html>
    