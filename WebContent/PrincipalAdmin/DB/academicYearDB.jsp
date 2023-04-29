<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
System.out.println("Inside");
String academicYear = request.getParameter("academicYear");
String startmonthNumber = request.getParameter("startmonthNumber");
String nextAcademicYearDate = request.getParameter("nextAcademicYearDate");
/*
System.out.println(academicYear + "\n");
System.out.println(startmonthNumber + "\n");
System.out.println(nextAcademicYearDate + "\n");
*/
int done = 0;
try {
	//out.print(s1);
	Connection con = ConnectionProvider.getConnection();
	//academicYearId, academicYear, startmonthNumber, nextAcademicYearDate
	String query = "insert into academicyear(academicYear,startmonthNumber,nextAcademicYearDate) values(?,?,?)";
	PreparedStatement pstm = con.prepareStatement(query);
	pstm.setString(1, academicYear);
	pstm.setString(2, startmonthNumber);
	pstm.setString(3, nextAcademicYearDate);
	done = pstm.executeUpdate();
	out.print(done);
	System.out.println(done);

} catch (Exception e) {
	e.printStackTrace();
}

%>
