<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from preschool.dreamguystech.com/template/departments.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 17 Jan 2023 06:22:54 GMT -->

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,   -scalable=0">
<title>Preskool - Departments</title>

<link rel="shortcut icon" href="../assets/img/favicon.png">

<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400;1,500;1,700&amp;display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="../assets/plugins/bootstrap/css/bootstrap.min.css"> 

<link rel="stylesheet" href="../assets/plugins/feather/feather.css">

<link rel="stylesheet" href="../assets/plugins/icons/flags/flags.css">

<link rel="stylesheet"
	href="../assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet"
	href="../assets/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet"
	href="../assets/plugins/datatables/datatables.min.css">

<link rel="stylesheet" href="../assets/css/style.css">
<link rel="stylesheet"
	href="../assets/plugins/select2/css/select2.min.css">



</head>

<body>

	<div class="main-wrapper">


		<jsp:include page="./components/principalAdminHeader.jsp"></jsp:include>
		<jsp:include page="./components/principalAdminSidebar.jsp"></jsp:include>



		<div class="page-wrapper">
			<div class="content container-fluid">

			
					<div class="row  pb-3">
						<div class="col">
							<h2 class="">Class</h2>
						</div>
					</div>
				

				<div class="student-group-form">
					<div class="row">
							<div class="col-lg-3 col-md-6">
								<select class="form-control">
									<option>Select Section </option>
									<option value="1">1st</option>
									<option value="2">2nd</option>
									<option value="3">3rd</option>
									<option value="4">4th</option>
								</select>
						
						</div>
						<div class="col-lg-3 col-md-6">
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Add Class">
							</div>
						</div>
						
						<div class="col-lg-2">
							<div class="search-student-btn">
								<button type="btn" class="btn btn-primary"> Add </button>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="card card-table">
							<div class="card-body">

								<div class="page-header">
									<div class="row align-items-center">
										<div class="col">
											<h3 class="page-title">All Classes</h3>
										</div>
									
									</div>
								</div>

								<table
									class="table border-0 star-student table-hover table-center mb-0 datatable table-striped">
									<thead class="student-thread">
										<tr>
											<th>
												<div class="form-check check-tables">
													<input class="form-check-input" type="checkbox"
														value="something">
												</div>
											</th>
											<th>ID</th>
											<th>Name</th>
											<th>HOD</th>
											<th>Started Year</th>
											<th>No of Students</th>
											<th class="text-end">Action</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<div class="form-check check-tables">
													<input class="form-check-input" type="checkbox"
														value="something">
												</div>
											</td>
											<td>PRE2209</td>
											<td>
												<h2>
													<a>Computer Science Engg</a>
												</h2>
											</td>
											<td>Aaliyah</td>
											<td>1995</td>
											<td>180</td>
											<td class="text-end">
												<div class="actions">
													<a href="javascript:;"
														class="btn btn-sm bg-success-light me-2"> <i
														class="feather-eye"></i>
													</a> <a href="edit-department.html"
														class="btn btn-sm bg-danger-light"> <i
														class="feather-edit"></i>
													</a>
												</div>
											</td>
										</tr>
										<tr>
											<td>
												<div class="form-check check-tables">
													<input class="form-check-input" type="checkbox"
														value="something">
												</div>
											</td>
											<td>PRE2213</td>
											<td>
												<h2>
													<a>Mechanical Engg</a>
												</h2>
											</td>
											<td>Malynne</td>
											<td>1999</td>
											<td>240</td>
											<td class="text-end">
												<div class="actions">
													<a href="javascript:;"
														class="btn btn-sm bg-success-light me-2"> <i
														class="feather-eye"></i>
													</a> <a href="edit-department.html"
														class="btn btn-sm bg-danger-light"> <i
														class="feather-edit"></i>
													</a>
												</div>
											</td>
										</tr>
										<tr>
											<td>
												<div class="form-check check-tables">
													<input class="form-check-input" type="checkbox"
														value="something">
												</div>
											</td>
											<td>PRE2143</td>
											<td>
												<h2>
													<a>Electrical Engg</a>
												</h2>
											</td>
											<td>Levell Scott</td>
											<td>1994</td>
											<td>163</td>
											<td class="text-end">
												<div class="actions">
													<a href="javascript:;"
														class="btn btn-sm bg-success-light me-2"> <i
														class="feather-eye"></i>
													</a> <a href="edit-department.html"
														class="btn btn-sm bg-danger-light"> <i
														class="feather-edit"></i>
													</a>
												</div>
											</td>
										</tr>
										<tr>
											<td>
												<div class="form-check check-tables">
													<input class="form-check-input" type="checkbox"
														value="something">
												</div>
											</td>
											<td>PRE2431</td>
											<td>
												<h2>
													<a>Civil Engg</a>
												</h2>
											</td>
											<td>Minnie</td>
											<td>2000</td>
											<td>195</td>
											<td class="text-end">
												<div class="actions">
													<a href="javascript:;"
														class="btn btn-sm bg-success-light me-2"> <i
														class="feather-eye"></i>
													</a> <a href="edit-department.html"
														class="btn btn-sm bg-danger-light"> <i
														class="feather-edit"></i>
													</a>
												</div>
											</td>
										</tr>
										<tr>
											<td>
												<div class="form-check check-tables">
													<input class="form-check-input" type="checkbox"
														value="something">
												</div>
											</td>
											<td>PRE1534</td>
											<td>
												<h2>
													<a>MCA</a>
												</h2>
											</td>
											<td>Lois A</td>
											<td>1992</td>
											<td>200</td>
											<td class="text-end">
												<div class="actions">
													<a href="javascript:;"
														class="btn btn-sm bg-success-light me-2"> <i
														class="feather-eye"></i>
													</a> <a href="edit-department.html"
														class="btn btn-sm bg-danger-light"> <i
														class="feather-edit"></i>
													</a>
												</div>
											</td>
										</tr>
										<tr>
											<td>
												<div class="form-check check-tables">
													<input class="form-check-input" type="checkbox"
														value="something">
												</div>
											</td>
											<td>PRE2153</td>
											<td>
												<h2>
													<a>BCA</a>
												</h2>
											</td>
											<td>Calvin</td>
											<td>1992</td>
											<td>152</td>
											<td class="text-end">
												<div class="actions">
													<a href="javascript:;"
														class="btn btn-sm bg-success-light me-2"> <i
														class="feather-eye"></i>
													</a> <a href="edit-department.html"
														class="btn btn-sm bg-danger-light"> <i
														class="feather-edit"></i>
													</a>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>

			<footer>
				<p>Copyright © 2022 Dreamguys.</p>
			</footer>

		</div>

	</div>


    <script src="../assets/js/jquery-3.6.0.min.js"></script>

    <script src="../assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="../assets/js/feather.min.js"></script>

    <script src="../assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <script src="../assets/plugins/select2/js/select2.min.js"></script>

    <script src="../assets/js/script.js"></script>
	
</body>

<!-- Mirrored from preschool.dreamguystech.com/template/departments.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 17 Jan 2023 06:22:54 GMT -->

</html>