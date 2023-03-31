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
<jsp:include page="./components/principalAdminLinks.jsp"></jsp:include>
<body>
	<div class="main-wrapper">
<jsp:include page="./components/principalAdminHeader.jsp"></jsp:include>
<jsp:include page="./components/principalAdminSidebar.jsp"></jsp:include>

		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="page-header">
					<div class="row">
						<div class="col">
							<h3 class="page-title">Student Information -</h3>
						</div>
					</div>
				</div>
				<div class=" col-md-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title ">View Student Details -</h5>
						</div>
						<div class="row p-3">
							<div class="col-lg-3 col-md-2">
								<div class="form-group text-center">
									<label class="fw-bold"> Academic Year </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-2">
								<div class="form-group text-center">
									<label class="fw-bold"> Selection Section </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-2">
								<div class="form-group text-center">
									<label class="fw-bold"> Select Class </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-2">
								<div class="form-group text-center">
									<label class="fw-bold"> Gender </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-2">
								<div class="form-group text-center">
									<label class="fw-bold"> Download Type </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-2 text-center">
								<div class="search-student-btn py-4">
									<button type="search" class="btn button-large btn-primary">Search</button>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-center mb-0 table-bordered">
										<thead>
											<tr class="text-center">
												<th>Serial No.</th>
												<th>Academic Year</th>
												<th>PRN No</th>
												<th>Full Name</th>
												<th>Class & Division</th>
												<th>Status</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody></tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="./components/principalAdminFooter.jsp"></jsp:include></head>
</body>
</html>