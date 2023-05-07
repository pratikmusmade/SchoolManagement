
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<form>
									<div class="row">
										<div class="col-12">
											<h5 class="form-title bg-primary">
												<span>Assign Teacher to class-Division </span>
											</h5>
										</div>
										<div class="col-12 col-sm-4">
											<div class="form-group">
												<label for="validationCustom01">Academic Year</label> <select
													class="form-control form-select" id="validationCustom01"
													required name="AcademicYear">

												</select>
												<div class="valid-feedback">Looks good!</div>
												<div class="invalid-feedback">Please Provide Section
													Name.</div>
											</div>
										</div>
										<div class="col-12 col-sm-4">
											<div class="form-group">
												<label for="validationCustom01">Select Section Name</label>
												<select class="form-control form-select"
													id="validationCustom01" required name="status">
													<option></option>
													<option></option>
												</select>

											</div>
										</div>
										<div class="col-12 col-sm-4">
											<div class="form-group">
												<label for="validationCustom01">Select Class Name</label> <select
													class="form-control form-select" id="validationCustom01"
													required name="status">
													<option></option>
													<option></option>
												</select>

											</div>
										</div>
										<div class="col-12 col-sm-4">
											<div class="form-group">
												<label for="validationCustom01">Select Division</label> <select
													class="form-control form-select" id="validationCustom01"
													required name="status">
													<option></option>
													<option></option>
												</select>

											</div>
										</div>
										<div class="col-12 col-sm-4">
											<div class="form-group">
												<label for="validationCustom01">Select Teacher</label> <select
													class="form-control form-select" id="validationCustom01"
													required name="status">
													<option></option>
													<option></option>
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

							<h5 class="card-title">Yearwise Assigned Teacher Class
								Division Details -</h5>
						</div>
						<div class="card-body">
							<div class="row p-3">
								<div class="col-lg-3 col-md-3">
									<div class="form-group text-center">
										<label class="fw-bold"> Academic Year </label> <select
											class="form-control form-select">
											<option value="">Please Select</option>
										</select>
									</div>
								</div>
								<div class="col-lg-3 col-md-4">
									<div class="form-group text-center">
										<label class="fw-bold">Teacher Name- </label><select
											class="form-control form-select">
											<option value="">Please Select</option>
										</select>
									</div>
								</div>
								<div class="col-lg-3 col-md-3">
									<div class="form-group text-center">
										<label class="fw-bold"> Enter Section/Class - </label> <input
											type="text" class="form-control"
											placeholder="Enter search Keyword..">
									</div>
								</div>

								<div class="col-lg-3 col-md-2 text-center">
									<div class="search-student-btn py-4">
										<button type="search" class="btn button-large btn-primary">Search</button>
									</div>
								</div>
							</div>
							<div class="table-responsive">
								<table class=" mb-0 table table-bordered ">
									<thead>

										<tr class="text-center">
											<th>Serial No.</th>
											<th>Section Name</th>
											<th>Class Name</th>
											<th>Division Name</th>
											<th>Total Strength</th>
											<th>Teacher Name</th>
											<th>Status</th>
											<th>Action</th>
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
											<td><%=rs.getString("nextAcademicYearDate")%></td>
											<td class="">
												<div class="actions ">
													<a
														href="update_Academic_Year.jsp?id=<%=rs.getInt("academicYearId")%>"
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
	</div>

</body>
</html>