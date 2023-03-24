
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
								<form>
									<div class="row">
										<div class="col-12">
											<h5 class="form-title">
												<span>Assign Section to Co-Ordinator</span>
											</h5>
										</div>
										<div class="col-12 col-sm-6">
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
										<div class="col-12 col-sm-6">
											<div class="form-group">
												<label for="validationCustom01"> Select Co-ordinator</label>
												<select class="form-control form-select" name="sectionId"
													id="validationCustom01" required>

													<%
													try {
														Connection con = ConnectionProvider.getConnection();
														Statement stmt = con.createStatement();
														ResultSet rs = stmt.executeQuery("select * from staff");
														while (rs.next()) {
													%>
													<option value="<%=rs.getInt("staffId")%>">
														<%=rs.getString("firstName")%>
														<%=rs.getString("middleName")%>
														<%=rs.getString("lastName")%>
													</option>
													<%
													}

													} catch (Exception e) {
													e.printStackTrace();
													}
													%>
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

			</div>
		</div>

		<jsp:include page="./components/principalAdminFooter.jsp"></jsp:include>
	</div>

</body>
</html>