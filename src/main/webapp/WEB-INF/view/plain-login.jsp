<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log in</title>

	<style>
		.failed{
			color:red;
		}
	</style>
</head>
<body>

	<c:if test="${param.error != null}">
		<i class="failed">sorry you have entered invalied password/username</i>
	
	
	</c:if>
	<form:form action="${pageContext.request.contextPath}/authenticateUser"
	method="POST">
	  <p>
	   	User name: <input type="text" name="username" />
	  </p>
	  <p>
	  	Password : <input type="password" name="password"/>
	  </p>
	  <input type="submit" value="login"/>
	
	</form:form>

	

</body>
</html>