<%@page import="com.schoolmanagement.helper.DataBaseConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="./components/superAdminLinks.jsp"></jsp:include>
<title>Super Admin</title>
</head>
<body>

	<div class="main-wrapper">
				<jsp:include page="./components/superAdminHeader.jsp"></jsp:include>
				<jsp:include page="./components/superAdminSidebar.jsp"></jsp:include>
		<div class="page-wrapper">
			<div class="content container-fluid">

			</div>
			
			<%= DataBaseConnectionProvider.getConnection() %>
			
		</div>
	</div>
	<jsp:include page="./components/superAdminFooter.jsp"></jsp:include>
</body>
</html>