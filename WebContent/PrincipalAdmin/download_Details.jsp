<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<jsp:include page="./components/principalAdminLinks.jsp"></jsp:include></head>
<body>
	<div class="main-wrapper">
		<jsp:include page="./components/principalAdminHeader.jsp"></jsp:include>
		<jsp:include page="./components/principalAdminSidebar.jsp"></jsp:include>

		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title ">Download Student Details -</h5>
						</div>
						<div class="card-body">
							<form action="" method="POST" class="needs-validation" novalidate>

								<div class="row p-3">
									<div class="col-md-2">
										<div class="form-group text-center">
											<label class="fw-bold"> Academic Year </label> <select
												class="form-control form-select">
												<option value="" disabled selected hidden>Please
													Select</option>
											</select>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group text-center">
											<label class="fw-bold"> Selection Section </label> <select
												class="form-control form-select">
												<option value="" disabled selected hidden>Please
													Select</option>
											</select>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group text-center">
											<label class="fw-bold"> Select Class </label> <select
												class="form-control form-select">
												<option value="" disabled selected hidden>Please
													Select</option>
											</select>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group text-center">
											<label class="fw-bold"> Gender </label> <select
												class="form-control form-select">
												<option value="" disabled selected hidden>Please
													Select</option>
											</select>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group text-center">
											<label class="fw-bold"> Download Type </label> <select
												class="form-control form-select">
												<option value="" disabled selected hidden>Please
													Select</option>
											</select>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="card card-table">
								<div class="card-body">
									<div class="page-header">
										<div class="row align-items-center">
											<div class="col">
												<h6 class="card-title">Select Details-</h6>
											</div>
											<div class="col-auto text-end float-end ms-auto download-grp">
												<a href="#" class="btn btn-outline-primary me-2"><i
													class="fas fa-download"></i> Download</a>
											</div>
										</div>
									</div>
									<div class="table-responsive">
										<table class="table table-bordered mb-0">

											<tbody>
												<tr>
													<td><input type="checkbox" class="mx-2">Student
														Prn No</td>
													<td><input type="checkbox" class="mx-2">Student
														Registration Number</td>
													<td><input type="checkbox" class="mx-2">Section
														Name</td>
													<td><input type="checkbox" class="mx-2">Class
														Name</td>

												</tr>
												<tr>
													<td><input type="checkbox" class="mx-2">Division
														Name</td>

													<td><input type="checkbox" class="mx-2">Student
														First Name</td>

													<td><input type="checkbox" class="mx-2">Student
														Middle Name</td>
													<td><input type="checkbox" class="mx-2">Student
														Last Name</td>
												</tr>
												<tr>
													<td><input type="checkbox" class="mx-2">Student
														Roll No</td>
													<td><input type="checkbox" class="mx-2">Student
														Date Of Birth</td>
													<td><input type="checkbox" class="mx-2">Student
														Birth Place</td>
													<td><input type="checkbox" class="mx-2">Student
														Gender</td>
												</tr>
												<tr>
													<td><input type="checkbox" class="mx-2">Student
														Address</td>
													<td><input type="checkbox" class="mx-2">Student
														Father Name</td>
													<td><input type="checkbox" class="mx-2">Student
														Parents Mobile No</td>
													<td><input type="checkbox" class="mx-2">Student
														Mother Name</td>
												</tr>
												<tr>
													<td><input type="checkbox" class="mx-2">Student
														Mother Contact</td>
													<td><input type="checkbox" class="mx-2">Student
														Contact No</td>
													<td><input type="checkbox" class="mx-2">Student
														Parents Landline</td>
													<td><input type="checkbox" class="mx-2">Student
														Parents Email</td>
												</tr>
												<tr>
													<td><input type="checkbox" class="mx-2">Student
														Email</td>
													<td><input type="checkbox" class="mx-2">Student
														Admission Date</td>
													<td><input type="checkbox" class="mx-2">Student
														Religion</td>
													<td><input type="checkbox" class="mx-2">Student
														Nationality</td>
												</tr>
												<tr>
													<td><input type="checkbox" class="mx-2">Student
														Cast Name</td>
													<td><input type="checkbox" class="mx-2">Student
														Cast</td>
													<td><input type="checkbox" class="mx-2">Student
														Aadhar No</td>
													<td><input type="checkbox" class="mx-2">Student
														Prev School</td>
												</tr>
											</tbody>
										</table>
									</div>

								</div>
							</div>
						</div>

					</div>


				</div>

			</div>

		</div>
	</div>

	<jsp:include page="./components/principalAdminFooter.jsp"></jsp:include>
</body>
</html>