<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="Header.jsp"%>
<title>Researcher</title>
</head>

<body>
	<table>
		<tr>
			<th>Publication</th>
		</tr>
		<c:forEach items="${publications}" var="pi">
			<tr>
				<td> <a href="PublicationsServlet?id=${pi.id}"> ${pi.id} </a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>