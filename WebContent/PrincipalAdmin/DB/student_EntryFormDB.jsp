<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
MultipartRequest m = new MultipartRequest(request,
		"/Users/snehajature/eclipse-workspace/SchoolManagement/WebContent/assets/img", 1024 * 1024 * 1024);
int done = 0;


	Connection con = ConnectionProvider.getConnection();
	
	
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
	String religion = m.getParameter("studentReligion");
	String studentStatus = m.getParameter("admissionStatus");
	String AcademicYear = m.getParameter("AcademicYear");
	String section = m.getParameter("section");
	String Class = m.getParameter("studentClass");

	
	
	String onlineRegisteredId  =  m.getParameter("registrationNumber");
	String photograph ="/img/" + m.getFilesystemName("studentPhoto");  
	String studentBirthPlace =  m.getParameter("BirthPlace");
	String studentCast =  m.getParameter("castName");
	String studentAddress =  m.getParameter("Address");
	String nameOfPreviousSchool =  m.getParameter("studentPreviousSchool");
	String aadharNo  =  m.getParameter("studentAdharNumber");
	String studentEmail =  m.getParameter("studentEmail");
	String classFees  =  m.getParameter("classFees");
	String studentFatherName =  m.getParameter("studentFatherName");
	String parentsEmail =  m.getParameter("parentEmail");
	String fatherContactNo =  m.getParameter("parentContact");
	String studentMotherName =  m.getParameter("studentMotherName");
	String motherContactNo=  m.getParameter("MotherContactNo");
	String landline  =  m.getParameter("landlineNumber");
	String studentHobbies  =  m.getParameter("studentHobbies");

	String selectFeeCategory =  m.getParameter("selectFeeCategory");
	String SelectTransportWay =  m.getParameter("SelectTransportWay");
	String selectSlab =  m.getParameter("selectSlab");
	String slabFees =  m.getParameter("slabFees");
	
	

String motherTongue = m.getParameter("studentMotherTongue");
String guardianName = m.getParameter("guardianName");
String guardianOccupation = m.getParameter("guardianOccupation");
String guardianMobNo = m.getParameter("guardianMobNo");
String guardianRelation = m.getParameter("guardianRelation");
String guardianqualification = m.getParameter("guardianqualification");
String guardianPhoto ="/img/" + m.getFilesystemName("guardianPhoto");
String fatherOccupation = m.getParameter("fatherOccupation");
String fatherEducation = m.getParameter("fatherEduaction");
String fatherYearlyIncome = m.getParameter("fatherYearlyIncome");
String FatherPhoto ="/img/" + m.getFilesystemName("FatherPhoto");
String motherOccupation = m.getParameter("motherOccupation");
String motherEducation = m.getParameter("motherEduaction");
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

String query = "insert into studentdetails (studentFirstName, studentMiddleName, studentLastName, onlineRegisteredId, dateOfBirth, dateOfAdmission, studentPRNNumber, studentBirthPlace, studentPhotograph, studentCast, gender, nationality, studentStatus, studentAddress, nameOfPreviousSchool, aadharNo, studentEmail, studentContactNo, studentFatherName, parentsEmail, fatherContactNo, studentMotherName, motherContactNo, landline, classFees, studentHobbies, studentMotherTongue, guardianFullName, guardianOccupation, guardianMobileNumber, guardianRelationWithStudnet, guardianQualification, guardianPhotograph, fatherOccupation, fatherQualification, fatherYearlyIncome, fatherPhotograph, motherOccupation, motherQualification, motherYearlyIncome, motherPhotograph, bankName, branchName, accountNumber, guardianAddress, guardianStreetOrLocation, guardianDistrict, guardianCityOrVillage, guardianState, guardianTaluka, guardianPostalCode, classId, sectionId, religionId, academicYearId, castCategoryId ) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

 PreparedStatement pstmt = con.prepareStatement(query);
	pstmt.setString( 1 , studentFirstName );
	pstmt.setString( 2 , studentMiddleName   );
	pstmt.setString( 3 , studentLastName);
	pstmt.setString( 4 , onlineRegisteredId);
	pstmt.setString( 5 , dateOfBirth );
	pstmt.setString( 6 , dateOfAdmission );
	pstmt.setString( 7 , studentPRNNumber );
	pstmt.setString( 8 , studentBirthPlace);
	pstmt.setString( 9 , photograph);
	pstmt.setString( 10 , studentCast );
	pstmt.setString( 11 , gender );
	pstmt.setString( 12, nationality );
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
	pstmt.setString( 26 , studentHobbies );

	pstmt.setString( 27 , motherTongue );
	pstmt.setString( 28 , guardianName );
	pstmt.setString( 29 , guardianOccupation );
	pstmt.setString( 30 , guardianMobNo );
	pstmt.setString( 31 , guardianRelation );
	pstmt.setString( 32 , guardianqualification );
	pstmt.setString( 33 , guardianPhoto );
	pstmt.setString( 34 , fatherOccupation );
	pstmt.setString( 35 , fatherEducation );
	pstmt.setString( 36 , fatherYearlyIncome );
	pstmt.setString( 37 , FatherPhoto );
	pstmt.setString( 38 , motherOccupation );
	pstmt.setString( 39 , motherEducation);
	pstmt.setString( 40 , motherYearlyIncome );
	pstmt.setString( 41 , motherPhoto );
	pstmt.setString( 42 , bankName );
	pstmt.setString( 43 , BankbranchName );
	pstmt.setString( 44 , accountNumber );
	pstmt.setString( 45 , Address );
	pstmt.setString( 46 , City );
	
	pstmt.setString( 47 , Village );
	pstmt.setString( 48 , District );
	pstmt.setString( 49 , State );
	pstmt.setString( 50 , talukaName );
	pstmt.setString( 51 , postalCode );
	
	pstmt.setString( 52 , Class );
	pstmt.setString( 53 , section );
	pstmt.setString( 54 , religion );
	
	pstmt.setString( 55 , AcademicYear );
	pstmt.setString( 56 , castcategory );

	


	
	
	
	done = pstmt.executeUpdate();
	if(done>0){%>
	 1
	 <%}
	 else{%>
	 
	<%}
	%>

 