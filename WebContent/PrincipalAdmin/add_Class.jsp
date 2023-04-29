
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
</head>
<body>
	<div class="main-wrapper">
		<jsp:include page="./components/principalAdminHeader.jsp"></jsp:include></head>
		
		<jsp:include page="./components/principalAdminSidebar.jsp"></jsp:include></head>
		
		<div class="page-wrapper">

			<div class="content container-fluid">

				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<form id="addClassForm">
									<div class="row">
										<div class="col-12">
											<h5 class="form-title">
												<span>Add New Class</span>
											</h5>
										</div>
										<div class="col-12 col-sm-4">
											<div class="form-group">
												<label for="validationCustom01"> Select Section</label> <select
													class="form-control form-select" name="sectionId"
													id="validationCustom01" required>

													<%
													try {
														Connection con = ConnectionProvider.getConnection();
														Statement stmt = con.createStatement();
														ResultSet rs = stmt.executeQuery("select * from section");
														while (rs.next()) {
													%>



													<option value="<%=rs.getInt("sectionId")%>">
														<%=rs.getString("sectionName")%></option>
													<%
													}

													} catch (Exception e) {
													e.printStackTrace();
													}
													%>
												</select>
											</div>
										</div>
										<div class="col-12 col-sm-4">
											<div class="form-group">
												<label for="validationCustom01"> Class Name</label> <input
													type="text" name="className" class="form-control"
													id="validationCustom01" required>
												<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Provide Section
													Name.</div>
											</div>
										</div>
										<div class="col-12 col-sm-4">
											<div class="form-group">
												<label for="validationCustom01">Status</label> <select
													class="form-control form-select" id="validationCustom01"
													required name="status">
													<option>Active</option>
													<option>In-Active</option>
												</select>
												<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Provide Section
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

				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title">Class Details -</h5>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table me-2 table-bordered">
									<thead class="">
										<tr class="text-center">
											<th>Serial No.</th>
											<th>Class Name</th>
											<th>Status</th>
											<th>Update</th>
										</tr>
									</thead>
									<tbody>
										<%
										try {
											int cnt = 1;
											Connection con = ConnectionProvider.getConnection();
											Statement stmt = con.createStatement();
											ResultSet rs = stmt.executeQuery("select * from studclass");
											while (rs.next()) {
										%>

										<tr class="text-center">
											<td><%=cnt%></td>
											<td><%=rs.getString("className")%></td>
											<td><%=rs.getString("status")%></td>
											<td class="text-center">
												<div class="actions">
													<a href="updateClass.jsp?id=<%=rs.getInt("classId")%>"
														class="btn btn-sm bg-danger-light"> <i
														class="feather-edit"></i>
													</a>
												</div>
											</td>
										</tr>


										<%
										cnt++;
										}

										} catch (Exception e) {
										e.printStackTrace();
										}
										%>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="./components/principalAdminFooter.jsp"></jsp:include></head>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js"></script>
	</div>


	<script type="text/javascript">
		$(document).ready(function() {
			$("#addClassForm").submit(function(event) {
				event.preventDefault();
				//let f = new FormData($("#addAcademicYear")[0])
				   if ($("#addClassForm")[0].checkValidity() === false) {
				        event.stopPropagation();
				    } else {
						$.ajax({
							type : 'POST',
							url : 'DB/addClassDB.jsp',
							data:$("#addClassForm").serialize(),
							success : function(responce) {
								console.log(responce.trim())
								if (responce.trim() == "1") {
									$("#addClassForm")[0].reset()
									Swal.fire({
										icon: 'success',
										  title: 'Class Added Successfully ' ,
										  confirmButtonText: 'Ok',
										}).then((result) => {
										  /* Read more about isConfirmed, isDenied below */
											 window.location.reload();
										})
								} else {
									Swal.fire({
									icon: 'error',
									title: 'Class cannot be added ' ,
									confirmButtonText: 'Ok',
									}).then((result) => {
									/* Read more about isConfirmed, isDenied below */
									})												
								}
							}
						})
				    }
				    $("addClassForm").addClass('was-validated');
				});
			})
	</script>

</body>
</html>