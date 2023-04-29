
<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
String s1 = request.getParameter("sectionId");
String s2 = request.getParameter("className");
String s3 = request.getParameter("status");

int done = 0;
try {
	
	
	Connection con = ConnectionProvider.getConnection();
	String query = "insert into studClass(className,sectionId,status) values(?,?,?)";
	PreparedStatement pstm = con.prepareStatement(query);
	pstm.setString(1, s2);
	pstm.setString(2, s1);
	pstm.setString(3, s3);
	done = pstm.executeUpdate();
	out.print(done);
	System.out.println(done);

} catch (Exception e) {
	e.printStackTrace();
}
%>