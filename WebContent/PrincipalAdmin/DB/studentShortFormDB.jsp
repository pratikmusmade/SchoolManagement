<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
MultipartRequest m = new MultipartRequest(request,
		"C:/Users/prati/eclipse-workspace/schoolManagement2/src/main/webapp/img", 1048 * 1048 * 1048);
int done = 0;
try {
	Connection con = ConnectionProvider.getConnection();
	
//Student Short Form

	String studentFirstName = m.getParameter("studentFirstName");
	String studentPRNNumber = m.getParameter("studentPRNNumber");
	String gender = m.getParameter("gender");
	String castCategoryId = m.getParameter("castCategory");
	String academicYearId = m.getParameter("academicYear");
	String selectFeesCategory = m.getParameter("selectFeesCategory");
	String studentMiddleName = m.getParameter("studentMiddleName");
	String dateOfAdmission = m.getParameter("dateOfAdmission");
	String studentContactNo = m.getParameter("contactNo");
	String religionId = m.getParameter("studentReligion");
	String sectionId = m.getParameter("selectSection");
	String studentLastName = m.getParameter("studentLastName");
	String dateOfBirth = m.getParameter("studentDOB");
	String nationality = m.getParameter("nationality");
	String studentStatus = m.getParameter("admissionStatus");
	String classId = m.getParameter("selectClass");
	
//Student LongForm	

	String onlineRegisteredId  =  m.getParameter("onlineRegisteredId");
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



String query = "insert into studentdetails(studentFirstName  ,studentLastName  ,studentMiddleName  ,onlineRegisteredId  ,dateOfBirth ,dateOfAdmission ,studentPRNNumber  ,studentBirthPlace  ,photograph  ,studentCast  ,gender  ,nationality  ,studentStatus  ,studentAddress  ,nameOfPreviousSchool  ,aadharNo  ,studentEmail  ,studentContactNo  ,studentFatherName  ,parentsEmail  ,fatherContactNo  ,studentMotherName  ,motherContactNo  ,landline  ,classFees ,selectFeeCategory  ,SelectTransportWay  ,selectSlab  ,slabFees  ,classId  ,sectionId  ,religionId  ,academicYearId  ,castCategoryId ) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

	PreparedStatement pstmt = null;
	pstmt = con.prepareStatement(query);
	pstmt.setString( 1 , studentFirstName );
	pstmt.setString( 2 , studentLastName );
	pstmt.setString( 3 , studentMiddleName );
	pstmt.setString( 4 , onlineRegisteredId );
	pstmt.setString( 5 , dateOfBirth );
	pstmt.setString( 6 , dateOfAdmission );
	pstmt.setString( 7 , studentPRNNumber );
	pstmt.setString( 8 , studentBirthPlace );
	pstmt.setString( 9 , photograph );
	pstmt.setString( 10 , studentCast );
	pstmt.setString( 11 , gender );
	pstmt.setString( 12 , nationality );
	pstmt.setString( 13 , studentStatus );
	pstmt.setString( 14 , studentAddress );
	pstmt.setString( 15 , nameOfPreviousSchool );
	pstmt.setString( 16 , aadharNo );
	pstmt.setString( 17 , studentEmail );
	pstmt.setString( 18 , studentContactNo );
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
	pstmt.setString( 30 , classId );
	pstmt.setString( 31 , sectionId );
	pstmt.setString( 32 , religionId );
	pstmt.setString( 33 , academicYearId );
	pstmt.setString( 34 , castCategoryId );
	
	
	/*
	
	//(studentFirstName, studentLastName, studentMiddleName, onlineRegisteredId, dateOfBirth, dateOfAdmission, studentPRNNumber, studentBirthPlace, birthPlace, photograph, studentCast, gender, nationality, studentStatus, studentAddress, nameOfPreviousSchool, aadharNo, email, studentContactNo, studentFatherName, parentsEmail, fatherContactNo, studentMotherName, motherContactNo, landline, classFees, selectFeeCategory, SelectTransportWay, selectSlab, slabFees, classId, sectionId, religionId, academicYearId, castCategoryId)

	System.out.println(studentFirstName );
	System.out.println(studentLastName );
	System.out.println(studentMiddleName );
	System.out.println(onlineRegisteredId );
	System.out.println(dateOfBirth );
	System.out.println(dateOfAdmission );
	System.out.println(studentPRNNumber );
	System.out.println(studentBirthPlace );
	System.out.println(photograph );
	System.out.println(studentCast );
	System.out.println(gender );
	System.out.println(nationality );
	System.out.println(studentStatus );
	System.out.println(studentAddress );
	System.out.println(nameOfPreviousSchool );
	System.out.println(aadharNo );
	System.out.println(studentEmail );
	System.out.println(studentContactNo );
	System.out.println(studentFatherName );
	System.out.println(parentsEmail );
	System.out.println(fatherContactNo );
	System.out.println(studentMotherName );
	System.out.println(motherContactNo );
	System.out.println(landline );
	System.out.println(classFees );
	System.out.println(selectFeeCategory );
	System.out.println(SelectTransportWay );
	System.out.println(selectSlab );
	System.out.println(slabFees );
	System.out.println(classId );
	System.out.println(sectionId );
	System.out.println(religionId );
	System.out.println(academicYearId );
	System.out.println(castCategoryId );
	*/

	done = pstmt.executeUpdate();
	out.print(done);
} catch (Exception e) {
	e.printStackTrace();
}
%>
