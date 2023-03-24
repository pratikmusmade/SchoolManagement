<%@page import="com.schoolmanagement.helper.ConnectionProvider"%>
<%@page import="com.schoolmanagement.dao.SectionDoa"%>
<%@page import="com.schoolmanagement.entities.Section"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<script
	src="
https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.all.min.js
"></script>
<link
	href="
https://cdn.jsdelivr.net/npm/sweetalert2@11.7.1/dist/sweetalert2.min.css
"
	rel="stylesheet"></link>
<body>
	<%
	String s1 = request.getParameter("sectionName");
	Section section = new Section(s1);
	SectionDoa dao = new SectionDoa(ConnectionProvider.getConnection());
	if (true) {
	%>
	<script type="text/javascript">


	Swal.fire({
		
		icon: 'success',
		  title: 'Section Added Successfully ' ,
		  confirmButtonText: 'Ok',
		}).then((result) => {
		  /* Read more about isConfirmed, isDenied below */
			window.location.href = "../principalAdminIndex.jsp";

		})

	</script>
	<% } %>


</body>