<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="Bootstrap.jsp"%>
<%@ include file="Header.jsp"%>
<title>Researcher</title>
</head>

<body>

	<table>
		<tr>
			<th>Researcher</th>
			<th>URL</th>
		</tr>
		<tr>
			<td>${ri.name}${ri.lastName}</td>
			<td><a href="${ri.scopusURl}">${ri.scopusURl}</a></td>
		</tr>
	</table>
	<br>
	<br>
	<br>
	<table>
		<tr>
			<th>Publication</th>
			<th>Name</th>
		</tr>
		<c:forEach items="${publications}" var="pi">
			<tr>
				<td><a href="PublicationsServlet?id=${pi.id}"> ${pi.id} </a></td>
				<td style="text-align: center">${pi.publicationName}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>