<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show profiles</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div align="center">
		<h1>Find Profiles Form Your Database</h1>
		<br>
		<hr>
		<br> <br>
		<h2>
			Show All Profiles : <a href="/HRDashBoard/skilledUsers?skill=all&experience=0"
				style="text-decoration: blink;"> Click Here </a>
		</h2>
		<br> <br> <br> <br>
		<form action="skilledUsers">
			Skill : <input type="text" name="skill"  required="required"> 
			Minimum Experience : <input type="text"  value="0" required="required"> 
					<input type="submit"
				value="Search">

		</form>


	</div>

</body>
</html>