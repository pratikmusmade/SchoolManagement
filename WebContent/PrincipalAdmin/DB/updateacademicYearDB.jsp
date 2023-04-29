<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	<%
	String s1 = request.getParameter("academicYear");
	String s2 = request.getParameter("startmonthNumber");
	String s3 = request.getParameter("nextAcademicYearDate");
	String id = request.getParameter("id");


	int i = 0;
	try {
		Connection con = ConnectionProvider.getConnection();
		String query = "UPDATE academicyear	SET academicYear = ?,startmonthNumber = ?, nextAcademicYearDate = ?  WHERE academicYearId = ?; ";
		PreparedStatement pstm = con.prepareStatement(query);
		pstm.setString(1, s1);
		pstm.setString(2, s2);
		pstm.setString(3, s3);
		pstm.setString(4, id);

		i = pstm.executeUpdate();
		System.out.println(i);
		out.println(i);

	} catch (Exception e) {
		e.printStackTrace();
	}

	%>