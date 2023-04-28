<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	<%
	
	String s1 = request.getParameter("division");
	String s2 = request.getParameter("status");
	String id = request.getParameter("id");
	System.out.println(s1);
	System.out.println(s2);
	System.out.println(id);
	

	int i = 0;
	try {
		Connection con = ConnectionProvider.getConnection();
		String query = "UPDATE division	SET division = ?,status= ?  WHERE divisionId = ?; ";
		PreparedStatement pstm = con.prepareStatement(query);
		pstm.setString(1, s1);
		pstm.setString(2, s2);
		pstm.setString(3, id);

		i = pstm.executeUpdate();
		System.out.println(i);
		out.println(i);

	} catch (Exception e) {
		e.printStackTrace();
	}

	%>