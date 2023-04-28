<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>

<%@page import="com.oreilly.servlet.MultipartRequest"%>

<%@ page import="java.sql.*"%>


<%
int done = 0;

try {
	MultipartRequest m = new MultipartRequest(request,

	"C:/Users/Akash/eclipse-workspace/SchoolManagement/WebContent/assets/img", 1048 * 1048 * 1048);

	Connection con = ConnectionProvider.getConnection();
	//staffId, firstName, middleName, lastName, email, moblileNo, gender, joiningDate, dateofBirth, staffAddress, qualification, 
	//salary, casteCategory, staffRoleId, designationId, staffCastId, staffProfilePic, employeeId        

	String firstName = m.getParameter("firstName");
	String middleName = m.getParameter("middleName");
	String lastName = m.getParameter("lastName");
	String email = m.getParameter("email");
	String moblileNo = m.getParameter("moblileNo");
	String gender = m.getParameter("gender");
	String joiningDate = m.getParameter("joiningDate");
	String dateofBirth = m.getParameter("dateofBirth");
	String staffAddress = m.getParameter("staffAddress");
	String qualification = m.getParameter("qualification");
	String salary = m.getParameter("salary");
	String casteCategory = m.getParameter("casteCategory");
	String castId = m.getParameter("staffCastId");
	String staffRoleId = m.getParameter("staffRoleId");
	String designationId = m.getParameter("designationId");
	String staffCastId = m.getParameter("staffCastId");
	String employeeId = m.getParameter("employeeId");
	String staffProfilePic = "/img/" + m.getFilesystemName("staffProfilePic");

	String addSchoolQuery = "insert into  staff(firstName, middleName, lastName, email, moblileNo, gender, joiningDate, dateofBirth, staffAddress, qualification, salary, casteCategory, staffRoleId, designationId, staffCastId, staffProfilePic, employeeId) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement pstm = null;

	pstm = con.prepareStatement(addSchoolQuery);
	pstm.setString(1, firstName);
	pstm.setString(2, middleName);
	pstm.setString(3, lastName);

	pstm.setString(4, email);
	pstm.setString(5, moblileNo);
	pstm.setString(6, gender);
	pstm.setString(7, joiningDate);
	pstm.setString(8, dateofBirth);
	pstm.setString(9, staffAddress);
	pstm.setString(10, qualification);

	pstm.setString(11, salary);
	pstm.setString(12, casteCategory);
	pstm.setString(13, staffRoleId);
	pstm.setString(14, designationId);
	pstm.setString(15, staffCastId);
	pstm.setString(16, staffProfilePic);
	pstm.setString(17, employeeId);

	done = pstm.executeUpdate();
	System.out.println(done);
} catch (Exception e) {
	e.printStackTrace();
}

if (done == 1) {
	out.print(1);
} else {
	out.print(0);
}
%>

