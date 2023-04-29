<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>

	<%
	String s1 = request.getParameter("sectionName");
	String s2 = request.getParameter("status");
	String id = request.getParameter("id");
	out.print(s1 + "\n");
	out.print(s2 + "\n");
	out.print(id + "\n");

	int i = 0;
	try {
		out.print(s1);
		Connection con = ConnectionProvider.getConnection();
		String query = "UPDATE section SET sectionName = ?,status = ? WHERE sectionId = ?; ";
		PreparedStatement pstm = con.prepareStatement(query);
		pstm.setString(1, s1);
		pstm.setString(2, s2);
		pstm.setString(3, id);

		i = pstm.executeUpdate();
		out.print(" \n" + i);

	} catch (Exception e) {
		e.printStackTrace();
	}

	>