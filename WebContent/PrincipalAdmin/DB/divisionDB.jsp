<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


	<%
	String s1 = request.getParameter("sectionId");
	String s2 = request.getParameter("classId");
	String s3 = request.getParameter("divisionName");
	String s4 = request.getParameter("status");

	int done = 0;
	try {
		//out.print(s1);
		Connection con = ConnectionProvider.getConnection();
		String query = "insert into division(division,sectionId,classId,status) values(?,?,?,?)";
		PreparedStatement pstm = con.prepareStatement(query);
		pstm.setString(1, s3);
		pstm.setString(2, s1);
		pstm.setString(3, s2);
		pstm.setString(4, s4);
		done = pstm.executeUpdate();
		//out.print(" \n" + i);
		out.print(done);


	} catch (Exception e) {
		e.printStackTrace();
	}
	%>