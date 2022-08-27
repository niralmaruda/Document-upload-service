<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Document Upload</title>
</head>
<body>
<h2>Document Upload: </h2>
<form action="upload" method="post" enctype="multipart/form-data">
<pre>
Id: <input type="text" name="id"/>
Document: <input type="file" name="document"/>
<input type="submit" name="submit" value="Upload"/>
</pre>
</form>
<table>
<tr>
	<th>id</th>
	<th>name</th>
	<th>link</th>
</tr>
<c:forEach items="${documents}" var="document">
<tr>
<td>${document.id}</td>
<td>${document.name}</td>
<td><a href="download?id=${document.id}">download</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>