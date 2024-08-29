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
	<form:form class="container" action="/resumeCreationtwo" method="post" modelAttribute="generalInfo">
		<div class="title">RESUME CREATION - 1 <a href="logout" >LOGOUT</a></div>
		<div class="pageInfo">GENERAL INFORMATION</div>
		<div class="personalInfo">
			<div class="headings">Personal Information</div>
			<div class="personalData-column">
				<div class="personalData-row">
					<div class="data">
						<form:label path="title">Mr/Mrs</form:label>
						<form:select name="title" path="title" id="title">
							<option value="Mr.">Mr</option>
							<option value="Mrs.">Mrs</option>
							<option value="Miss.">Miss</option>
							<option value="Dr.">Dr</option>
						</form:select>
					</div>
					<div class="data">
						<form:label path="fullName">Full Name</form:label>
						<form:input type="text" path="fullName"/> </div>
					<div class="data">
						<form:label path="phoneNo">PhoneNo</form:label>
						<form:input type="text" path="phoneNo"/> </div>
				</div>
				<div class="personalData-row">
					<div class="data">
						<form:label path="country">Country</form:label>
						<form:select name="country" path="country" id="countries">
							<form:option value="India">India</form:option>
							<form:option value="Canada">Canada</form:option>
						</form:select>
					</div>
					<div class="data">
						<form:label path="state">State</form:label>
						<form:input type="text" path="state" /> </div>
					<div class="data">
						<form:label path="place">Place</form:label>
						<form:input type="text" path="place" /> </div>
				</div>
			</div>
		</div>
		<div class="personalInfo">
			<div class="headings">Education</div>
			<div class="personalData-column">
				<div class="personalData-row">
					<div class="data">
						<form:label path="schoolName">School Name </form:label>
						<form:input type="text" path="schoolName"/> </div>
					<div class="data">
						<form:label path="schoolPercentile">10th Percentile/CGPA</form:label>
						<form:input type="text" path="schoolPercentile" /> </div>
				</div>
				<div class="personalData-row">
					<div class="data">
						<form:label path="intermediateCollege">Intermediate</form:label>
						<form:input type="text" path="intermediateCollege"/> </div>
					<div class="data">
						<form:label path="intermediateCollegePercentile">12th Percentile/CGPA</form:label>
						<form:input type="text" path="intermediateCollegePercentile"/> </div>
				</div>
				<div class="personalData-row">
					<div class="data">
						<form:label path="UgName">UG College</form:label>
						<form:input type="text" path="UgName"/> </div>
					<div class="data">
						<form:label path="UgScore">UG marks/CGPA</form:label>
						<form:input type="text" path="UgScore"/> </div>
				</div>
				<div class="personalData-row" id="pgButtonIcon">
					<div class="data">
						<input type="button" class="addButton" id="pgAddButton" onclick="showPGfields()" value="PG"/><i class="fa fa-plus"></i>
					</div>
				</div>
				<div class="personalData-row" id="pgfields">
					<div class="data">
						<form:label path="PgName">PG College</form:label>
						<form:input type="text" path="PgName" /> </div>
					<div class="data">
						<form:label path="PgScore">PG marks/CGPA</form:label>
						<form:input type="text" path="PgScore" /> </div>
				</div>
			</div>
		</div>
		<div class="personalInfo">
			<div class="headings">Final Year Project & Final Year Internship Details!!!</div>
			<div class="personalData-column">
				<div class="personalData-row">
					<div class="data">
						<form:label path="projectName">Project Name</form:label>
						<form:input type="text" path="projectName"/> </div>
					<div class="data">
						<form:label path="ptimePeriod">Time Period</form:label>
						<form:input placeholder="<months" type="number" path="ptimePeriod"/> </div>
					<div class="data">
						<form:label path="teamCount">Team Size</form:label>
						<form:input type="number" path="teamCount" /> </div>
				</div>
				<div class="personalData-row">
					<div class="data">
						<form:label path="internshipCompanyName">Internship Company</form:label>
						<form:input type="text" path="internshipCompanyName"/> </div>
					<div class="data">
						<form:label path="itimePeriod">Time Period</form:label>
						<form:input placeholder="<months" type="number" path="itimePeriod"/> </div>
					<div class="data">
						<form:label path="internRole">Technical Role</form:label>
						<form:select name="tech" path="internRole" id="tech">
							<option value="Full Stack Developer">Full Stack Developer</option>
							<option value="Front End Developer">Front End Developer</option>
							<option value="Backend Developer">Backend Developer</option>
							<option value="Data Engineer & DevOps">Data Engineer & DevOps</option>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div>
			<input type="submit" value="Next" class="submitButton"/>
		</div>
	</form:form>
</body>

</html>