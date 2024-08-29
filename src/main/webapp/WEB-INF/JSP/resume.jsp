<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Resume !!!</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
	
	#pgfields {
		visibility: hidden;
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
	<script type="text/javascript">
	function showPGfields() {
		document.getElementById('pgfields').style.visibility = "visible";
		document.getElementById('pgButtonIcon').style.display = "none";
	}
	</script>
</head>

<body>
	<form:form class="container" action="/resumeCreationtwo" method="post">
		<div class="title">RESUME CREATION - 1 </div>
		<div class="pageInfo">GENERAL INFORMATION</div>
		<div class="personalInfo">
			<div class="headings">Personal Information</div>
			<div class="personalData-column">
				<div class="personalData-row">
					<div class="data">
						<label>Mr/Mrs</label>
						<select name="prefix" id="prefix">
							<option value="Mr.">Mr</option>
							<option value="Mrs.">Mrs</option>
							<option value="Miss.">Miss</option>
							<option value="Dr.">Dr</option>
						</select>
					</div>
					<div class="data">
						<label>Full Name</label>
						<input type="text" /> </div>
					<div class="data">
						<label>PhoneNo</label>
						<input type="text" /> </div>
				</div>
				<div class="personalData-row">
					<div class="data">
						<label>Country</label>
						<select name="countries" id="countries">
							<option value="India">India</option>
							<option value="Canada">Canada</option>
						</select>
					</div>
					<div class="data">
						<label>State</label>
						<input type="text" /> </div>
					<div class="data">
						<label>Place</label>
						<input type="text" /> </div>
				</div>
			</div>
		</div>
		<div class="personalInfo">
			<div class="headings">Education</div>
			<div class="personalData-column">
				<div class="personalData-row">
					<div class="data">
						<label>School Name </label>
						<input type="text" /> </div>
					<div class="data">
						<label>10th Percentile/CGPA</label>
						<input type="text" /> </div>
				</div>
				<div class="personalData-row">
					<div class="data">
						<label>Intermediate</label>
						<input type="text" /> </div>
					<div class="data">
						<label>12th Percentile/CGPA</label>
						<input type="text" /> </div>
				</div>
				<div class="personalData-row">
					<div class="data">
						<label>UG College</label>
						<input type="text" /> </div>
					<div class="data">
						<label>UG marks/CGPA</label>
						<input type="text" /> </div>
				</div>
				<div class="personalData-row" id="pgButtonIcon">
					<div class="data">
						<button class="addButton" id="pgAddButton" onclick="showPGfields()"><i class="fa fa-plus"></i> PG</button>
					</div>
				</div>
				<div class="personalData-row" id="pgfields">
					<div class="data">
						<label>PG College</label>
						<input type="text" /> </div>
					<div class="data">
						<label>PG marks/CGPA</label>
						<input type="text" /> </div>
				</div>
			</div>
		</div>
		<div class="personalInfo">
			<div class="headings">Final Year Project & Final Year Internship Details!!!</div>
			<div class="personalData-column">
				<div class="personalData-row">
					<div class="data">
						<label>Project Name</label>
						<input type="text" /> </div>
					<div class="data">
						<label>Time Period</label>
						<input placeholder="<months" type="number" /> </div>
					<div class="data">
						<label>Team Size</label>
						<input type="number" /> </div>
				</div>
				<div class="personalData-row">
					<div class="data">
						<label>Internship Company</label>
						<input type="text" /> </div>
					<div class="data">
						<label>Time Period</label>
						<input placeholder="<months" type="number" /> </div>
					<div class="data">
						<label>Technical Role</label>
						<select name="tech" id="tech">
							<option value="Full Stack Developer">Full Stack Developer</option>
							<option value="Front End Developer">Front End Developer</option>
							<option value="Backend Developer">Backend Developer</option>
							<option value="Data Engineer & DevOps">Data Engineer & DevOps</option>
						</select>
					</div>
				</div>
			</div>
		</div>
		<div>
			<button class="submitButton">Next</button>
		</div>
	</form:form>
</body>

</html>