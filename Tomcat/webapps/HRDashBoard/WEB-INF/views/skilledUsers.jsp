<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.poi.util.SystemOutLogger"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="com.klr.hrd.dto.CandidateDto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<title>Login success</title>
</head>
<jsp:include page="header.jsp"></jsp:include>
	<div align="center">
	<br>
		<h3>Find Profiles Form Your Database</h3>
		<hr>
		<br>
		<br>
		
		<form action="skilledUsers">
			Skill : <input type="text" name="skill"  required="required"> 
			Minimum Experience : <input type="text" name="experience"  required="required"> 
					<input type="submit"
				value="Search">

		</form>
		<br>
		<div align="center"><h6>Showed results for Skills :${showskills } and Minimum Experience : ${me}</h6>  </div>
		<br>
		
		<table class="table table-hover" style="border: 3px solid black; margin: 0px 10px 0px 10px">
			<thead>
				<tr>
					<th scope="col">Serial No</th>
					<th scope="col">Reference No</th>
					<th scope="col">Personal Details</th>
					<th scope="col">Skills</th>
					<th scope="col">Other Details</th>
				</tr>
			</thead>
			<tbody>
<%
			ArrayList<CandidateDto> can=(ArrayList<CandidateDto>)request.getAttribute("det");
			int i=1;
		for(CandidateDto cc: can){  %>
				<tr>
					<th scope="row"><%=i++ %></th>
					<td><%= cc.getRef_No() %> </td>
					<td><%=
					"Name  : "+ cc.getFirst_Name()+" "+cc.getLast_Name()+"<br>"+
				    "Email : "+ cc.getEmail()+"<br>"+
				    "Mobile: "+ cc.getMobile()+"<br>"+
				    "Location:"+cc.getCurrent_Location()+"<br>"+
				    "Qualification: "+ cc.getEducation()+"<br>"+
				    "Date Of Birth:"+ cc.getDOB()
				    
					%></td>
					<td><%=cc.getSkills() %></td>
					<td><%=
					"Experience : "+ cc.getExperience()+"<br>"+
					"Role : "+ cc.getRole()+"<br>"+
					"Notice Period : "+ cc.getNotice_Period()+"<br>"+
					"Relocate to: "+ cc.getWilling_To_Relocate()+"<br>"+
					"LinkedIn : "+ cc.getLinkedIn()
					%></td>
				</tr>
		<%} %>	
				
			</tbody>
		</table>
	</div>

</body>
</html>