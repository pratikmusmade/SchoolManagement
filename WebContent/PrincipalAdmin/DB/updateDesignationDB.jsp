<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>

	<%
	String designationName = request.getParameter("designationName");
		String designationStatus = request.getParameter("designationStatus");
		String designationId = request.getParameter("designationId");
		System.out.print(designationId + "\n");
		System.out.print(designationStatus + "\n");
		System.out.print(designationName + "\n");

		int i = 0;
		try {
			Connection con = ConnectionProvider.getConnection();
			String query = "UPDATE designation SET designationName = ?,designationStatus = ? WHERE designationId = ?; ";
			PreparedStatement pstm = con.prepareStatement(query);
			pstm.setString(1, designationName);
			pstm.setString(2, designationStatus);
			pstm.setString(3, designationId);

			i = pstm.executeUpdate();
			out.print(i);

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>