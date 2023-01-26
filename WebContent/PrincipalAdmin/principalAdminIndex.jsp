<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="./components/principalAdminLinks.jsp"></jsp:include>
<title>principal Admin</title>
</head>
<body>
	<div class="main-wrapper">
		<div class="page-wrapper">
		<%=ConnectionProvider.getConnection() %>
			<div class="content container-fluid">
				<jsp:include page="./components/principalAdminHeader.jsp"></jsp:include>
				<jsp:include page="./components/principalAdminSidebar.jsp"></jsp:include>
			</div>
		</div>
	</div>
	<jsp:include page="./components/principalAdminFooter.jsp"></jsp:include>
</body>
</html>