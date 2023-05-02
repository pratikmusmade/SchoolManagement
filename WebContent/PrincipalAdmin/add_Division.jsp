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
	href="
https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.min.css
"
	rel="stylesheet"></link>
</head>
<body>

	<%
	Connection con = ConnectionProvider.getConnection();
	Statement stmt = con.createStatement();
	%>
	<div class="main-wrapper">
		<jsp:include page="./components/principalAdminHeader.jsp"></jsp:include>
		<jsp:include page="./components/principalAdminSidebar.jsp"></jsp:include>
		<div class="page-wrapper">

			<div class="content container-fluid">

				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<form id="addDivision">
									<div class="row">
										<div class="col-12">
											<h5 class="form-title">
												<span>Add New Division</span>
											</h5>
										</div>
										<div class="col-12 col-sm-6">
											<div class="form-group ">
												<label> Select Section</label> <select class="form-control"
													name="sectionId">

													<%
													try {

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
										<div class="col-12 col-sm-6">
											<div class="form-group">
												<label> Select Class</label> <select
													class="form-control form-select" name="classId">


													<%
													try {
														ResultSet rs = stmt.executeQuery("select * from studClass");
														while (rs.next()) {
													%>



													<option value="<%=rs.getInt("classId")%>">
														<%=rs.getString("className")%></option>
													<%
													}

													} catch (Exception e) {
													e.printStackTrace();
													}
													%>
												</select>
											</div>
										</div>
										<div class="col-12 col-sm-6">
											<label for="validationCustom01"> Division Name</label> <input
												type="text" id="validationCustom01" name="division"
												class="form-control" required>
											<div class="valid-feedback">Looks good!</div>
											<div class="invalid-feedback">Please Enter Division
												Name.</div>
										</div>
										<div class="col-12 col-sm-6">
											<div class="form-group row">
												<label for="validationCustom01">Status</label> <select
													class="form-control form-select" id="validationCustom01"
													required name="status">
													<option>Active</option>
													<option>In-Active</option>
												</select>
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

							<h5 class="card-title">Division Details -</h5>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class=" mb-0 table table-bordered">
									<thead class="bg-primary">

										<tr class="text-center">
											<th>Serial No.</th>
											<th>Division Name</th>
											<th>Status</th>
											<th>Update</th>
										</tr>
									</thead>
									<tbody>
										<%
										try {
											int cnt = 1;
											ResultSet rs = stmt.executeQuery("select * from division");
											while (rs.next()) {
										%>

										<tr class="text-center">
											<td><%=cnt%></td>
											<td><%=rs.getString("division")%></td>
											<td><%=rs.getString("divisionStatus")%></td>
											<td class="">
												<div class="actions ">
													<a
														href="update_Division.jsp?id=<%=rs.getInt("divisionId")%>"
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

		<jsp:include page="./components/principalAdminFooter.jsp"></jsp:include>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js"></script>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#addDivision").submit(function(event) {
				event.preventDefault();
				//let f = new FormData($("#addAcademicYear")[0])
				   if ($("#addDivision")[0].checkValidity() === false) {
				        event.stopPropagation();
				    } else {
						$.ajax({
							type : 'POST',
							url : 'DB/addDivisionDB.jsp',
							data:$("#addDivision").serialize(),
							success : function(responce) {
								console.log(responce.trim())
								if (responce.trim() == "1") {
									$("#addDivision")[0].reset()
									Swal.fire({
										icon: 'success',
										  title: 'Division Added Successfully ' ,
										  confirmButtonText: 'Ok',
										}).then((result) => {
										  /* Read more about isConfirmed, isDenied below */
											 window.location.reload();
										})
								} else {
									Swal.fire({
									icon: 'error',
									title: 'Division cannot be added ' ,
									confirmButtonText: 'Ok',
									}).then((result) => {
									/* Read more about isConfirmed, isDenied below */
									})												
								}
							}
						})
				    }
				    $("#addDivision").addClass('was-validated');
				});
			})
		
	</script>

</body>
</html>