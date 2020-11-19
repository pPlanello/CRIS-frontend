<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@ include file="Bootstrap.jsp"%>
<body>
	<title>Publication name: ${publication.publicationName}</title>
	<table>
		<tr>
			<th>Id</th>
			<th>Title</th>
			<th>Name</th>
			<th>Date</th>
			<th>Authors</th>
			<th>Number of cite</th>
		</tr>
		<tr>
			<td><a href="ResearcherServlet?id=${publication.id}"> ${publication.id} </a></td>
			<td>${publication.title}</td>
			<td>${publication.publicationName}</td>
			<td>${publication.publicationDate}</td>
			<td>${publication.authors}</td>
			<td>${publication.citeCount}</td>
		</tr>
	</table>
</body>
</html>