<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Resume !!!</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.copyright {
	width: 90%;
	text-align: center;
	margin-top: 40px;
	font-style: oblique;
	position: absolute;
	bottom: 0;
}

.title {
	text-align: center;
	margin: 40px;
	background-color: #c5b4d6;
	padding: 15px;
	width: 90%;
	letter-spacing: 4px;
}

.headings {
	margin-left: 20px;
	padding: 5px;
	width: 100%;
	margin-bottom: 10px;
	border-style: solid;
	border-width: 1px;
	border-radius: 5px;
	background-color: #5f5182;
	color: white;
}

.personalData-column {
	background-color: #c5b4d6;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-evenly;
	width: 100%;
}

.personalData-row {
	background-color: #c5b4d6;
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	width: 100%;
	align-items: center;
}

.data {
	margin: 7px;
}

.personalInfo {
	width: 70%;
	display: flex;
	flex-direction: column;
	align-items: center;
	margin-bottom: 10px;
	box-shadow: 2px 6px #d1cbcb;
}

.addButton {
	background-color: #5f5182;
	border: none;
	color: white;
	padding: 5px 5px;
	cursor: pointer;
	border-radius: 360px;
}

.submitButton {
	padding: 3px;
	background-color: #5f5182;
	color: white;
	cursor: pointer;
}

.pageInfo {
	letter-spacing: 5px;
}

.container {
	width: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-around;
}
</style>

</head>

<body>
	<form:form class="container" action="/printresume" method="post" modelAttribute="oInfo">
		<div class="title">RESUME CREATION - 3 <a href="logout" >LOGOUT</a></div>
		<div class="pageInfo">Other INFORMATION</div>
		<div class="personalInfo">
			<div class="headings">About You(Why company should hire you?)</div>
			<div class="personalData-column">
				<div class="data">
					<label>About:</label>
					<form:textarea  rows="4" cols="85" path="about" placeholder="First Impression starts from here..." />
				</div>

			</div>
		</div>
		<div class="personalInfo">
			<div class="headings">Social Media links</div>
			<div class="personalData-row">
				<div class="data">
					<label>Github links</label> <form:input placeholder="https://github.com/yb" path="gitlink" type="text" />
				</div>
				<div class="data">
					<label>Linked in</label> <form:input placeholder="https://www.linkedin.com/in/yb/" path="linkedin" type="text" />
				</div>
			</div>
			<div class="personalData-row">
				<div class="data">
					<label>Email Id &nbsp</label> <form:input placeholder=" yb@gmail.com" path="email" type="text" />
				</div>
				<div class="data">
					<label>Blog,Your Website Or StackOverflow links</label> <form:input type="text" path="blogAndOther"/>
				</div>
			</div>

		</div>
		<div class="personalInfo">
			<div class="headings">Hobbies and Acheivements</div>
			<div class="personalData-column">
				<div class="data">
					<label>Your Hobbies</label> <form:input path="hobbies" placeholder="Put commas, and fill all hobbies in this section" style="width:650px" type="text" />
				</div>
				<div class="data">
					<label>Acheivment 1</label> <form:input path="acheivement1" placeholder="Top 1st Acheivement" style="width:650px" type="text" />
				</div>
				<div class="data">
					<label>Acheivment 2</label> <form:input path="acheivement2" placeholder="Top 2nd Acheivement" style="width:650px" type="text" />
				</div>
			</div>
			
		</div>
       <div>
			<input type="submit" value="Finalize" class="submitButton"/>
		</div>
	</form:form>
</body>

</html>