<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>


<%
String s1 = request.getParameter("className");
String s2 = request.getParameter("status");
String id = request.getParameter("id");

int i = 0;
try {
	Connection con = ConnectionProvider.getConnection();
	String query = "UPDATE studclass SET className = ?,status = ? WHERE classId = ?";
	PreparedStatement pstm = con.prepareStatement(query);
	pstm.setString(1, s1);
	pstm.setString(2, s2);
	pstm.setString(3, id);

	i = pstm.executeUpdate();
	out.print(i);

} catch (Exception e) {
	e.printStackTrace();
}
%>