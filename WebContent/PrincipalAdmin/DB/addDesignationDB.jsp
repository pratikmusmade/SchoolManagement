<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
	String designationName = request.getParameter("designationName");
	String status = request.getParameter("designationStatus");


	
	int i = 0;
	try {
		
		Connection con = ConnectionProvider.getConnection();
		String query = "insert into designation(designationName,designationStatus)values(?,?)";
		PreparedStatement pstm = con.prepareStatement(query);
		pstm.setString(1, designationName);
		pstm.setString(2, status);
		i = pstm.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	out.print(i);
	System.out.print(i);
	%>
	
