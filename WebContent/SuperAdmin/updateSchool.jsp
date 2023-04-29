<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.min.css"
	rel="stylesheet"></link>
<jsp:include page="link.jsp"></jsp:include>
</head>
<body>
	<div class="main-wrapper">
		<jsp:include page="header.jsp"></jsp:include>

		<jsp:include page="sidebar.jsp"></jsp:include>

		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">School Registration Form</h5>
							</div>
							<%
							int id = Integer.parseInt(request.getParameter("id"));
							Connection con = ConnectionProvider.getConnection();
							Statement stmt = con.createStatement();
							ResultSet rs = stmt.executeQuery("select * from schools where schoolId=" + id + ";");
							rs.next();
							%>
							<div class="card-body">
								<h5 class="card-title">General Information</h5>
								<form id="addSchoolForm" class="needs-validation" novalidate
									enctype="multipart/form-data" method="POST">


									<div class="row">
										<div class="col-xl-6">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-form-label col-lg-3"><span class="mx-2"><i
														class="fas fa-university"></i></span>School Registration Number -</label>

												<div class="col-lg-12">
													<input type="number" name="schoolRegistrationNo"
														class="form-control" id="validationCustom01"
														value="<%=rs.getString("schoolRegistrationNo")%>" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide
														Registration Number.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fas fa-school"></i></span>School Name -</label>
												<div class="col-lg-12">
													<input type="text" class="form-control" name="schoolName"
														id="validationCustom01"
														value="<%=rs.getString("schoolName")%>" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide School
														Name.</div>

												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fas fa-users"></i></span>Society Name -</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01"
														value="<%=rs.getString("societyName")%>"
														name="societyName" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Society
														Name.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fas fa-school"></i></span>School Code -</label>
												<div class="col-lg-12">
													<input type="number" class="form-control" name="schoolCode"
														id="validationCustom01"
														value="<%=rs.getString("schoolCode")%>" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide School
														Code.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fas fa-address-card"></i></span>UIDIAS No -</label>
												<div class="col-lg-12">
													<input type="number" class="form-control"
														id="validationCustom01" name="UIDIASNo"
														value="<%=rs.getString("UIDIASNo")%>" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide UIDIAS
														No.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-6">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-solid fa-user-tie"></i></span>Principal Name -</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01"
														value="<%=rs.getString("principalName")%>"
														name="principalName" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide School
														Name.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-solid fa-envelope"></i></span>Email -</label>
												<div class="col-lg-12">
													<input type="email" class="form-control"
														id="validationCustom01"
														value="<%=rs.getString("schoolEmail")%>"
														pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
														name="schoolEmail" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide valid
														Email-Id.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-solid fa-mobile"></i></span>Mobile -</label>
												<div class="col-lg-12">
													<input type="number" class="form-control"
														id="validationCustom01"
														value="<%=rs.getString("mobileNo")%>" name="mobileNo"
														pattern="[1-9]{1}[0-9]{9}" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Mobile
														No.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-solid fa-school-circle-check"></i></span>Logo -</label>
												<div class="col-lg-12">
													<img src="../<%=rs.getString("schoolLogo")%>" width="80px"
														height="80px" class="rounded-circle">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Logo.</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-solid fa-school-circle-check"></i></span>Banner -</label>
												<div class="col-lg-12">
													<img src="../<%=rs.getString("schoolBanner")%>" width="80px"
														height="80px" class="rounded-circle">

													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Banner.</div>
												</div>
											</div>
										</div>
									</div>
									<h5 class="card-title">Address</h5>
									<div class="row">
										<div class="col-xl-6">
											<div class="form-group row">
												<label id="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-sharp fa-solid fa-location-dot"></i></span>Address -</label>
												<div class="col-lg-12">
													<textarea rows="5" cols="5" class="form-control"
														placeholder="" id="validationCustom01" name="Address"
														required><%=rs.getString("Address")%></textarea>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Address.</div>
												</div>

											</div>

											<div class="form-group row">
												<label id="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-sharp fa-solid fa-city"></i></span>City -</label>
												<div class="col-lg-9">
													<input type="text" class="form-control"
														id="validationCustom01" name="City"
														value="<%=rs.getString("City")%>" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide City
														Name.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-6">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label"
													id="validationCustom01"><span class="mx-2"><i
														class="fa-solid fa-tree-city"></i></span>State -</label>
												<div class="col-lg-9">
													<input type="text" class="form-control"
														id="validationCustom01" value="<%=rs.getString("State")%>"
														name="State" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide State
														Name.</div>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-lg-3 col-form-label"
													id="validationCustom01"><span class="mx-2"><i
														class="fa-sharp fa-solid fa-mailbox-flag-up"></i></span>Postal
													Code -</label>
												<div class="col-lg-9">
													<input type="text" class="form-control"
														id="validationCustom01"
														value="<%=rs.getString("postalCode")%>" name="postalCode"
														required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Postal
														Code.</div>
												</div>
											</div>
										</div>
									</div>
									<div class="text-end">
										<button type="submit" class="btn btn-primary">Submit
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

	<jsp:include page="footer.jsp"></jsp:include>
	<script
		src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#addSchoolForm").submit(function(event) {
				event.preventDefault();
				//var f = $(this).serialize();
				let f = new FormData($(this)[0])
				console.log(f)
				if(f[0].checkValidity()){
				
				
				$.ajax({
					type : 'POST',
					enctype : 'multipart/form-data',
					url : '../DB/addSchoolDB.jsp',
					data : f,
					processData : false,
					contentType : false,
					cache : false,
					success : function(responce) {
						if (responce.trim() == '1') {
							 $("#addSchoolForm")[0].reset()
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

			})
		
	</script>

</body>
</html>