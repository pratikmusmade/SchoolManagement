<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>




<%
Connection con = ConnectionProvider.getConnection();
MultipartRequest m = new MultipartRequest(request,
		"/Users/snehajature/eclipse-workspace/SchoolManagement/WebContent/assets/img", 1024 * 1024 * 1024);

String sql = "";
PreparedStatement psmt = null;
int done = 0;

String studentFirstName = m.getParameter("studentFirstName");
String studentMiddleName = m.getParameter("studentMiddleName");
String studentLastName = m.getParameter("studentLastName");

String studentPRNNumber = m.getParameter("studentPRNNumber");
String dateOfAdmission = m.getParameter("dateOfAdmission");
String dateOfBirth = m.getParameter("studentDOB");

String gender = m.getParameter("gender");
String studentContactNo = m.getParameter("studentContact");
String nationality = m.getParameter("nationality");

String castcategory = m.getParameter("caste");
System.out.print(castcategory);
String religion = m.getParameter("studentReligion");
String studentStatus = m.getParameter("admissionStatus");

String AcademicYear = m.getParameter("AcademicYear");
String section = m.getParameter("section");
String Class = m.getParameter("studentClass");

String onlineRegisteredId = m.getParameter("registrationNumber");
String studentBirthPlace = m.getParameter("BirthPlace");
String studentCast = m.getParameter("castName");

String studentAddress = m.getParameter("Address");
String nameOfPreviousSchool = m.getParameter("studentPreviousSchool");
String aadharNo = m.getParameter("studentAdharNumber");

String studentEmail = m.getParameter("studentEmail");
String classFees = m.getParameter("classFees");
String studentFatherName = m.getParameter("studentFatherName");

String parentsEmail = m.getParameter("parentEmail");
String fatherContactNo = m.getParameter("parentContact");
String studentMotherName = m.getParameter("studentMotherName");

String motherContactNo = m.getParameter("MotherContactNo");
String landline = m.getParameter("landlineNumber");
String studentHobbies = m.getParameter("studentHobbies");

String photograph = "/img/" + m.getFilesystemName("studentPhoto");
String photograph1 = m.getFilesystemName("studentPhoto");
String studentDetailsId = m.getParameter("studentDetailsId");

 System.out.println(castcategory);
 System.out.println(AcademicYear);
 System.out.println( section);
 System.out.println( Class);
 System.out.println(religion);


/* System.out.println("studentDetailsId: " + studentDetailsId);
 */

if (photograph1 == null) {

	PreparedStatement pstmt = con.prepareStatement(
	"UPDATE studentdetails SET studentFirstName=?, studentMiddleName=?, studentLastName=?, onlineRegisteredId=?, dateOfBirth=?, dateOfAdmission=?, studentPRNNumber=?, studentBirthPlace=?, studentCast=?, gender=?, nationality=?, studentStatus=?, studentAddress=?, nameOfPreviousSchool=?, aadharNo=?, studentEmail=?, studentContactNo=?, studentFatherName=?, parentsEmail=?, fatherContactNo=?, studentMotherName=?, motherContactNo=?, landline=?, classFees=?, studentHobbies=?, classId=?, sectionId=?, religionId=?, academicYearId=?, castCategoryId=? WHERE studentDetailsId=?");

	pstmt.setString(1, studentFirstName);
	pstmt.setString(2, studentMiddleName);
	pstmt.setString(3, studentLastName);
	pstmt.setString(4, onlineRegisteredId);
	pstmt.setString(5, dateOfBirth);
	pstmt.setString(6, dateOfAdmission);
	pstmt.setString(7, studentPRNNumber);
	pstmt.setString(8, studentBirthPlace);
	pstmt.setString(9, studentCast);
	pstmt.setString(10, gender);
	pstmt.setString(11, nationality);
	pstmt.setString(12, studentStatus);
	pstmt.setString(13, studentAddress);
	pstmt.setString(14, nameOfPreviousSchool);
	pstmt.setString(15, aadharNo);
	pstmt.setString(16, studentEmail);
	pstmt.setString(17, studentContactNo);
	pstmt.setString(18, studentFatherName);
	pstmt.setString(19, parentsEmail);
	pstmt.setString(20, fatherContactNo);

	pstmt.setString(21, studentMotherName);
	pstmt.setString(22, motherContactNo);
	pstmt.setString(23, landline);
	pstmt.setString(24, classFees);
	pstmt.setString(25, studentHobbies);

	pstmt.setString(26, Class);
	pstmt.setString(27, section);
	pstmt.setString(28, religion);
	pstmt.setString(29, AcademicYear);
	pstmt.setString(30, castcategory);

	pstmt.setString(31, studentDetailsId);
	done = pstmt.executeUpdate();

} else {

	PreparedStatement pstmt = con.prepareStatement(
	"update studentdetails set studentFirstName=?, studentMiddleName=?, studentLastName=?, onlineRegisteredId=?, dateOfBirth=?, dateOfAdmission=?, studentPRNNumber=?, studentPhotograph=?, studentBirthPlace=?,  studentCast=?, gender=?, nationality=?, studentStatus=?, studentAddress=?, nameOfPreviousSchool=?, aadharNo=?, studentEmail=?, studentContactNo=? , studentFatherName=?, parentsEmail=?, fatherContactNo=?, studentMotherName=?, motherContactNo=?, landline=?, classFees=?, studentHobbies=?, classId=?, sectionId=?, religionId=?, academicYearId=?, castCategoryId=? where studentDetailsId=?");

	pstmt.setString(1, studentFirstName);
	pstmt.setString(2, studentMiddleName);
	pstmt.setString(3, studentLastName);
	pstmt.setString(4, onlineRegisteredId);
	pstmt.setString(5, dateOfBirth);
	pstmt.setString(6, dateOfAdmission);
	pstmt.setString(7, studentPRNNumber);
	pstmt.setString(8, photograph);

	pstmt.setString(9, studentBirthPlace);
	pstmt.setString(10, studentCast);
	pstmt.setString(11, gender);
	pstmt.setString(12, nationality);
	pstmt.setString(13, studentStatus);
	pstmt.setString(14, studentAddress);
	pstmt.setString(15, nameOfPreviousSchool);
	pstmt.setString(16, aadharNo);
	pstmt.setString(17, studentEmail);
	pstmt.setString(18, studentContactNo);
	pstmt.setString(19, studentFatherName);
	pstmt.setString(20, parentsEmail);
	pstmt.setString(21, fatherContactNo);

	pstmt.setString(22, studentMotherName);
	pstmt.setString(23, motherContactNo);
	pstmt.setString(24, landline);
	pstmt.setString(25, classFees);
	pstmt.setString(26, studentHobbies);

	pstmt.setString(27, Class);
	pstmt.setString(28, section);
	pstmt.setString(29, religion);

	pstmt.setString(30, AcademicYear);
	pstmt.setString(31, castcategory);

	pstmt.setString(32, studentDetailsId);

	done = pstmt.executeUpdate();
}

if (done > 0) {
%>


<script>
	     alert("Update Success!!");
	     location.href="../student_List.jsp?studentDetailsId=<%=studentDetailsId%>";
	    </script>
<%
} else {
%>
<script>
	     alert("Failed Try Again!!");
	     location.href="update_StudentList.jsp?studentDetailsId=<%=studentDetailsId%>
	     ";
</script>
<%
}
%>







