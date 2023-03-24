
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
							<div class="card-header">
								<h5 class="card-title">Update Section Details -</h5>
							</div>
							<div class="card-body">
								<%
								int id = Integer.parseInt(request.getParameter("id"));
								Connection con = ConnectionProvider.getConnection();
								Statement stmt = con.createStatement();
								ResultSet rs = stmt.executeQuery("select * from section where sectionId=" + id + ";");
								rs.next();
								%>
								<form action="DB/updateSectionDB.jsp?id=<%=id%>" method="post">
									<div class="form-group row">
										<label> Section Name</label> <input type="text"
											name="sectionName" value="<%=rs.getString("sectionName")%>"
											class="form-control">
									</div>


									<div class="form-group row">
										<label for="validationCustom01">Status</label> <select
											class="form-control" id="validationCustom01" required
											name="status" value="<%=rs.getString("status")%>">
											<option>Active</option>
											<option>In-Active</option>
										</select>
										<div class="valid-feedback">Looks good!</div>
										<div class="invalid-feedback">Please Provide Section
											Name.</div>
									</div>

									<div class="text-end">
										<button type="submit" class="btn btn-primary">Update</button>
										<button type="submit" class="btn btn-danger">Reset</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<jsp:include page="./components/principalAdminFooter.jsp"></jsp:include></head>
	</div>

</body>
</html>