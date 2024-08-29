<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup !!!</title>
<style>
.showarea {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	align-items: center;
	width: 90%;
	background-color: #8858b8;
	padding: 5px;
	margin: 10px;
}

.buttonarea {
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	align-items: center;
	width: 90%;
	background-color: #8858b8;
	padding: 15px;
	margin: 10px;
}

.entirearea {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	align-items: center;
}

.signup {
	color: white;
	letter-spacing: 6px;
	font-family: "Lucida Console", "Courier New", monospace;
}

.inputs {
	background-color: #9e88b5;
	width: 90%;
	padding: 10px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.element {
	background-color: white;
	margin-top: 10px;
	text-align: center;
	border-radius: 5px;
}

.table-design {
	table-layout: fixed;
	width: 100%;
	background-color: #c5b4d6;
	padding: 10px;
	height: 250px;
	width: 95%;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	align-items: center;
	border-spacing: 20px;
	border-radius: 15px;
}

label {
	font-family: "Lucida Handwriting", monospace;
	font-size: 12px;
	word-spacing: 2px;
	padding: 8px;
}

input {
	border-color: white;
}

td {
	border-radius: 5px;
}

.copyright {width =100%;
	text-align: center;
	margin-top: 40px;
	font-style: oblique;
}

.title {
	text-align: center;
	margin: 40px;
	background-color: #c5b4d6;
	padding: 15px;
	width: 90%
}
a{
text-decoration: none;
}
</style>
</head>
<body>
	<div class="title">RESUME BUILDER</div>
   <form class="entirearea" action="/signup" method="post" modelattribute="registeruser">
	   <div class="showarea">
				<h3 class="signup">REGISTER HERE</h3>
			</div>
			
			<div class="inputs">
				<table class="table-design">

					<tr class="element">
						<td><label>Enter Name:</label></td>
						<td><input type="text" name="name"></td>
					</tr>


					<tr class="element">
						<td><label>Enter e-mail:</label></td>
						<td><input type="text" name="email"></td>
					</tr>


					<tr class="element">
						<td><label>Enter phone:</label></td>
						<td><input type="text" name="phoneNo"></td>
					</tr>


					<tr class="element">
						<td><label>Enter password:</label></td>
						<td><input type="text" name="password"></td>
					</tr>

				</table>


			</div>
			<div class="buttonarea">
				<input type="submit" value="Register"> 
		 <button type="button"><a href="login" >GoTo Login</a></button>
			</div>
		
	</form>

	<div class="copyright">
		<p>&copy; Copyright ResumeBlog Reserved</p>
		<p>By YB & Team version 1.0v</p>
	</div>

</body>

</html>