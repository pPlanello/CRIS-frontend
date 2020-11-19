<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="Header.jsp"%>
<%@ include file="Bootstrap.jsp"%>
<title>Insert title here</title>
</head>

<body>
	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Last name</th>
			<th>URL</th>
			<th>Email</th>
		</tr>
		<c:forEach items="${researcherslist}" var="ri">
			<tr>
				<td> <a href="ResearcherServlet?id=${ri.id}"> ${ri.id} </a></td>
				<td>${ri.name}</td>
				<td>${ri.lastName}</td>
				<td> <a href="${ri.scopusURl}">${ri.scopusURl}</a></td>
				<td>${ri.email}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>