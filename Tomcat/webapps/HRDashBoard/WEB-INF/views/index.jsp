<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>

<head>
    <meta charset="UTF-8">
    <title>Page Load Message</title>

  </head>
<body >
<jsp:include page="header.jsp"></jsp:include>
<br>

<div align="center">
<h1>
DASHBOARD
<br> 
<br> 
<br> 
Find Profiles Form Your Database :
<a href="/HRDashBoard/getdata" style="text-decoration:inherit;">
Click Here
</a>
<br>
<br>
<br> 
<span> Upload New Profiles To Database :
    <form method="post" action="/HRDashBoard/upload-file?status=428" enctype="multipart/form-data">
      <input type="file" id="file" name="file" accept=".xlsx, .xls" required>
      <input type="submit" value="Upload">
    </form>
    </span>
</h1> 
<c:if test="${status==428 }">
	<h4>
	Data Uploaded successfully into your database.. <br>
	${newusers} Records Added...<br>
	${duplicates } Duplicates Found...!!!
	</h4>
</c:if>
<br> 
   
</h1>
</div>
</body>
</html>
