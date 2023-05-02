<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
MultipartRequest m = new MultipartRequest(request,
		"/Users/snehajature/eclipse-workspace/SchoolManagement/WebContent/assets/img", 1048 * 1048 * 1048);
int done = 0;
try {
	Connection con = ConnectionProvider.getConnection();
	
	
//Student Short Form
	String studentFirstName = m.getParameter("studentFirstName");
	String studentMiddleName = m.getParameter("studentMiddleName");
	String studentLastName = m.getParameter("studentLastName");
	String studentPRNNumber = m.getParameter("studentPRNNumber");
	String dateOfAdmission = m.getParameter("dateOfAdmission");
	String dateOfBirth = m.getParameter("studentDOB");
	String gender = m.getParameter("gender");
	String studentContactNo = m.getParameter("contactNo");
	String nationality = m.getParameter("nationality");
	String castcategory = m.getParameter("castcategory");
	String religion = m.getParameter("studentReligion");
	String studentStatus = m.getParameter("admissionStatus");
	String acyear = m.getParameter("acyear");
	String section = m.getParameter("selectSection");
	String Class = m.getParameter("selectClass");

	
	
//Student LongForm	
	/* String onlineRegisteredId  =  m.getParameter("onlineRegisteredId");
	String photograph ="/img/" + m.getFilesystemName("photograph");  
	String studentBirthPlace =  m.getParameter("studentBirthPlace");
	String studentCast =  m.getParameter("studentCast");
	String studentAddress =  m.getParameter("studentAddress");
	String nameOfPreviousSchool =  m.getParameter("nameOfPreviousSchool");
	String aadharNo  =  m.getParameter("aadharNo");
	String studentEmail =  m.getParameter("studentEmail");
	String classFees  =  m.getParameter("classFees");
	String studentFatherName =  m.getParameter("studentFatherName");
	String parentsEmail =  m.getParameter("parentsEmail");
	String fatherContactNo =  m.getParameter("fatherContactNo");
	String studentMotherName =  m.getParameter("studentMotherName");
	String motherContactNo=  m.getParameter("motherContactNo");
	String landline  =  m.getParameter("landline");
	String selectFeeCategory =  m.getParameter("selectFeeCategory");
	String SelectTransportWay =  m.getParameter("SelectTransportWay");
	String selectSlab =  m.getParameter("selectSlab");
	String slabFees =  m.getParameter("slabFees");
	
	
//Student Other Details Form
String hobbies = m.getParameter("hobbies");
String motherTongue = m.getParameter("motherTongue");
String guardianName = m.getParameter("guardianName");
String guardianOccupation = m.getParameter("guardianOccupation");
String guardianMobNo = m.getParameter("guardianMobNo");
String guardianRelation = m.getParameter("guardianRelation");
String guardianqualification = m.getParameter("guardianqualification");
String guardianPhoto ="/img/" + m.getFilesystemName("guardianPhoto");
String fatherOccupation = m.getParameter("fatherOccupation");
String fatherEduaction = m.getParameter("fatherEduaction");
String fatherYearlyIncome = m.getParameter("fatherYearlyIncome");
String FatherPhoto ="/img/" + m.getFilesystemName("FatherPhoto");
String motherOccupation = m.getParameter("motherOccupation");
String motherEduaction = m.getParameter("motherEduaction");
String motherYearlyIncome = m.getParameter("motherYearlyIncome");
String motherPhoto = "/img/" + m.getFilesystemName("motherPhoto");
String bankName = m.getParameter("bankName");
String BankbranchName = m.getParameter("BankbranchName");
String accountNumber = m.getParameter("accountNumber");
String Address = m.getParameter("Address");
String City = m.getParameter("City");
String Village = m.getParameter("Village");
String talukaName = m.getParameter("talukaName");
String District = m.getParameter("District");
String State = m.getParameter("State");
String postalCode = m.getParameter("postalCode");

 */
String query = "insert into ShortForm(studentFName, studentMName  ,studentLName   , studentPRN , admissionDate , DOB  , Gender, studentContact, Nationality, castCategory, religion, status, academicyear, section, class) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

 PreparedStatement pstmt = con.prepareStatement(query);
	pstmt.setString( 1 , studentFirstName );
	pstmt.setString( 2 , studentLastName );
	pstmt.setString( 3 , studentMiddleName );
	pstmt.setString( 4 , studentPRNNumber );
	pstmt.setString( 5 , dateOfAdmission );
	pstmt.setString( 6 , dateOfBirth );
	pstmt.setString( 7 , gender );
	pstmt.setString( 8 , studentContactNo );
	pstmt.setString( 9 , nationality );
	pstmt.setString( 10 , castcategory );
	pstmt.setString( 11 , religion );
	pstmt.setString( 12 , studentStatus );
	pstmt.setString( 13 , acyear );
	pstmt.setString( 14 , section );
	pstmt.setString( 15 , Class);
	
	/* pstmt.setString( 14 , studentAddress );
	pstmt.setString( 15 , nameOfPreviousSchool );
	pstmt.setString( 16 , aadharNo );
	pstmt.setString( 17 , studentEmail );
	pstmt.setString( 19 , studentFatherName );
	pstmt.setString( 20 , parentsEmail );
	pstmt.setString( 21 , fatherContactNo );
	pstmt.setString( 22 , studentMotherName );
	pstmt.setString( 23 , motherContactNo );
	pstmt.setString( 24 , landline );
	pstmt.setString( 25 , classFees );
	pstmt.setString( 26 , selectFeeCategory );
	pstmt.setString( 27 , SelectTransportWay );
	pstmt.setString( 28 , selectSlab );
	pstmt.setString( 29 , slabFees );
	
 */	
	
	
	
	done = pstmt.executeUpdate();
	out.print(done);
} catch (Exception e) {
	e.printStackTrace();
}
%>