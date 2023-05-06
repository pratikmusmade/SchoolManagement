
<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	<%
	String sectionName = request.getParameter("sectionName");
	String status = request.getParameter("status");


	
	int i = 0;
	try {
	
		Connection con = ConnectionProvider.getConnection();
		String query = "insert into section(sectionName,status)values(?,?)";
		PreparedStatement pstm = con.prepareStatement(query);
		pstm.setString(1, sectionName);
		pstm.setString(2, status);
		i = pstm.executeUpdate();
		out.print(i);
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	%>
