<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
System.out.println("Inside");
String academicYear = request.getParameter("academicYear");
String nextAcademicYearDate = request.getParameter("nextAcademicYearDate");

int done = 0;
try {
	//out.print(s1);
	Connection con = ConnectionProvider.getConnection();
	//academicYearId, academicYear, startmonthNumber, nextAcademicYearDate
	String query = "insert into academicyear(academicYear,nextAcademicYearDate) values(?,?)";
	PreparedStatement pstm = con.prepareStatement(query);
	pstm.setString(1, academicYear);
	pstm.setString(2, nextAcademicYearDate);
	done = pstm.executeUpdate();
	out.print(done);
	System.out.println(done);

} catch (Exception e) {
	e.printStackTrace();
}

%>
