<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<jsp:include page="./components/principalAdminLinks.jsp"></jsp:include>
<title>Add Section</title>
</head>
<body>
	<div class="main-wrapper">


		<jsp:include page="./components/principalAdminHeader.jsp"></jsp:include>
		<jsp:include page="./components/principalAdminSidebar.jsp"></jsp:include>



		<div class="page-wrapper">
			<div class="content container-fluid">


				<div class="row  pb-3">
					<div class="col">
						<h2 >Section</h2>
					</div>
				</div>


				<div class="student-group-form">
					<div class="row">

						<div class="col-lg-3 col-md-6">
							<div class="form-group">
								<input type="text" class="form-control py-2"
									placeholder="Add Section">
							</div>
						</div>

						<div class="col-lg-2">
							<div class="search-student-btn">
								<button type="btn" class="btn btn-success px-5 py-2">Add</button>
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
											<h3 class="page-title">All Section</h3>
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

	<jsp:include page="./components/principalAdminFooter.jsp"></jsp:include>
</body>
</html>