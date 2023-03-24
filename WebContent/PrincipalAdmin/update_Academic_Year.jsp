
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
							<%
								int id = Integer.parseInt(request.getParameter("id"));
								Connection con = ConnectionProvider.getConnection();
								Statement stmt = con.createStatement();
								ResultSet rs = stmt.executeQuery("select * from academicyear where academicYearId=" + id + ";");
								rs.next();
								%>
								<form>
									<div class="row">
										<div class="col-12">
											<h5 class="form-title">
												<span>Update Academic Year </span>
											</h5>
										</div>
										<div class="col-12 col-sm-4">
											<div class="form-group ">
												<label for="validationCustom01"> Starting Academic
													Year (Ex. 2020)</label>  <input
											type="text" name="academicYear"
											value="<%=rs.getString("academicyear")%>"
											class="form-control">
										
											</div>
										</div>
										<div class="col-12 col-sm-4">
											<div class="form-group">
												<label for="validationCustom01"> Academic Year Start
													Month Number </label>  <input
											type="text" name="startmonthNumber"
											value="<%=rs.getString("startmonthNumber")%>"
											class="form-control">
												

											</div>
										</div>
										<div class="col-12 col-sm-4">
											<div class="form-group">
												<label for="validationCustom01"> Next Academic Year
													Date</label>  <input
											type="text" name="nextAcademicYearDate"
											value="<%=rs.getString("nextAcademicYearDate")%>"
											class="form-control">
											</div>
										</div>
										<div class="col-12 text-end">
												<button type="submit" class="btn btn-primary">Update</button>
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
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js
"></script>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#updateAcademicYear').submit(function(event) {
				event.preventDefault();
				//let f = new FormData($("#addAcademicYear")[0])
				   if ($('#updateAcademicYear')[0].checkValidity() === false) {
				        event.stopPropagation();
				    } else {
						$.ajax({
							type : 'POST',
							url : "DB/updateacademicYearDB.jsp?id=<%=id%>",
							data:$('#updateAcademicYear').serialize(),
							success : function(responce) {
								console.log(responce.trim())
								if (responce.trim() == "1") {
									$('#updateAcademicYear')[0].reset()
									Swal.fire({
										icon: 'success',
										  title: 'AcademicYear Updated Successfully ' ,
										  confirmButtonText: 'Ok',
										}).then((result) => {
										  /* Read more about isConfirmed, isDenied below */
											 window.location.href="addAcademicYear.jsp";
										})
								} else {
									Swal.fire({
									icon: 'error',
									title: 'AcademicYear cannot be added ' ,
									confirmButtonText: 'Ok',
									}).then((result) => {
									/* Read more about isConfirmed, isDenied below */
									})												
								}
							}
						})
				    }
				    $('#updateAcademicYear').addClass('was-validated');
				});
			})
		
	</script>


</body>
</html>