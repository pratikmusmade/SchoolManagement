<%@page import="java.sql.*"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<jsp:include page="./components/principalAdminLinks.jsp"></jsp:include>
<link
	href="
https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.min.css
"
	rel="stylesheet"></link>
</head>
<body>
	<div class="main-wrapper">
		<jsp:include page="./components/principalAdminHeader.jsp"></jsp:include>
		<jsp:include page="./components/principalAdminSidebar.jsp"></jsp:include>
		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Add New Staff -</h5>
								<div class=" text-end float-end ms-auto">
									<span class="login-danger"><span class="fw-bold">*</span>
										this fields are required.</span>
								</div>
							</div>

							<div class="card-body">
								<form action="DB/addStaffDB.jsp">
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="staffProfile" class="col-form-label col-lg-3"><span
													class="px-2"><i class="fa-solid fa-camera"></i></span>Staff
													Profile Pic <span class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="file" name="staffProfilePic"
														class="form-control" id="staffProfilePic">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Staff
														Photo.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="employeeId" class="col-form-label col-lg-3"><span
													class="px-2"><i class="fa-solid fa-user"></i></span>Employee
													Id <span class="login-danger">*</span>-</label>
												<div class="col-lg-12">
													<input type="number" name="employeeId" class="form-control"
														id="employeeId">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Employee
														Id.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-1"><i
														class="fas fa-user-tag"></i></span> Staff Role <span
													class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="staffRoleId"
														id="validationCustom01" required>
														<option value="" disabled selected hidden>Please
															Select</option>

														<%
														try {
															Connection con = ConnectionProvider.getConnection();
															Statement stmt = con.createStatement();
															ResultSet rs = stmt.executeQuery("select * from staffrole");
															while (rs.next()) {
														%>

														<option value="<%=rs.getInt("staffRoleId")%>">
															<%=rs.getString("staffRole")%></option>
														<%
														}

														} catch (Exception e) {
														e.printStackTrace();
														}
														%>

													</select>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Student
														Photo.</div>
												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="StaffFirstName" class="col-lg-3"><span
													class="px-2"><i class="fa-sharp fa-solid fa-user"></i></span>First
													Name <span class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="text" name="firstName" class="form-control"
														id="StaffFirstName">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide First
														Name.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="StaffMiddleName" class="col-form-label col-lg-3"><span
													class="px-2"> <i class="fa-solid fa-user"></i>
												</span>Middle Name <span class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="text" name="middleName" class="form-control"
														id="StaffMiddleName">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Middle
														Name.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="StaffLastName"
													class="col-form-label col-lg-3"><span class="px-2">
														<i class="fa-solid fa-user"></i>
												</span>Last Name <span class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="text" name="lastName" class="form-control"
														id="StaffLastName">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Last
														Name.</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="staffGender"
													class="col-form-label col-lg-3"><span class="px-2"><i
														class="fas fa-calendar-alt"></i></span> Gender <span
													class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<select class="form-control form-select" name="gender"
														id="staffGender" required><option value=""
															disabled selected hidden>Please Select</option>
														<option>Male</option>
														<option>Female</option>
													</select>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Gender .</div>
												</div>
											</div>
										</div>

										<div class="col-xl-4">
											<div class="form-group row">
												<label for="staffDOB"
													class="col-form-label col-lg-3"><span class="px-2"><i
														class="fas fa-calendar-alt"></i></span> Date Of Birth <span
													class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="date" name="dateofBirth" class="form-control"
														id="staffDOB">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Staff
														Date Of Birth.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="staffQualification"
													class="col-form-label col-lg-3"><span class="px-2">
														<i class="fa-solid fa-user"></i>
												</span>Qualification <span class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="text" name="Qualification"
														class="form-control" id="staffQualification">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide
														Qualification.</div>
												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="staffEmail"
													class="col-form-label col-lg-3"><span class="px-2"><i
														class="fas fa-envelope"></i></span> Email <span
													class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="email" name="staffEmail" class="form-control"
														id="staffEmail">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Staff
														Email.</div>
												</div>
											</div>
										</div>

										<div class="col-xl-4">
											<div class="form-group row">
												<label for="staffMobileNo"
													class="col-form-label col-lg-3"><span class="px-2"><i
														class="fas fa-mobile"></i></span> Mobile No <span
													class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="number" name="moblileNo" class="form-control"
														id="staffMobileNo">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Staff
														Date Of Birth.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="staffSalary"
													class="col-form-label col-lg-3"><span class="px-2">
														<i class="fas fa-money-bill"></i></i>
												</span>Salary <span class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="text" name="studentCast" class="form-control"
														id="staffSalary">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Middle Name.</div>
												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="staffDesignation"
													class="col-form-label col-lg-3"><span class="px-2"><i
														class="fas fa-envelope"></i></span> Designation <span
													class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="text" name="staffDesignation"
														class="form-control" id="staffDesignation">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Staff
														Email.</div>
												</div>
											</div>
										</div>

										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-2"><i
														class="fas fa-mobile"></i></span> Cast Id <span
													class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="number" name="staffCastId"
														class="form-control" id="validationCustom01">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Staff
														Date Of Birth.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-2">
														<i class="fas fa-money-bill"></i>
												</span>Cast Category <span class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="text" name="casteCategory"
														class="form-control" id="validationCustom01">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Student
														Middle Name.</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="px-2"><i
														class="fas fa-envelope"></i></span> Joining Date <span
													class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="date" name="joiningDate" class="form-control"
														id="validationCustom01">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Staff
														Email.</div>
												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-xl-10">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"><span
													class="px-1"><i class="fas fa-map-marked-alt"></i></span>Address
													<span class="login-danger">*</span> - </label>
												<div class="col-lg-9">
													<textarea name="staffAddress" rows="6" cols="6"
														class="form-control" placeholder="Address..."></textarea>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Enter Address.</div>
												</div>
											</div>

										</div>
									</div>
									<div class="text-end">
										<button type="submit" class="btn btn-primary">Submit
											Form</button>
										<button type="reset" class="btn btn-danger">Reset</button>

									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<jsp:include page="./components/principalAdminFooter.jsp"></jsp:include>

	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#addAcademicYear").submit(function(event) {
				event.preventDefault();
				//let f = new FormData($("#addAcademicYear")[0])
				   if ($("#addAcademicYear")[0].checkValidity() === false) {
				        event.stopPropagation();
				    } else {
						$.ajax({
							type : 'POST',
							url : 'DB/academicYearDB.jsp',
							data:$("#addAcademicYear").serialize(),
							success : function(responce) {
								console.log(responce.trim())
								if (responce.trim() == "1") {
									$("#addAcademicYear")[0].reset()
									Swal.fire({
										icon: 'success',
										  title: 'New Staff Added Successfully ' ,
										  confirmButtonText: 'Ok',
										}).then((result) => {
										  /* Read more about isConfirmed, isDenied below */
											 window.location.reload();
										})
								} else {
									Swal.fire({
									icon: 'error',
									title: 'Staff cannot be added Please ReCheck the Information ' ,
									confirmButtonText: 'Ok',
									}).then((result) => {
									/* Read more about isConfirmed, isDenied below */
									})												
								}
							}
						})
				    }
				    $("#addAcademicYear").addClass('was-validated');
				});
			})
		
	</script>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js"></script>
</body>
</html>