<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

	<style>
     	<%@ include file="../css/UserRegistration.css"%>
	</style>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="jhttp://localhost:8081/app/js/jquery.js" type="text/javascript"></script>
<script src="http://localhost:8081/app/js/jquery.maskedinput.js" type="text/javascript"></script>

<script>
	jQuery(function($){
		$("#ssn").mask("999-99-9999");
	});
	jQuery(function($){
		$("#phonenumber").mask("(999)-99-9999");
	});
	jQuery(function($){
		$("#mobilenumber").mask("(999)-99-9999");
	});

</script>

</head>
<body>
	<img id="logo" src="http://localhost:8081/app/img/mosaicps.jpg" alt="Smiley face" height="42" width="142" style="position: absolute; top: 1
	0px; left: 150px;">
	<span id="displayText" style="font-weight:bold;font-size:19px;position: absolute; top: 60px; left: 100px;">Enter Your Information and continue with the process</span>
	<span id="displayText" style="font-size:12px;position: absolute; top: 105px; left: 105px;">Contact Type : </span>
	<Select name="Name" style="position: absolute; top: 100px; left: 190px;width: 170px"></Select><span style="color:#cc6600;Position: absolute; top: 100px;left: 370px">*</span>
	
	<span id="displayText" style="font-size:12px;position: absolute; top: 130px; left: 30px;">First , Middle and Last Name : </span>
	<input id="first" type="text" style="position: absolute; top: 130px; left: 190px; width: 80px"/><span style="color:#cc6600;Position: absolute; top: 130px;left: 280px">*</span>
	<input id="first" type="text" style="position: absolute; top: 130px; left: 300px; width: 80px"/>
	<input id="first" type="text" style="position: absolute; top: 130px; left: 410px; width: 100px"/><span style="color:#cc6600;Position: absolute; top: 130px;left:520px">*</span>
	
	<span id="first" style="font-size:12px;position: absolute; top: 160px; left: 145px;">SSN : </span>
	<input id="ssn" type="text" style="position: absolute; top: 160px; left: 190px; width: 150px"/><span style="color:#cc6600;Position: absolute; top: 160px;left:350px">*</span>
	
	<span id="first" style="font-size:12px;position: absolute; top: 190px; left: 140px;">Email : </span>
	<input id="email" type="text" style="position: absolute; top: 190px; left: 190px; width: 150px"/><span style="color:#cc6600;Position: absolute; top: 190px;left:350px">*</span>
	
	<span id="first" style="font-size:12px;position: absolute; top: 220px; left: 20px;">Please specify a web password : </span>
	<input id="password" type="text" style="position: absolute; top: 220px; left: 190px; width: 150px"/><span style="color:#cc6600;Position: absolute; top: 220px;left:350px">*</span>
	
	<span id="first" style="font-size:12px;position: absolute; top: 240px; left: 140px;">Again : </span>
	<input id="password" type="text" style="position: absolute; top: 240px; left: 190px; width: 150px"/><span style="color:#cc6600;Position: absolute; top: 240px;left:350px">*</span>
	
	<span id="first" style="font-size:12px;position: absolute; top: 270px; left: 95px;">Phone Number : </span>
	<input id="phonenumber" type="text" style="position: absolute; top: 270px; left: 190px; width: 150px"/><span style="color:#cc6600;Position: absolute; top: 270px;left:350px">*</span>
	
	<span id="first" style="font-size:12px;position: absolute; top: 300px; left: 90px;">Mobile Number : </span>
	<input id="mobilenumber" type="text" style="position: absolute; top: 300px; left: 190px; width: 150px"/><span style="color:#cc6600;Position: absolute; top: 300px;left:350px">*</span>
	
	<span id="first" style="font-weight:bold;font-size:16px;color:#cc6600;position: absolute; top: 330px; left: 60px;">Please enter answers for five security questions</span>
	
	<span id="first" style="font-size:12px;position: absolute; top: 360px; left: 70px;">Security Question 1 : </span>
	<Select name="Name" style="position: absolute; top: 360px; left: 190px;width: 170px"></Select><span style="color:#cc6600;Position: absolute; top: 360px;left:365px">*</span>
	<span id="first" style="font-size:12px;position: absolute; top: 390px; left: 100px;">Your Answer : </span>
	<input id="mobilenumber" type="text" style="position: absolute; top: 390px; left: 190px; width: 170px"/><span style="color:#cc6600;Position: absolute; top: 390px;left:370px">*</span>
	
	<span id="first" style="font-size:12px;position: absolute; top: 420px; left: 70px;">Security Question 2 : </span>
	<Select name="Name" style="position: absolute; top: 420px; left: 190px;width: 170px"></Select><span style="color:#cc6600;Position: absolute; top: 420px;left:365px">*</span>
	<span id="first" style="font-size:12px;position: absolute; top: 450px; left: 100px;">Your Answer : </span>
	<input id="mobilenumber" type="text" style="position: absolute; top: 450px; left: 190px; width: 170px"/><span style="color:#cc6600;Position: absolute; top: 450px;left:370px">*</span>
	
	<span id="first" style="font-size:12px;position: absolute; top: 480px; left: 70px;">Security Question 3 : </span>
	<Select name="Name" style="position: absolute; top: 480px; left: 190px;width: 170px"></Select><span style="color:#cc6600;Position: absolute; top: 480px;left:365px">*</span>
	<span id="first" style="font-size:12px;position: absolute; top: 510px; left: 100px;">Your Answer : </span>
	<input id="mobilenumber" type="text" style="position: absolute; top: 510px; left: 190px; width: 170px"/><span style="color:#cc6600;Position: absolute; top: 510px;left:370px">*</span>
	
	<span id="first" style="font-size:12px;position: absolute; top: 540px; left: 70px;">Security Question 4 : </span>
	<Select name="Name" style="position: absolute; top: 540px; left: 190px;width: 170px"></Select><span style="color:#cc6600;Position: absolute; top: 540px;left:365px">*</span>
	<span id="first" style="font-size:12px;position: absolute; top: 570px; left: 100px;">Your Answer : </span>
	<input id="mobilenumber" type="text" style="position: absolute; top: 570px; left: 190px; width: 170px"/><span style="color:#cc6600;Position: absolute; top: 570px;left:370px">*</span>
	
	<span id="first" style="font-size:12px;position: absolute; top: 600px; left: 70px;">Security Question 5 : </span>
	<Select name="Name" style="position: absolute; top: 600px; left: 190px;width: 170px"></Select><span style="color:#cc6600;Position: absolute; top: 600px;left:365px">*</span>
	<span id="first" style="font-size:12px;position: absolute; top: 630px; left: 100px;">Your Answer : </span>
	<input id="mobilenumber" type="text" style="position: absolute; top: 630px; left: 190px; width: 170px"/><span style="color:#cc6600;Position: absolute; top: 630px;left:370px">*</span>
	
	
	<span id="first" style="color:#cc6600;font-size:16px;position: absolute; top: 700px; left: 70px;">* - Required : </span>
	
	<input name="submit" type="submit" value="Continue" style="position: absolute; top: 700px; left: 190px;">
	
	
	
	
	
</html>