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
				<div class="page-header">
					<div class="row">
						<div class="col">
							<h3 class="page-title">Cast Form</h3>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<form id="addCastForm">
									<div class="row">
										<div class="col-12">
											<h5 class="form-title">
												<span>Add New Cast</span>
											</h5>
										</div>
										<div class="col-12 col-sm-6">
											<div class="form-group row">
												<label for="castName" class="">Cast Name</label> <input
													type="text" class="form-control" name="castCategoryName"
													id="castName" required>
												<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Provide Section
													Name.</div>
											</div>
										</div>
										<div class="col-12 col-sm-6">
											<div class="form-group">
												<label for="castStatus"> Status </label> <select
													class="form-control form-select" id="castStatus" required
													name="castCategoryStatus">
													<option>Active</option>
													<option>In-Active</option>
												</select>
												<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Provide Cast
													Name.</div>

											</div>
										</div>

										<div class="col-12 text-end">

											<button type="submit" class="btn btn-primary">Save</button>
											<button type="reset" class="btn btn-danger">Reset</button>

										</div>
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



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js"></script>


	<script type="text/javascript">
		$(document).ready(function() {
			$("#addCastForm").submit(function(event) {
				event.preventDefault();
				//let f = new FormData($("#addAcademicYear")[0])
				   if ($("#addCastForm")[0].checkValidity() === false) {
				        event.stopPropagation();
				    } else {
						$.ajax({
							type : 'POST',
							url : './DB/castDB.jsp',	
							data:$("#addCastForm").serialize(),
							success : function(responce) {
								console.log(responce.trim())
								if (responce.trim() == "1") {
									$("#addCastForm")[0].reset()
									Swal.fire({
										icon: 'success',
										  title: 'Cast Added Successfully ' ,
										  confirmButtonText: 'Ok',
										}).then((result) => {
										  /* Read more about isConfirmed, isDenied below */
											 window.location.reload();
										})
								} else {
									Swal.fire({
									icon: 'error',
									title: 'Cast cannot be added ' ,
									confirmButtonText: 'Ok',
									}).then((result) => {
									/* Read more about isConfirmed, isDenied below */
									})												
								}
							}
						})
				    }
				    $("addCastForm").addClass('was-validated');
				});
			})
		
	</script>





</body>
</html>