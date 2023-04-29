<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%
String staffRole = request.getParameter("staffRole");
String staffRoleStatus = request.getParameter("staffRoleStatus");

int i = 0;
try {

	Connection con = ConnectionProvider.getConnection();
	String query = "insert into staffRole(staffRole,staffRoleStatus)values(?,?)";
	PreparedStatement pstm = con.prepareStatement(query);
	pstm.setString(1, staffRole);
	pstm.setString(2, staffRoleStatus);
	i = pstm.executeUpdate();
	out.print(i);

} catch (Exception e) {
	e.printStackTrace();
}
%>




