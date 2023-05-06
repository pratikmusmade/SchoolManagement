<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="./components/principalAdminLinks.jsp"></jsp:include>

</head>
<body>

<jsp:include page="./components/principalAdminHeader.jsp"></jsp:include>
<jsp:include page="./components/principalAdminSidebar.jsp"></jsp:include>

<%
	Connection con = ConnectionProvider.getConnection();
	%>
	
	 <div id="page-wrapper">
			<div class="main-page">
			<div class="container">
				
				<div class="row"></div>
					<div class="col-md-10 table-responsive" style="margin-left:220px;">
					
					
					<h1 style="text-align:center;">Student Details</h1><br><br>
					   <table class="table table-bordered" id="myTable">
					    <tr>
					    <th>Sr No.</th>
					    <th>Student Full Name</th>
					     <th>Online Registration Id</th>
					     <th>PRN No.</th>
					     <th>Gender</th>
					     <th>Date of Birth</th>
					     <th>Birth Place</th>
					     <th>Nationality</th>
					     <th>Date of Admission</th>
					     <th>Student Photograph</th>
					     <th>Student Status</th>
					     <th>Caste Category</th>
					     <th>Caste Name</th>
					     <th>Religion</th>
					     <th>Address</th>
					     <th>Name of Previous School</th>
					     <th>Aadhar No.</th> 
					     <th>Email</th>
					     <th>Student Contact No </th>
					     <th>Father Name</th>
					     <th>Father Email</th>
					     <th>Father Contact</th>
					     <th>Mother Name</th>
					     <th>Mother Contact</th>
					     <th>Landline</th>
					     <th>Academic Year</th>
					     <th>Section</th>
					     <th>Class</th>
					     <th>Class Fees</th>
					     <th>Hobbies</th>
					     <th>Action</th>
					    
					     </tr>
					     
					     <tbody id="myTable">
					    <tr>
					    
					        <%
					        
					        
					     
String sql = "SELECT s.* , c.castCategoryName, r.religionName, a.academicYear, se.sectionName, st.className FROM studentdetails s  JOIN castcategory c ON s.castCategoryId = c.castCategoryId	 JOIN    religion r ON s.religionId = r.religionId  JOIN   academicyear a ON s.academicYearId = a.academicYearId JOIN section se ON s.sectionId = se.sectionId  JOIN studclass st ON s.classId  = st.classId";
					        
/* 					      String sql = "select * from studentdetails";
 */					      PreparedStatement pstmt = con.prepareStatement(sql);
					      ResultSet rs = pstmt.executeQuery();
					      int i = 1;
					      while(rs.next()){
					    %>
					    <td><%=i %></td>
					    <td><%=rs.getString("studentFirstName")%> <%=rs.getString("studentMiddleName")%>
										<%=rs.getString("studentLastName")%></td>
					    <td><%=rs.getString("onlineRegisteredId") %> </td> 
					    <td><%=rs.getString("studentPRNNumber")%></td>
					    <td><%=rs.getString("gender")%></td>
					     <td><%=rs.getString("dateOfBirth") %> </td> 
					    <td><%=rs.getString("studentBirthPlace") %> </td> 
					   <td><%=rs.getString("nationality") %> </td> 
					    <td><%=rs.getString("dateOfAdmission") %> </td> 
					    <td><img src="../assets<%=rs.getString("studentPhotograph")%>" height="100" width="100"> </td>
					    <td><%=rs.getString("studentStatus") %> </td>
					    <td><%=rs.getString("castCategoryName") %> </td>
					    <td><%=rs.getString("studentCast") %> </td>
					    <td><%=rs.getString("religionName") %> </td>
					    <td><%=rs.getString("studentAddress") %> </td> 
					    <td><%=rs.getString("nameOfPreviousSchool") %> </td>
					    <td><%=rs.getString("aadharNo") %> </td>
					     <td><%=rs.getString("studentEmail") %> </td>
					    <td><%=rs.getString("studentContactNo") %> </td> 
					    <td><%=rs.getString("studentFatherName") %> </td> 
					    
					    <td><%=rs.getString("parentsEmail") %> </td>
					    <td><%=rs.getString("fatherContactNo") %> </td>
					    <td><%=rs.getString("studentMotherName") %> </td>
					    <td><%=rs.getString("motherContactNo") %> </td>
					    <td><%=rs.getString("landline") %> </td>
					    <td><%=rs.getString("academicYear") %> </td>
					    <td><%=rs.getString("sectionName") %> </td>
					    <td><%=rs.getString("className") %> </td>
					    <td><%=rs.getString("classFees") %> </td>
					    <td><%=rs.getString("studentHobbies") %> </td>
					   <td><a href="update_StudentList.jsp?studentDetailsId=<%=rs.getString("studentDetailsId")%>">Update </a></td>
					   
					    </tr>
					    
					    <%i++;} %>
					    </tbody>			 
					     </table>
					     </div>
					     </div>
					     </div>
					     </div>
					     
					     <jsp:include page="./components/principalAdminFooter.jsp"></jsp:include>
					     
					     
					   
	
</body>
</html>