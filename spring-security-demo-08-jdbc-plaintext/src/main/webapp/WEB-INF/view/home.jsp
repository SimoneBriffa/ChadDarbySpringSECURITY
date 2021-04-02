<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">


<title>luv2Code Company Home Page</title>

</head>

<body>

		<h2>luv2Code Company Home Page</h2>
		<hr>
		
		<p>
		Welcome to the luv2Code company home page!
		</p>
		
		<hr>
		
			<!-- display user name and role -->
			
			<p>
				User: <security:authentication property="principal.username" />
				<br><br>
				Role(s): <security:authentication property="principal.authorities" />
			</p>
			
			<hr>
			
			<!-- Add a link to point to /leaders (page for managers) -->
			
			<!-- MOSTRIAMO IL LINK SOLO A CHI HA LE AUTORIZZAZIONI -->
			
			<security:authorize access="hasRole('MANAGER')">
			
			<p>
				<a href="${pageContext.request.contextPath}/leaders">LeaderShip Manager</a>
						(Only for manager peeps)
			</p>
			
			</security:authorize>
			
			<br>
			
			<security:authorize access="hasRole('ADMIN')">
			
			<p>
				<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
						(Only for admin peeps)
			</p>
			
			</security:authorize>
			
		<hr>
		
		
		<!-- Add a logout button -->
		
		<form:form action="${pageContext.request.contextPath}/logout" method="POST">
		
			<input type="submit" value="Logout"/>
		
		</form:form>
</body>



</html>