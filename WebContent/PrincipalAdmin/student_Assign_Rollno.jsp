<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
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
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.min.css"
	rel="stylesheet"></link>
</head>
<body>
	<div class="main-wrapper">
		<jsp:include page="./components/principalAdminHeader.jsp"></jsp:include>
		<jsp:include page="./components/principalAdminSidebar.jsp"></jsp:include>
		<div class="page-wrapper">
			<div class="content container-fluid">

				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<form>
									<div class="row">
										<div class="col-12">
											<h5 class="form-title">
												<span>Assign Roll No</span>
											</h5>
										</div>
										<div class="col-12 col-sm-6">
											<div class="form-group">
												<label for="validationCustom01"> Academic Year - </label> <select
													class="form-control form-select" name="sectionId">
													<option></option>
													<option></option>
												</select>

											</div>
										</div>
										<div class="col-12 col-sm-6">
											<div class="form-group">
												<label for="validationCustom01"> Select Section </label> <select
													class="form-control form-select" name="sectionId">
													<option></option>
													<option></option>
												</select>
											</div>
										</div>
										<div class="col-12 col-sm-6">
											<div class="form-group">
												<label for="validationCustom01"> Select Class</label> <select
													class="form-control form-select">
													<option value="" disabled selected hidden>Please
														Select</option>
												</select>
											</div>
										</div>
										<div class="col-12 col-sm-6">
											<div class="form-group row">
												<label for="validationCustom01">Enter Student Name</label> <input
													type="text" class="form-control">
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
				<div class="row">
					<div class="col-sm-12">
						<div class="card card-table">
							<div class="card-body">
								<div class="row p-3">
									<div class="col-lg-1 col-md-1"></div>
									<div class="col-lg-4 col-md-4">
										<div>
											<label class="fw-bold"> Selected Class</label> <select
												class="form-control">
												<option value="" selected hidden>Selected class
													goes here</option>
											</select>
										</div>
									</div>

									<div class="col-lg-4 col-md-4">
										<div>
											<label class="fw-bold"> Select Division </label> <select
												class="form-control form-select">
												<option value="" disabled selected hidden>Please
													Select</option>
											</select>
										</div>
									</div>

									<div class="col-lg-1 col-md-1"></div>

								</div>


								<div class="table-responsive">
									<table class="table table-center  table-bordered">
										<thead>
											<tr class="text-center">
												<th>Sr No</th>
												<th>Academic Year</th>
												<th>PRN</th>
												<th>Full Name</th>
												<th>Class Name</th>
												<th>Roll No</th>
											</tr>
										</thead>
										<tbody>

										</tbody>
									</table>
								</div>
							</div>
							<div class="text-center p-2">
								<button class="btn btn-primary" type="submit">Assign</button>
								<button class="btn btn-danger" type="reset">Cancel</button>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

		<jsp:include page="./components/principalAdminFooter.jsp"></jsp:include>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js"></script>
	</div>


</body>
</html>