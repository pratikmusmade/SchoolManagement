 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<jsp:include page="./components/principalAdminLinks.jsp"></jsp:include>
<style>
#searchBox{
float:right;
}
</style>
</head>
<body>
	<%
	Connection con = ConnectionProvider.getConnection();
	%>
	<div class="main-wrapper">
		<jsp:include page="./components/principalAdminHeader.jsp"></jsp:include>

		<jsp:include page="./components/principalAdminSidebar.jsp"></jsp:include>

		<div class="page-wrapper">
			<div class="content container-fluid">

				<div class="card bg-white">
					<div class="card-header">
						<h5 class="card-title">Student Entry Form</h5>
					</div>
					<div class="card-body">
						<ul
							class="nav nav-pills navtab-bg nav-justified twitter-bs-wizard-nav">
							<li class="nav-item"><a class="nav-link active"
								href="#student_Short_Form" data-bs-toggle="tab">Short
									Entry Form</a></li>
							<li class="nav-item"><a class="nav-link"
								href="#solid-justified-tab2" data-bs-toggle="tab">Full Entry
									Form</a></li>
							<li class="nav-item"><a class="nav-link"
								href="#solid-justified-tab3" data-bs-toggle="tab">Other
									Details </a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane show active" id="student_Short_Form">
							
								<form action="DB/student_EntryFormDB.jsp" method="POST"
									 id="student_ShortForm"  enctype="multipart/form-data" class="needs-validation"
									novalidate>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Student First Name -</label>
												<div class="col-lg-12">
													<input type="text" name="studentFirstName"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Name.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Student Middle Name -</label>
												<div class="col-lg-12">
													<input type="text" name="studentMiddleName"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Middle Name.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Student Last Name -</label>
												<div class="col-lg-12">
													<input type="text" name="studentLastName"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Last Name.</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span> Student PRN No -</label>
												<div class="col-lg-12">
													<input type="number" name="studentPRNNumber"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														PRN Number.</div>
												</div>
											</div>
										</div>

										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fa-solid fa-calendar-days"></i></span>Date of Admission -</label>
												<div class="col-lg-12">
													<input type="date" name="admissionDate"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Admission Date.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-mobile-android-alt"></i></span>Date Of Birth -</label>
												<div class="col-lg-12">
													<input type="date" name="studentDOB" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Birth Date.</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-mobile-android-alt"></i></span>Gender -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="gender" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														<option>Male</option>
														<option>Female</option>
													</select>
												</div>
											</div>

										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-envelope"></i></span>Student Contact No -</label>
												<div class="col-lg-12">
													<input type="number" name="studentContact"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Contact No.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-mobile-android-alt"></i></span>Nationality -</label>
												<div class="col-lg-12">
													<input type="text" name="nationality" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide
														Nationality.</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Caste Category -</label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="caste"
														id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														 <%
														try {
															Connection con1 = ConnectionProvider.getConnection();
															Statement stmt = con1.createStatement();
															ResultSet rs = stmt.executeQuery("select * from castcategory");
															while (rs.next()) {
														%>



														<option value="<%=rs.getInt("castCategoryId")%>">
															<%=rs.getString("castCategoryName")%></option>
														<%
														}

														} catch (Exception e) {
														e.printStackTrace();
														}
														%> 
													</select>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Religion -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="studentReligion" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														 <%
														try {
															Connection con2 = ConnectionProvider.getConnection();
															Statement stmt = con2.createStatement();
															ResultSet rs = stmt.executeQuery("select * from religion");
															while (rs.next()) {
														%>
														<option value="<%=rs.getInt("religionId")%>">
															<%=rs.getString("religionName")%></option>
														<%
														}

														} catch (Exception e) {
														e.printStackTrace();
														}
														%>
													</select>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-mobile-android-alt"></i></span>Status -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="admissionStatus" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														<option>ADMITTED</option>
														
													</select>
												</div>

											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Academic Year -</label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="AcademicYear"
														id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														<%
														try {
															Connection con3 = ConnectionProvider.getConnection();
															Statement stmt = con3.createStatement();
															ResultSet rs = stmt.executeQuery("select * from academicyear");
															while (rs.next()) {
														%>



														<option value="<%=rs.getInt("academicYearId")%>">
															<%=rs.getString("academicYear")%></option>
														<%
														}

														} catch (Exception e) {
														e.printStackTrace();
														}
														%> 
													</select>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Select Section -</label>
												<div class="col-lg-12">

													<select class="form-control form-select"
														name="section" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														 					<%
														try {
															Connection con4 = ConnectionProvider.getConnection();
															Statement stmt = con4.createStatement();
															ResultSet rs = stmt.executeQuery("select * from section");
															while (rs.next()) {
														%>
														<option value="<%=rs.getInt("sectionId")%>">
															<%=rs.getString("sectionName")%></option>
														<%
														}

														} catch (Exception e) {
														e.printStackTrace();
														}
														%> 
													</select>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-mobile-android-alt"></i></span>Select Class -</label>
												<div class="col-lg-12">

													<select class="form-control form-select"
														name="studentClass" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														<%
														try {
															Connection con5 = ConnectionProvider.getConnection();
															Statement stmt = con5.createStatement();
															ResultSet rs = stmt.executeQuery("select * from studclass");
															while (rs.next()) {
														%>



														<option value="<%=rs.getInt("classId")%>">
															<%=rs.getString("className")%></option>
														<%
														}

														} catch (Exception e) {
														e.printStackTrace();
														}
														%> 
													</select>
												</div>

											</div>
										</div>
								
									<div class="text-end">
										<button class="btn btn-primary" id="mybutton" type="submit">Submit
											Form</button>
										<button class="btn btn-danger" type="reset">Reset</button>
									</div>
										</div>
								</form>

							</div>
							
							

 
							 <div class="tab-pane" id="solid-justified-tab2" >


<div class="top-nav-search" id = "searchBox">
<form>
				<input type="text" class="form-control" placeholder="Search For Student">
				<button class="btn" type="search" onclick="searchStudent()">
					<i class="fas fa-search"></i>
				</button>
			</form>
		</div><br>
  


								<form action="DB/student_EntryFormDB.jsp" enctype="multipart/form-data" method="POST" style="margin-top:50px;"
									class="needs-validation" id = "student_FullForm" novalidate>
									
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Student First Name -</label>
												<div class="col-lg-12">
													<input type="text" name="studentFirstName"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Name.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Student Middle Name -</label>
												<div class="col-lg-12">
													<input type="text" name="studentMiddleName"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Middle Name.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Student Last Name -</label>
												<div class="col-lg-12">
													<input type="text" name="studentLastName"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Last Name.</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Online Registration Id -</label>
												<div class="col-lg-12">
													<input type="number" name="registrationNumber"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Registration Id.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Student PRN No -</label>
												<div class="col-lg-12">
													<input type="number" name="studentPRNNumber" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														PRN No.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fa-solid fa-person-half-dress"></i></span>Gender -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="gender" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														<option>Male</option>
														<option>Female</option>
													</select>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Select Gender.</div>
												</div>


											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fa-solid fa-calendar-days"></i></span>Date Of Birth -</label>
												<div class="col-lg-12">
													<input type="date" name="studentDOB"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Date Of Birth.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fa-sharp fa-solid fa-location-dot"></i></span>BirthPlace -</label>
												<div class="col-lg-12">
													<input type="text" name="BirthPlace"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														BirthPlace.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fa-solid fa-flag"></i></span>Nationality -</label>
												<div class="col-lg-12">
													<input type="text" name="nationality" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Nationality.</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-calendar-days"></i></span>Date Of Admission-</label>
												<div class="col-lg-12">
													<input type="Date" name="dateOfAdmission"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Admission Date.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fa-solid fa-camera"></i></span>Student Photograph -</label>
												<div class="col-lg-12">
													<input type="file" name="studentPhoto" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Student
														Photo.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fa-solid	fa-toggle-on"></i></span>Status -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="admissionStatus" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														<option>ADMITTED</option>
														
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1">
														<i class="fa-solid fa-address-card"></i>
												</span>Caste Category -</label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="caste"
														id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														 <%
														try {
															Connection con1 = ConnectionProvider.getConnection();
															Statement stmt = con1.createStatement();
															ResultSet rs = stmt.executeQuery("select * from castcategory");
															while (rs.next()) {
														%>



														<option value="<%=rs.getInt("castCategoryId")%>">
															<%=rs.getString("castCategoryName")%></option>
														<%
														}

														} catch (Exception e) {
														e.printStackTrace();
														}
														%> 
													</select>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Select Cast
														Category.</div>
												</div>

											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1">
														<i class="fa-solid fa-address-card"></i>
												</span>Caste Name -</label>
												<div class="col-lg-12">
													<input type="text" name="castName" class="form-control"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Caste Name.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1">
														<i class="fa-solid fa-address-card"></i>
												</span>Religion -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="studentReligion" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														 <%
														try {
															Connection con2 = ConnectionProvider.getConnection();
															Statement stmt = con2.createStatement();
															ResultSet rs = stmt.executeQuery("select * from religion");
															while (rs.next()) {
														%>
														<option value="<%=rs.getInt("religionId")%>">
															<%=rs.getString("religionName")%></option>
														<%
														}

														} catch (Exception e) {
														e.printStackTrace();
														}
														%>
													</select>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Select 
														Religion.</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-10">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i class="fas fa-map-marked-alt"></i></span>Address
													- </label>
												<div class="col-lg-9">
													<textarea name="Address" rows="6" cols="6"
														class="form-control" placeholder="Adress...	" required></textarea>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Enter Address.</div>
												</div>
											</div>

										</div>
									</div>
									<h5 class="card-title">Other Details -</h5>

									<div class="col-xl-6">
										<div class="form-group row">
											<label for="validationCustom01"
												class="col-form-label col-lg-3"><span class="px-1"><i
													class="fas fa-school"></i></span>Name Of Previous School -</label>
											<div class="col-lg-12">
												<input type="text" name="studentPreviousSchool"
													class="form-control" id="validationCustom01" required>
												<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Provide Previous
													School Name Name.</div>

											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fa-solid fa-id-card"></i></span>Aadhar No -</label>
												<div class="col-lg-12">
													<input type="number" name="studentAdharNumber"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														aadhar Number.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-envelope"></i></span>Email -</label>
												<div class="col-lg-12">
													<input type="email" name="studentEmail"
														class="form-control" id="validationCustom01"
														pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Email address.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-mobile-android-alt"></i></span>Student Contact No -</label>
												<div class="col-lg-12">
													<input type="number" name="studentContact"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Contact Number.</div>

												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Student's Father Name -</label>
												<div class="col-lg-12">
													<input type="text" name="studentFatherName"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Enter Student
														Father Name.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-envelope"></i></span>Parents Email -</label>
												<div class="col-lg-12">
													<input type="email" name="parentEmail" class="form-control"
														id="validationCustom01"
														pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Parent's
														Email address.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-mobile-android-alt"></i></span>Parent's Contact
													No(Father) -</label>
												<div class="col-lg-12">
													<input type="number" name="parentContact"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Contact Number.</div>

												</div>
											</div>
										</div>
									</div>
									<div class="row">

										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span>Student's Mother Name -</label>
												<div class="col-lg-12">
													<input type="text" name="studentMotherName"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Enter Student
														Mother Name.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-mobile-android-alt"></i></span>Parent's Contact
													No(Mother) -</label>
												<div class="col-lg-12">
													<input type="number" name="MotherContactNo"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Mother
														Contact Number.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fa-solid fa-blender-phone"></i></span>Landline -</label>
												<div class="col-lg-12">
													<input type="number" name="landlineNumber"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Enter Landline
														Number.</div>

												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fa-solid fa-calendar-days"></i></span>Academic Year - </label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="AcademicYear"
														id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														<%
														try {
															Connection con3 = ConnectionProvider.getConnection();
															Statement stmt = con3.createStatement();
															ResultSet rs = stmt.executeQuery("select * from academicyear");
															while (rs.next()) {
														%>



														<option value="<%=rs.getInt("academicYearId")%>">
															<%=rs.getString("academicYear")%></option>
														<%
														}

														} catch (Exception e) {
														e.printStackTrace();
														}
														%> 
													</select>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide valid
														Academic Year.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i class="fa-solid fa-user-plus"></i></span>Select
													Section - </label>
												<div class="col-lg-12">
													
													<select class="form-control form-select"
														name="section" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														 					<%
														try {
															Connection con4 = ConnectionProvider.getConnection();
															Statement stmt = con4.createStatement();
															ResultSet rs = stmt.executeQuery("select * from section");
															while (rs.next()) {
														%>
														<option value="<%=rs.getInt("sectionId")%>">
															<%=rs.getString("sectionName")%></option>
														<%
														}

														} catch (Exception e) {
														e.printStackTrace();
														}
														%> 
													</select>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Select Section.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i class="fa-solid fa-graduation-cap"></i></span>Select
													Class - </label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="studentClass" id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>
														<%
														try {
															Connection con5 = ConnectionProvider.getConnection();
															Statement stmt = con5.createStatement();
															ResultSet rs = stmt.executeQuery("select * from studclass");
															while (rs.next()) {
														%>



														<option value="<%=rs.getInt("classId")%>">
															<%=rs.getString("className")%></option>
														<%
														}

														} catch (Exception e) {
														e.printStackTrace();
														}
														%> 
													</select>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Select Class.</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="far fa-money-bill-alt"></i></span> Class Fees-</label>
												<div class="col-lg-12">
													<input type="number" class="form-control"
														id="validationCustom01" name="classFees" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Enter Class
														Fees.</div>

												</div>
											</div>
										</div>
										
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="far fa-money-bill-alt"></i></span> Hobbies-</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="studentHobbies" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Enter student Hobbies
														.</div>

												</div>
											</div>
										</div>
										
									</div>
									<!-- <h5 class="card-title">Academic & Transport Fee Details -</h5>
									<div class="row">
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="far fa-money-bill-alt"></i></span> Select Fee Category -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="feeCategory" id="validationCustom01" required>
														<option>Installment</option>
														<option></option>
														<option></option>
													</select>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Select Fee
														Category.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-bus"></i></span> Select Transport Way -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="TransportWay" id="validationCustom01" required>
														<option>BUS</option>
														<option></option>
														<option></option>
													</select>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Select Transport
														Way.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user"></i></span> Select Slab -</label>
												<div class="col-lg-12">
													<select class="form-control form-select"
														name="slab" id="validationCustom01" required>
														<option></option>
														<option></option>
														<option></option>
													</select>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Select Slab.</div>
												</div>
											</div>
										</div>
								 		<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="far fa-money-bill-alt"></i></span> Slab Fees-</label>
												<div class="col-lg-12">
													<input type="number" class="form-control"
														id="validationCustom01" name="slabFees" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Enter Slab Fees.</div>

												</div>
											</div>
										</div>
									</div> -->
									<div class="text-end">
										<button class="btn btn-primary" id="mybutton1" type="submit">Submit
											Form</button>
										<button class="btn btn-danger" type="reset">Reset</button>
									</div>
								</form>


							</div>
							<div class="tab-pane" id="solid-justified-tab3">
								<form action="DB/student_EntryFormDB.jsp" enctype="multipart/form-data" id = "student_OtherDetailsForm" method="POST"
									class="needs-validation" novalidate>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fa-solid fa-address-card"></i></span>Student PRN Number -</label>
												<div class="col-lg-12">
													<input type="number" class="form-control" name="studentPRNNumber"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide PRN
														Number.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fas fa-user"></i>
												</span> Student Full Name -
												</label>
												<div class="col-lg-12">
													<input type="text" name="studentFirstName"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Full Name.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-language"></i>
												</span> Mother Tongue -
												</label>
												<div class="col-lg-12">
													<input type="text" name="studentMotherTongue"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide First
														Name.</div>

												</div>
											</div>
										</div>
									</div>
									<h6 class="card-title">Guardian Details -</h6>
									<div class="row">
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fas fa-user"></i>
												</span> Full Name -
												</label>
												<div class="col-lg-12">
													<input type="text" name="guardianName" class="form-control"
														id="validationCustom01" placeholder="Guardian Full Name.."
														required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Guardian
														Full Name.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-user-tie"></i>
												</span> Occupation -
												</label>
												<div class="col-lg-12">
													<input type="text" name="guardianOccupation"
														class="form-control" id="validationCustom01"
														placeholder="Guardian Occupation.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Guardian
														Occupation.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-mobile"></i>
												</span> Mobile Number -
												</label>
												<div class="col-lg-12">
													<input type="text" name="guardianMobNo"
														class="form-control" id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Guardian
														Mob No.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-user-tie"></i>
												</span> Relation -
												</label>
												<div class="col-lg-12">
													<input type="text" name="guardianRelation"
														class="form-control" id="validationCustom01"
														placeholder="Relation with Student.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Guardian
														Relation.</div>

												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fas fa-user"></i>
												</span> Qualification -
												</label>
												<div class="col-lg-12">
													<input type="text" name="guardianQualification" class="form-control"
														id="validationCustom01"
														placeholder="Educational Qualification.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Guardian
														Qualification.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fas fa-images"></i></span>Photograph -</label>
												<div class="col-lg-12">
													<input type="file" class="form-control"
														id="validationCustom01" name="guardianPhoto" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Guardian
														Photograph.</div>

												</div>
											</div>
										</div>
									</div>
									<h6 class="card-title">Father Details -</h6>
									<div class="row">
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-user-tie"></i>
												</span> Occupation -
												</label>
												<div class="col-lg-12">
													<input type="text" name="fatherOccupation"
														class="form-control" id="validationCustom01"
														placeholder="Father's Occupation.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Guardian
														Occupation.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fas fa-user"></i>
												</span> Qualification -
												</label>
												<div class="col-lg-12">
													<input type="text" name="fatherEduaction"
														class="form-control" id="validationCustom01"
														placeholder="Educational Qualification.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Father's
														Qualification.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-money-bill"></i>
												</span> Yearly Income -
												</label>
												<div class="col-lg-12">
													<input type="text" name="fatherYearlyIncome"
														class="form-control" id="validationCustom01"
														placeholder="Father's Yearly Income.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Yearly
														Income.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fas fa-images"></i></span>Photograph -</label>
												<div class="col-lg-12">
													<input type="file" class="form-control"
														id="validationCustom01" name="FatherPhoto" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Father's
														Photograph.</div>

												</div>
											</div>
										</div>
									</div>
									<h6 class="card-title">Mother Details -</h6>
									<div class="row">
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-user-tie"></i>
												</span> Occupation -
												</label>
												<div class="col-lg-12">
													<input type="text" name="motherOccupation"
														class="form-control" id="validationCustom01"
														placeholder="Mother Occupation.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Guardian
														Occupation.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fas fa-user"></i>
												</span> Qualification -
												</label>
												<div class="col-lg-12">
													<input type="text" name="motherEduaction"
														class="form-control" id="validationCustom01"
														placeholder="Educational Qualification.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Father's
														Qualification.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-money-bill"></i>
												</span> Yearly Income -
												</label>
												<div class="col-lg-12">
													<input type="text" name="motherYearlyIncome"
														class="form-control" id="validationCustom01"
														placeholder="Mother's Yearly Income.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Yearly
														Income.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-3">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="px-1"><i
														class="fas fa-images"></i></span>Photograph -</label>
												<div class="col-lg-12">
													<input type="file" class="form-control"
														id="validationCustom01" name="motherPhoto" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Father's
														Photograph.</div>

												</div>
											</div>
										</div>
									</div>
									<h6 class="card-title">Bank Details -</h6>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-sharp fa-solid fa-building-columns"></i>
												</span> Account Number -
												</label>
												<div class="col-lg-12">
													<input type="text" name="accountNumber"
														class="form-control" id="validationCustom01"
														placeholder="Account Number.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Account
														Number.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-sharp fa-solid fa-building-columns"></i>
												</span> Bank Name -
												</label>
												<div class="col-lg-12">
													<input type="text" name="BankName"
														class="form-control" id="validationCustom01"
														placeholder="Bank Name..." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Bank
														Name.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-sharp fa-solid fa-building-columns"></i>
												</span> Branch Name -
												</label>
												<div class="col-lg-12">
													<input type="text" name="BankbranchName"
														class="form-control" id="validationCustom01"
														placeholder="Bank Branch Name.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Bank
														Branch Name.</div>

												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"> <span class="px-1">
														<i class="fa-solid fa-volleyball"></i>
												</span> Hobbies -
												</label>
												<div class="col-lg-12">
													<input type="text" name="BankbranchName"
														class="form-control" id="validationCustom01"
														placeholder="Hobbies.." required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Bank
														Branch Name.</div>

												</div>
											</div>
										</div>
										<h5 class="card-title">Address</h5>
										<div class="row">
											<div class="form-group row">
												<label id="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-sharp fa-solid fa-location-dot"></i></span>Address -</label>
												<div class="col-lg-8">
													<textarea rows="5" cols="5" class="form-control"
														placeholder="" id="validationCustom01" name="Address"></textarea>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Address.</div>
												</div>
											</div>
											<div class="col-xl-6">
												<div class="form-group row">
													<label id="validationCustom01"
														class="col-lg-3 col-form-label"><span class="mx-2"><i
															class="fa-sharp fa-solid fa-city"></i></span>Street/Location -</label>
													<div class="col-lg-9">
														<input type="text" class="form-control"
															id="validationCustom01" name="City">
														<div class="valid-feedback">Looks good!</div>
														<div class="invalid-feedback">Please Provide City
															Name.</div>
													</div>
												</div>
												<div class="form-group row">
													<label id="validationCustom01"
														class="col-lg-3 col-form-label"><span class="mx-2"><i
															class="fa-sharp fa-solid fa-city"></i></span>City/Village -</label>
													<div class="col-lg-9">
														<input type="text" class="form-control"
															id="validationCustom01" name="Village">
														<div class="valid-feedback">Looks good!</div>
														<div class="invalid-feedback">Please Provide City
															Name.</div>
													</div>
												</div>
												<div class="form-group row">
													<label id="validationCustom01"
														class="col-lg-3 col-form-label"><span class="mx-2"><i
															class="fa-sharp fa-solid fa-city"></i></span>Taluka -</label>
													<div class="col-lg-9">
														<input type="text" class="form-control"
															id="validationCustom01" name="talukaName">
														<div class="valid-feedback">Looks good!</div>
														<div class="invalid-feedback">Please Provide Taluka.</div>
													</div>
												</div>
											</div>
											<div class="col-xl-6">
												<div class="form-group row">
													<label class="col-lg-3 col-form-label"
														id="validationCustom01"><span class="mx-2"><i
															class="fa-solid fa-tree-city"></i></span>District -</label>
													<div class="col-lg-9">
														<input type="text" class="form-control"
															id="validationCustom01" name="District">
														<div class="valid-feedback">Looks good!</div>
														<div class="invalid-feedback">Please Provide State
															Name.</div>
													</div>
												</div>
												<div class="form-group row">
													<label class="col-lg-3 col-form-label"
														id="validationCustom01"><span class="mx-2"><i
															class="fa-solid fa-tree-city"></i></span>State -</label>
													<div class="col-lg-9">
														<input type="text" class="form-control"
															id="validationCustom01" name="State">
														<div class="valid-feedback">Looks good!</div>
														<div class="invalid-feedback">Please Provide State
															Name.</div>
													</div>
												</div>

												<div class="form-group row">
													<label class="col-lg-3 col-form-label"
														id="validationCustom01"><span class="mx-2"><i
															class="fa-sharp fa-solid fa-location-dot"></i></span>Postal Code
														-</label>
													<div class="col-lg-9">
														<input type="text" class="form-control"
															id="validationCustom01" name="postalCode">
														<div class="valid-feedback">Looks good!</div>
														<div class="invalid-feedback">Please Provide Postal
															Code.</div>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="text-end">
										<button class="btn btn-primary " id="mybutton2" type="submit">Submit
											Form</button>
										<button class="btn btn-danger" type="reset">Reset</button>
									</div>
								</form>

							</div>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<jsp:include page="./components/principalAdminFooter.jsp"></jsp:include>
	<script src="assets/plugins/twitter-bootstrap-wizard/form-wizard.js"></script>
	<script
		src="assets/plugins/twitter-bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>


 <script type="text/javascript">$("#mybutton").click(function() {
	 var sel = document.querySelector('#nav-tab-manager')
	  bootstrap.Tab.getOrCreateInstance(sel).show()
	})
	
	/* $("#mybutton1").click(function() {
	 var sel = document.querySelector('#nav-tab-manager')
	  bootstrap.Tab.getOrCreateInstance(sel).show()
	})
	
	
	$("#mybutton2").click(function() {
	 var sel = document.querySelector('#nav-tab-manager')
	  bootstrap.Tab.getOrCreateInstance(sel).show()
	})
	 */</script>

	<script type="text/javascript">
	
		$(document).ready(function() {
			$("#student_ShortForm").submit(function(event) {
				event.preventDefault();
				//var f = $(this).serialize();

				let f = new FormData($(this)[0])
				console.log(f)
				 if ($("#student_ShortForm")[0].checkValidity() === false) {
				        event.stopPropagation();
				    } else {
				
				$.ajax({
					type : 'POST',
					enctype : 'multipart/form-data',
					url : 'DB/student_EntryFormDB.jsp',
					data : f,
					processData : false,
					contentType : false,
					cache : false,
					success : function(responce) {
						if (responce.trim() == '1') {
							 
							console.log(responce.trim())
							$("#student_ShortForm")[0].reset()
							Swal.fire({
								icon: 'success',
								  title: 'School Added Successfully ' ,
								  confirmButtonText: 'Ok',
								}).then((result) => {
								  /* Read more about isConfirmed, isDenied below */
								})
						} else {
							Swal.fire({
								icon: 'error',
								  title: 'School cannot be added Something went Wrong' ,
								  confirmButtonText: 'Ok',
								}).then((result) => {
								  /* Read more about isConfirmed, isDenied below */
								})
						}
					}
				})
				
			}
			$("#student_ShortForm").addClass('was-validated');

			})
		})
		 
		
		
		 $(document).ready(function() {
			$("#student_FullForm").submit(function(event) {
				event.preventDefault();
				//var f = $(this).serialize();
				let f = new FormData($(this)[0])
				console.log(f)
				 if ($("#student_FullForm")[0].checkValidity() === false) {
				        event.stopPropagation();
				    } else {
				
				$.ajax({
					type : 'POST',
					enctype : 'multipart/form-data',
					url : 'DB/student_EntryFormDB.jsp',
					data : f,
					processData : false,
					contentType : false,
					cache : false,
					success : function(responce) {
						if (responce.trim() == '1') {
							 
							console.log(responce.trim())
							//$("#studentShortForm")[0].reset()
							Swal.fire({
								icon: 'success',
								  title: 'School Added Successfully ' ,
								  confirmButtonText: 'Ok',
								}).then((result) => {
								  /* Read more about isConfirmed, isDenied below */
							})
						} else {
							Swal.fire({
								icon: 'error',
								  title: 'School cannot be added Something went Wrong' ,
								  confirmButtonText: 'Ok',
								}).then((result) => {
								  /* Read more about isConfirmed, isDenied below */
								})
						}
					}
				})
				
			}
			$("#student_FullForm").addClass('was-validated');

			})
		})
		  
		
		
		
	 $(document).ready(function() {
			$("#student_OtherDetailsForm").submit(function(event) {
				event.preventDefault();
				//var f = $(this).serialize();
				let f = new FormData($(this)[0])
				console.log(f)
				 if ($("#student_OtherDetailsForm")[0].checkValidity() === false) {
				        event.stopPropagation();
				    } else {
				
				$.ajax({
					type : 'POST',
					enctype : 'multipart/form-data',
					url : 'DB/student_EntryFormDB.jsp',
					data : f,
					processData : false,
					contentType : false,
					cache : false,
					success : function(responce) {
						if (responce.trim() == '1') {
							 
							console.log(responce.trim())
/* 							$("#student_OtherDetailsForm")[0].reset()
 */							Swal.fire({
								icon: 'success',
								  title: 'School Added Successfully ' ,
								  confirmButtonText: 'Ok',
								}).then((result) => {
								  /* Read more about isConfirmed, isDenied below */
								 })
						} else {
							Swal.fire({
								icon: 'error',
								  title: 'School cannot be added Something went Wrong' ,
								  confirmButtonText: 'Ok',
								}).then((result) => { 
								  /* Read more about isConfirmed, isDenied below */
								 })
						}
					}
				})
				
			}
			$("#student_OtherDetailsForm").addClass('was-validated');

			})
		}) 
		
		
		
		
		/* function searchStudent() {
   // Get the student name from the search box
   var searchName = $('#searchBox').val();

   // Fetch data from the Short Entry Form
   var studentFirstName = $('#studentFirstName').val();
   var studentMiddleName = $('#studentMiddleName').val();
   var studentLastName = $('#studentLastName').val();

   // Check if the student exists in the Short Entry Form
   if (studentFirstName === searchName) {
      // If the student exists, fill the relevant fields in the Full Entry Form
      $('#studentFirstName').val(studentFirstName);
      $('#studentMiddleName').val(studentMiddleName);
      $('#studentLastName').val(studentLastName);
      // Other fields for Full Entry Form
   } else {
      alert("Student not found");
   }
}

		 */
		
		/* 
		function searchStudent() {
			   // Get the student name from the search box
			   var searchName = $('#searchBox').val();

			   // Send an Ajax request to fetch data from the database
			   $.ajax({
			      url: 'DB/student_EntryFormDB.jsp',
			      type: 'POST',
			      data: { 'searchName': searchName },
			      success: function(data) {
			         // Parse the JSON data and fill the relevant fields in the Full Entry Form
			         var studentData = JSON.parse(data);
			         $('#studentFirstName').val(studentData.studentFirstName);
			         $('#studentMiddleName').val(studentData.studentMiddleName);
			         $('#studentLastName').val(studentData.studentLastName);
			        /*  $('#email').val(studentData.email);
			         $('#phone').val(studentData.phone);
			         */ // Other fields for Full Entry Form
			     /*  },
			      error: function() {
			         alert("Error fetching data from database");
			      }
			   });
			} */

		
	</script>

</body>
</html>