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
												<span>Caste Category-wise Report </span>
											</h5>
										</div>
										<div class="col-12 col-md-12">
											<div class="form-group ">
												<label for="validationCustom01"> Select Academic
													Year</label> <select class="form-control form-select"
													name="sectionId">
													<option></option>
													<option></option>
												</select>

											</div>
										</div>

										<div class="col-12 text-end">
											<button type="submit" class="btn btn-primary">Search</button>
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

							<h5 class="card-title">Caste Categorywise Report for
								Academic Year -</h5>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class=" mb-0 table table-bordered ">
									<thead>

										<tr class="text-center">
											<th>Serial No.</th>
											<th>Caste Category</th>
											<th>No Of Students</th>
										</tr>
									</thead>
									<tbody>
										<%
										try {
											int cnt = 1;
											Connection con = ConnectionProvider.getConnection();
											Statement stmt = con.createStatement();
											ResultSet rs = stmt.executeQuery("select * from academicyear");
											while (rs.next()) {
										%>

										<tr class="text-center">
											<td><%=cnt%></td>
											<td><%=rs.getString("academicYear")%></td>
											<td><%=rs.getString("startmonthNumber")%></td>
											
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
						<div class="text-center my-2 download-grp">
							<a href="#" class="btn btn-outline-primary "><i
								class="fas fa-download"></i> Download</a> <a href="#"
								class="btn btn-danger me-2"><i class="fa-solid fa-print"></i>
								Print</a>
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