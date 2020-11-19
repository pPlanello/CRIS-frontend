
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<%@ include file="Bootstrap.jsp"%>
<%@ include file="Header.jsp"%>
<body>
	<div class="container">
		<h2>Login in CRIS</h2>
		<form action="LoginServlet" method="post">
			<div class="form-group">
				<p style="margin-bottom: -5px !important">
					<label for="email">Email</label>
				</p>
				<input type="text" name="email" placeholder="Email">

				<p style="margin-bottom: -5px !important">
					<label for="password">Password</label>
				</p>
				<input type="password" name="password" placeholder="Password">

			</div>
			<button type="submit" class="btn btn-secondary" style="margin-left:125px">Login</button>
		</form>
	</div>
</body>
</html>