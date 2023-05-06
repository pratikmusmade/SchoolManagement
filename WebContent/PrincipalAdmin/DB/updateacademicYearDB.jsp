<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	<%
	String academicYear = request.getParameter("academicYear");
	String nextAcademicYearDate = request.getParameter("nextAcademicYearDate");
	String id = request.getParameter("id");


	int i = 0;
	try {
		Connection con = ConnectionProvider.getConnection();
		String query = "UPDATE academicyear	SET academicYear = ?, nextAcademicYearDate = ?  WHERE academicYearId = ?; ";
		PreparedStatement pstm = con.prepareStatement(query);
		pstm.setString(1, academicYear);
		pstm.setString(3, nextAcademicYearDate);
		pstm.setString(4, id);

		i = pstm.executeUpdate();
		System.out.println(i);
		out.println(i);

	} catch (Exception e) {
		e.printStackTrace();
	}

	%>