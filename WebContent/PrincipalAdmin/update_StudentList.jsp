<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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


	<%
	Connection con = ConnectionProvider.getConnection();
	%>

	<div class="content container-fluid">

		<jsp:include page="./components/principalAdminHeader.jsp"></jsp:include>

		<jsp:include page="./components/principalAdminSidebar.jsp"></jsp:include>


		<div class="card bg-white">
			<div class="card-header">
				<h5 class="card-title">Student Entry Form</h5>
			</div>
			<div class="card-body">


				<form action="DB/update_StudentListDB.jsp" method="POST"
					id="student_ShortForm" enctype="multipart/form-data"
					class="needs-validation" novalidate style="margin-left: 500px;">

					<%
					String sql1 = "SELECT s.* , c.castCategoryName, r.religionName, a.academicYear, se.sectionName, st.className FROM studentdetails s  JOIN castcategory c ON s.castCategoryId = c.castCategoryId	 JOIN    religion r ON s.religionId = r.religionId  JOIN   academicyear a ON s.academicYearId = a.academicYearId JOIN section se ON s.sectionId = se.sectionId  JOIN studclass st ON s.classId  = st.classId where s.studentDetailsId=?";
					PreparedStatement ps1 = con.prepareStatement(sql1);
					ps1.setString(1, request.getParameter("studentDetailsId"));
					ResultSet rs1 = ps1.executeQuery();

					while (rs1.next()) {
					%>
					<input type="hidden" value="<%=rs1.getString("studentDetailsId")%>"
						id="studentDetailsId" name="studentDetailsId">

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fas fa-user"></i></span>Student First
								Name -</label> <input type="text" name="studentFirstName"
								class="form-control" id="validationCustom01"
								value="<%=rs1.getString("studentFirstName")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Provide Student Name.</div>

						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fas fa-user"></i></span>Student Middle
								Name -</label> <input type="text" name="studentMiddleName"
								class="form-control" id="validationCustom01"
								value="<%=rs1.getString("studentMiddleName")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Provide Student Middle
								Name.</div>

						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group ">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fas fa-user"></i></span>Student Last Name
								-</label> <input type="text" name="studentLastName" class="form-control"
								id="validationCustom01"
								value="<%=rs1.getString("studentLastName")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Provide Student Last
								Name.</div>
						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fas fa-user"></i></span>Online
								Registration Id -</label> <input type="number" name="registrationNumber"
								class="form-control" id="validationCustom01"
								value="<%=rs1.getString("onlineRegisteredId")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Provide Student
								Registration Id.</div>

						</div>
					</div>
					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fas fa-user"></i></span>Student PRN No -</label>
							<input type="number" name="studentPRNNumber" class="form-control"
								id="validationCustom01"
								value="<%=rs1.getString("studentPRNNumber")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Provide Student PRN
								No.</div>
						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fa-solid fa-person-half-dress"></i></span>Gender
								-</label> <select class="form-control form-select" name="gender"
								id="validationCustom01" required>
								<option value="<%=rs1.getString("gender")%>" disabled selected
									hidden><%=rs1.getString("gender")%></option>
								<option>Male</option>
								<option>Female</option>
							</select>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Select Gender.</div>
						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fa-solid fa-calendar-days"></i></span>Date
								Of Birth -</label> <input type="date" name="studentDOB"
								class="form-control" id="validationCustom01"
								value="<%=rs1.getString("dateOfBirth")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Provide Student Date
								Of Birth.</div>

						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fa-sharp fa-solid fa-location-dot"></i></span>BirthPlace
								-</label> <input type="text" name="BirthPlace" class="form-control"
								id="validationCustom01"
								value="<%=rs1.getString("studentBirthPlace")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Provide Student
								BirthPlace.</div>
						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fa-solid fa-flag"></i></span>Nationality
								-</label> <input type="text" name="nationality" class="form-control"
								id="validationCustom01"
								value="<%=rs1.getString("nationality")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Provide Student
								Nationality.</div>
						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fas fa-calendar-days"></i></span>Date Of
								Admission-</label> <input type="Date" name="dateOfAdmission"
								class="form-control" id="validationCustom01"
								value="<%=rs1.getString("dateOfAdmission")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Provide Student
								Admission Date.</div>

						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fa-solid fa-camera"></i></span>Student
								Photograph -</label> <img
								src="../assets<%=rs1.getString("studentPhotograph")%>"
								height="100" width="100"><br> <input type="file"
								name="studentPhoto" class="form-control" id="validationCustom01"
								value="<%=rs1.getString("studentPhotograph")%>">

						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fa-solid	fa-toggle-on"></i></span>Status
								-</label> <select class="form-control form-select"
								name="admissionStatus" id="validationCustom01" required>
								<option value="<%=rs1.getString("studentStatus")%>" disabled
									selected hidden><%=rs1.getString("studentStatus")%></option>
								<option>ADMITTED</option>

							</select>
						</div>
					</div>
					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"> <i class="fa-solid fa-address-card"></i>
							</span>Cast Category -</label> <select class="form-control form-select"
								name="caste" id="validationCustom01" required>
								<option value="<%=rs1.getInt("castCategoryId")%>" 
								><%=rs1.getString("castCategoryName")%></option>
								<%
								try {
									Connection con1 = ConnectionProvider.getConnection();
									Statement stmt = con1.createStatement();
									ResultSet rs = stmt.executeQuery("select * from castcategory");
									while (rs.next()) {
										
										out.println(rs.getInt("castCategoryId"));
										out.println(rs.getString("castCategoryName"));
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
							<div class="invalid-feedback">Please Select Cast Category.</div>
						</div>

					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"> <i class="fa-solid fa-address-card"></i>
							</span>Caste Name -</label> <input type="text" name="castName"
								class="form-control" id="validationCustom01"
								value="<%=rs1.getString("studentCast")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Provide Student Middle
								Name.</div>
						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"> <i class="fa-solid fa-address-card"></i>
							</span>Religion -</label> <select class="form-control form-select"
								name="studentReligion" id="validationCustom01" required>
								<option value="<%=rs1.getInt("religionId")%>" 
									><%=rs1.getString("religionName")%></option>
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
							<div class="invalid-feedback">Please Select Religion.</div>
						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group ">
							<label class="col-lg-3 col-form-label"><span class="px-1"><i
									class="fas fa-map-marked-alt"></i></span>Address - </label>
							<textarea name="Address" rows="6" cols="6" class="form-control"
								placeholder="Address...	" required><%=rs1.getString("studentAddress")%></textarea>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Enter Address.</div>
						</div>
					</div>


					<h5 class="card-title">Other Details -</h5>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fas fa-school"></i></span>Name Of
								Previous School -</label> <input type="text"
								name="studentPreviousSchool" class="form-control"
								id="validationCustom01"
								value="<%=rs1.getString("nameOfPreviousSchool")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Provide Previous
								School Name Name.</div>

						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fa-solid fa-id-card"></i></span>Aadhar No
								-</label> <input type="number" name="studentAdharNumber"
								class="form-control" id="validationCustom01"
								value="<%=rs1.getString("aadharNo")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Provide Student aadhar
								Number.</div>

						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fas fa-envelope"></i></span>Email -</label> <input
								type="email" name="studentEmail" class="form-control"
								id="validationCustom01"
								pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
								value="<%=rs1.getString("studentEmail")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Provide Student Email
								address.</div>
						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fas fa-mobile-android-alt"></i></span>Student
								Contact No -</label> <input type="number" name="studentContact"
								class="form-control" id="validationCustom01"
								value="<%=rs1.getString("studentContactNo")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Provide Student
								Contact Number.</div>

						</div>
					</div>


					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fas fa-user"></i></span>Student's Father
								Name -</label> <input type="text" name="studentFatherName"
								class="form-control" id="validationCustom01"
								value="<%=rs1.getString("studentFatherName")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Enter Student Father
								Name.</div>

						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fas fa-envelope"></i></span>Parents Email
								-</label> <input type="email" name="parentEmail" class="form-control"
								id="validationCustom01"
								pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
								value="<%=rs1.getString("parentsEmail")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Provide Parent's Email
								address.</div>
						</div>
					</div>
					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fas fa-mobile-android-alt"></i></span>Parent's
								Contact No(Father) -</label> <input type="number" name="parentContact"
								class="form-control" id="validationCustom01"
								value="<%=rs1.getString("fatherContactNo")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Provide Student
								Contact Number.</div>

						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fas fa-user"></i></span>Student's Mother
								Name -</label> <input type="text" name="studentMotherName"
								class="form-control" id="validationCustom01"
								value="<%=rs1.getString("studentMotherName")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Enter Student Mother
								Name.</div>

						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fas fa-mobile-android-alt"></i></span>Parent's
								Contact No(Mother) -</label> <input type="number" name="MotherContactNo"
								class="form-control" id="validationCustom01"
								value="<%=rs1.getString("motherContactNo")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Provide Mother Contact
								Number.</div>

						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="fa-solid fa-blender-phone"></i></span>Landline
								-</label> <input type="number" name="landlineNumber"
								class="form-control" id="validationCustom01"
								value="<%=rs1.getString("landline")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Enter Landline Number.</div>

						</div>
					</div>
					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-lg-3 col-form-label"><span
								class="px-1"><i class="fa-solid fa-calendar-days"></i></span>Academic
								Year - </label> <select class="form-control form-select"
								name="AcademicYear" id="validationCustom01" required>
								<option value="<%=rs1.getInt("academicYearId")%>" 
									><%=rs1.getString("academicYear")%></option>
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
							<div class="invalid-feedback">Please Provide valid Academic
								Year.</div>
						</div>
					</div>

					<div class="col-md-8">
						<div class="form-group">
							<label class="col-lg-3 col-form-label"><span class="px-1"><i
									class="fa-solid fa-user-plus"></i></span>Select Section - </label> <select
								class="form-control form-select" name="section"
								id="validationCustom01" required>
								<option value="<%=rs1.getInt("sectionId")%>" 
									><%=rs1.getString("sectionName")%></option>
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

					<div class="col-md-8">
						<div class="form-group">
							<label class="col-lg-3 col-form-label"><span class="px-1"><i
									class="fa-solid fa-graduation-cap"></i></span>Select Class - </label> <select
								class="form-control form-select" name="studentClass"
								id="validationCustom01" required>
								<option value="<%=rs1.getInt("classId")%>" 
									><%=rs1.getString("className")%></option>
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

					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="far fa-money-bill-alt"></i></span> Class
								Fees-</label> <input type="number" class="form-control"
								id="validationCustom01" name="classFees"
								value="<%=rs1.getString("classFees")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Enter Class Fees.</div>

						</div>
					</div>


					<div class="col-md-8">
						<div class="form-group">
							<label for="validationCustom01" class="col-form-label col-lg-3"><span
								class="px-1"><i class="far fa-money-bill-alt"></i></span>
								Hobbies-</label> <input type="text" class="form-control"
								id="validationCustom01" name="studentHobbies"
								value="<%=rs1.getString("studentHobbies")%>" required>
							<div class="valid-feedback">Looks good!</div>
							<div class="invalid-feedback">Please Enter student Hobbies
								.</div>

						</div>
					</div>


					<%
					}
					%>

					<div class="text-end">
						<button class="btn btn-primary" id="mybutton1" type="submit">Submit
							Form</button>
						<button class="btn btn-danger" type="reset">Reset</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="./components/principalAdminFooter.jsp"></jsp:include>

</body>
</html>