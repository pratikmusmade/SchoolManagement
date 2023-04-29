
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

	<form id="awesome_form" action="./DB/addSchoolDB.jsp" method="POST">

		<input type="text" name="name" placeholder="Name"> <br> <input
			type="email" name="email" placeholder="Name"> <br> <input
			type="submit" />

	</form>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

</body>
<script type="text/javascript">
	$(document).ready(function() {
		$("#awesome_form").submit(function(e) {
			//console.log("submitted")
			$.ajax({
				type:"POST",
				url : '../DB/addSchoolDB.jsp',
				data:$("#awesome_form").serialize(),
				success: function(data){
					console.log(data)
				}
			})

			e.preventDefault();
		})
	})
</script>
</html>