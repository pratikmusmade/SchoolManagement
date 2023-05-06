<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="./components/principalAdminLinks.jsp"></jsp:include>
</head>
<body>
	<div class="main-wrapper">
		<jsp:include page="./components/principalAdminHeader.jsp"></jsp:include>
		<jsp:include page="./components/principalAdminSidebar.jsp"></jsp:include>
		<div class="page-wrapper">

			<div class="content container-fluid">
				<div class=" col-md-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title ">Upload New Timetable -</h5>
						</div>
						<div class="card-body">
							<form id="timetableForm" class="needs-validation" method="POST"
								role="form" enctype="multipart/form-data" novalidate>
								<div class="row p-3">
									<div class="col-lg-3 col-md-3">
										<div class="form-group text-center">
											<label class="fw-bold"> Selection Section </label> <select
												class="form-control form-select">
												<option value="" disabled selected hidden>Please
													Select</option>
											</select>
										</div>
									</div>
									<div class="col-lg-3 col-md-3">
										<div class="form-group text-center">
											<label class="fw-bold"> Select Class </label> <select
												class="form-control form-select">
												<option value="" disabled selected hidden>Please
													Select</option>
											</select>
										</div>
									</div>
									<div class="col-lg-3 col-md-4">
										<div class="form-group text-center">
											<label class="fw-bold"> Upload Timetable </label> <input
												type="file" name="" class="form-control"
												id="validationCustom01" required>
										</div>
									</div>
									<div class="col-lg-3 col-md-2">
										<div class="form-group text-center">
											<label class="fw-bold">File Name </label> <input type="text"
												name="" class="form-control" id="validationCustom01"
												disabled required>
										</div>
									</div>
									<div class="text-end p-2">
										<button class="btn btn-primary" type="submit">Upload</button>
										<button class="btn btn-danger" type="reset">Reset</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class=" col-md-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title ">Classwise Timetable Details -</h5>
						</div>
						<div class="row p-3">
							<div class="col-lg-3 col-md-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Academic Year </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-3">
								<div class="form-group text-center">
									<label class="fw-bold"> Select Section </label> <select
										class="form-control form-select">
										<option value="" disabled selected hidden>Please
											Select</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 col-md-4">
								<div class="form-group text-center">
									<label class="fw-bold"> Select Class </label> <select
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

						<div class="card-body">
							<div class="table-responsive">
								<table class=" mb-0 table table-bordered text-center">
									<thead class="bg-primary">
										<tr class="text-center">
											<th>Serial No.</th>
											<th>Class Name</th>
											<th>Uploaded by</th>
											<th>Date & Time</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<jsp:include page="./components/principalAdminFooter.jsp"></jsp:include>
	</div>
</body>
</html>