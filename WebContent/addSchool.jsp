<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>Preskool - Horizontal Form</title>

<link rel="shortcut icon" href="assets/img/favicon.png">

<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400;1,500;1,700&amp;display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" href="assets/plugins/feather/feather.css">

<link rel="stylesheet" href="assets/plugins/icons/flags/flags.css">

<link rel="stylesheet"
	href="assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

<link rel="stylesheet" href="assets/css/style.css">
</head>

<body>

	<div class="main-wrapper">
		<jsp:include page="./allcomponents/header.jsp"></jsp:include>


		<jsp:include page="./allcomponents/sidebar.jsp"></jsp:include>

		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">School Registration Form</h5>
							</div>
							
							<div class="card-body">
								<h5 class="card-title">Genral Information</h5>
								<form action="#">
									<div class="row">
										<div class="col-xl-6">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">School Registration Number</label>
												<div class="col-lg-9">
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">School Name</label>
												<div class="col-lg-9">
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Society Name</label>
												<div class="col-lg-9">
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">UIDIAS No:</label>
												<div class="col-lg-9">
													<input type="number" class="form-control">
												</div>
											</div>
										</div>
										<div class="col-xl-6">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Username</label>
												<div class="col-lg-9">
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Email</label>
												<div class="col-lg-9">
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Password</label>
												<div class="col-lg-9">
													<input type="password" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Repeat
													Password</label>
												<div class="col-lg-9">
													<input type="password" class="form-control">
												</div>
											</div>
										</div>
									</div>
									<h5 class="card-title">Address</h5>
									<div class="row">
										<div class="col-xl-6">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Address Line
													1</label>
												<div class="col-lg-9">
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Address Line
													2</label>
												<div class="col-lg-9">
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">State</label>
												<div class="col-lg-9">
													<input type="text" class="form-control">
												</div>
											</div>
										</div>
										<div class="col-xl-6">
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">City</label>
												<div class="col-lg-9">
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Country</label>
												<div class="col-lg-9">
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 col-form-label">Postal Code</label>
												<div class="col-lg-9">
													<input type="text" class="form-control">
												</div>
											</div>
										</div>
									</div>
									  <button class="btn btn-primary" type="submit">Submit form</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="assets/js/jquery-3.6.0.min.js"></script>

	<script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="assets/js/feather.min.js"></script>

	<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<script src="assets/plugins/select2/js/select2.min.js"></script>

	<script src="assets/js/script.js"></script>
</body>
</html>