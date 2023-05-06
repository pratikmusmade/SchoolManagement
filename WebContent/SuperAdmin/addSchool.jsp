<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="./components/superAdminLinks.jsp"></jsp:include>
<title>Super Admin</title>
</head>
<body>
	<div class="main-wrapper">
		<jsp:include page="./components/superAdminHeader.jsp"></jsp:include>
		<jsp:include page="./components/superAdminSidebar.jsp"></jsp:include>
		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Add New School -</h5>
								<div class=" text-end float-end ms-auto">
									<span class="login-danger"><span class="fw-bold">*</span>
										this fields are required.</span>
								</div>
							</div>

							<div class="card-body">
								<form class="needs-validation" id="addSchoolForm" novalidate>
									<div class="row">
										<div class="col-xl-6">
											<div class="form-group row">
												<label for="staffProfile" class="col-form-label col-lg-3"><span
													class="px-2"><i class="fas fa-university"></i></span>School
													Registration Number<span class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="number" name="staffProfilePic"
														class="form-control" id="staffProfilePic" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Staff
														Photo.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-6">
											<div class="form-group row">
												<label for="schoolName" class="col-form-label col-lg-3"><span
													class="px-2"><i class="fas fa-school"></i></span>School
													Name <span class="login-danger">*</span>-</label>
												<div class="col-lg-12">
													<input type="text" class="form-control" name="schoolName"
														id="validationCustom01" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide School
														Name.</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-6">
											<div class="form-group row">
												<label for="societyName" class="col-form-label col-lg-3"><span
													class="px-2"> <i class="fas fa-users"
														aria-hidden="true"></i>
												</span>Society Name <span class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="text" name="societyName" class="form-control"
														id="societyName" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Society
														Name.</div>
												</div>
											</div>
										</div>
										<div class="col-xl-6">
											<div class="form-group row">
												<label for="societyName" class="col-form-label col-lg-3"><span
													class="px-2"> <i class="fas fa-user-tie"></i>
												</span>Principal Name <span class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="text" name="middleName" class="form-control"
														id="societyName">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Society
														Name.</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-6">
											<div class="form-group row">
												<label for="schoolEmail" class="col-form-label col-lg-3"><span
													class="px-2"><i class="fa-solid fa-envelope"></i></span>
													School Email <span class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="email" class="form-control"
														id="validationCustom01"
														pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
														name="schoolEmail" required="">
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide valid
														Email-Id.</div>
												</div>
											</div>
										</div>

										<div class="col-xl-6">
											<div class="form-group row">
												<label for="mobileNo	" class="col-form-label col-lg-3"><span
													class="px-2"><i class="fa-solid fa-mobile"
														aria-hidden="true"></i></span>School Mobile <span
													class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="number" class="form-control"
														id="validationCustom01" name="mobileNo"
														pattern="[1-9]{1}[0-9]{9}" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Mobile
														No.</div>

												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-xl-6">
											<div class="form-group row">
												<label for="schoolCode" class="col-form-label col-lg-3"><span
													class="px-2"><i class="fas fa-school"
														aria-hidden="true"></i></span> School Code <span
													class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="number" class="form-control" name="schoolCode"
														id="schoolCode" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide School
														Code.</div>
												</div>
											</div>
										</div>

										<div class="col-xl-6">
											<div class="form-group row">
												<label for="UIDIASNo" class="col-form-label col-lg-3"><span
													class="px-2"><i class="fas fa-address-card"
														aria-hidden="true"></i></span> UIDIAS No <span
													class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="number" class="form-control" id="UIDIASNo"
														name="UIDIASNo" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide UIDIAS
														No.</div>
												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-xl-6">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-solid fa-school-circle-check"></i></span>Logo <span
													class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="file" id="validationCustom01"
														class="form-control" name="schoolLogo" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Logo.</div>
												</div>
											</div>
										</div>

										<div class="col-xl-6">
											<div class="form-group row">
												<label for="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-solid fa-school-circle-check"></i></span>Banner <span
													class="login-danger">*</span> -</label>
												<div class="col-lg-12">
													<input type="file" id="validationCustom01"
														class="form-control" name="schoolBanner" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Upload Banner.</div>
												</div>
											</div>
										</div>
									</div>


									<div class="row">
										<div class="col-xl-6">
											<div class="form-group row">
												<label id="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-sharp fa-solid fa-location-dot"></i></span>Address -</label>
												<div class="col-lg-12">
													<textarea rows="5" cols="5" class="form-control"
														placeholder="" id="validationCustom01" name="Address"
														required></textarea>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide Address.</div>
												</div>

											</div>

											<div class="form-group row">
												<label id="validationCustom01"
													class="col-lg-3 col-form-label"><span class="mx-2"><i
														class="fa-sharp fa-solid fa-city"></i></span>City -</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="City" required>
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
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="State" required>
													<div class="valid-feedback">Looks good!</div>
													<div class="invalid-feedback">Please Provide State
														Name.</div>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-lg-3 col-form-label"
													id="validationCustom01"><span class="mx-2"><i
														class="fa-solid fa-mailbox"></i></span>Postal Code -</label>
												<div class="col-lg-12">
													<input type="text" class="form-control"
														id="validationCustom01" name="postalCode" required>
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
										<button type="reset" class="btn btn-danger">Reset</button>

									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="./components/superAdminFooter.jsp"></jsp:include>




	<script
		src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#addSchoolForm").submit(function(event) {
				event.preventDefault();
				//var f	= $(this).serialize();
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