<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<%@ page import="java.sql.*"%>


	<%
	System.out.println("Hello");
	int done = 0;

	try {
		MultipartRequest m = new MultipartRequest(request,
		"C:/Users/akash/eclipse-workspace/schoolManagement1/src/main/webapp/img", 1048 * 1048 * 1048);

		Connection con = ConnectionProvider.getConnection();
     
		// staffProfilePic,staffId,staffRoleId,staffFirstName,staffMiddleName,staffLastName,staffGender,
		// staffDOB,staffQualification,staffEmail,staffMoblileNo,staffSalary,staffDesignation,staffCastCategoryId ,staffCastName staffJoiningDate
		// staffAddress

		String firstName = m.getParameter("staffFirstName");
		String middleName = m.getParameter("staffMiddleName");
		String lastName = m.getParameter("staffLastName");
		String email = m.getParameter("staffEmail");
		String moblileNo = m.getParameter("staffMoblileNo");
		String gender = m.getParameter("staffGender");
		String joiningDate = m.getParameter("staffJoiningDate");
		String dateofBirth = m.getParameter("staffDOB");
		String staffAddress = m.getParameter("staffAddress");
		String qualification = m.getParameter("staffQualification");
		String salary = m.getParameter("staffSalary");
		String castCategory = m.getParameter("staffCastCategoryId");
		String casteCategoryName = m.getParameter("staffCastName");
		String staffRoleId = m.getParameter("staffRoleId");
		String staffDesignation = m.getParameter("staffDesignation");
		String staffId = m.getParameter("staffId");
		String staffProfilePic = "/img/" + m.getFilesystemName("staffProfilePic");

	

		String addStaffQuery = "insert into  staff(firstName, middleName, lastName, email, moblileNo, gender, joiningDate, dateofBirth, staffAddress, qualification, salary, casteCategory, staffRoleId, designationId, castCategoryId, staffProfilePic) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstm = null;

		pstm = con.prepareStatement(addStaffQuery);
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
		pstm.setString(12, casteCategoryName);
		pstm.setString(13, staffRoleId);
		pstm.setString(14, staffDesignation);
		pstm.setString(15, castCategory);
		pstm.setString(16, staffProfilePic);

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

