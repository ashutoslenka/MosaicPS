<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<title>Login Page</title>
	<style>
     	<%@ include file="../css/login.css"%>
	</style>
</head>
<body>

	
	
<form name='loginform' action="<c:url value='/login' />" method='post'>
	<span id="rectangle" style="top:163px;left:508px;"></span>
	<img id="logo" src="http://localhost:8081/app/img/mosaicps.jpg" alt="Smiley face" height="42" width="142" style="position: absolute; top: 170px; left: 615px;">
	<span id="displayText" style="font-weight:bold;position: absolute; top: 210px; left: 640px;">System Login</span>
	
	<span id="displayText" style="font-size:12px;position: absolute; top: 240px; left: 665px;">Username</span>
	<input type="text" name="username" style="background-color:#BAB0B6;position: absolute; top: 255px; left: 615px;"><br><br>
	<span id="displayText" style="font-size:12px;position: absolute; top: 285px; left: 665px;">Password</span>
	
	<input type="password" name="password" style="background-color:#BAB0B6;position: absolute; top: 300px; left: 615px;"><br>
	<input name="submit" type="submit" value="Submit" style="position: absolute; top: 330px; left: 655px;">
	<button id="button" type="button" style="position: absolute; top: 360px; left: 630px;">New Registration</button>
	<a href="http://www.w3schools.com/html/" style="color:#663300;font-size:12px;position: absolute; top: 390px; left: 645px;">Forgot your username ?</a>
	<a href="http://www.w3schools.com/html/" style="color:#663300;font-size:12px;position: absolute; top: 410px; left: 645px;">Forgot your password ?</a>
	<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
				
		<c:if test="${not empty error}">
			<div style="color:#ffa695;font-size:12px;position: absolute;top:430px;left: 635px;">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div style="color:#ffa695;font-size:12px;position: absolute;top:440px;left: 625px;">${msg}</div>
		</c:if>			
</form>
	

</body>
</html>