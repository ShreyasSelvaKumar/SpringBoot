<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
<head>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.7.1.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

<script src="https://unpkg.com/aos@next/dist/aos.js">
	
</script>

<script>
	$(function() {
		AOS.init();
	});
</script>
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Alegreya Sans">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Inconsolata">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Inria Sans">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Metrophobic">


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.container { /* The image used */
	font-family: "Roboto", sans-serif;
}

a:link, a:visited {
	background-color: white;
	color: black;
	border: 2px solid green;
	padding: 3px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
}

a:hover, a:active {
	background-color: green;
	color: white;
}

.welcome-msg {
	margin-top: 90px;
	background-color: #ed4c51;
	color: white;
	font-family: "Alegreya Sans", sans-serif;
	font-size: 20px;
	padding: 7px;
	border-radius: 20px;
	opacity: 0.8;
	letter-spacing: 5px;
}

.myName {
	margin-top: 45px;
	font-family: "Inconsolata", sans-serif;
	font-size: 37px;
	padding: 5px;
}

.myNameLine {
	margin-top: 15px;
	margin-bottom: 35px;
	font-size: 15px;
	opacity: 0.6;
}

.boxShadow {
	box-shadow: 10px 10px 5px #aaaaaa;
	border: 0.5px solid #ed4c51;
	border-radius: 10px;
}

.myDetails {
	display: flex;
	flex-direction: column;
	align-items: center;
	background: linear-gradient(rgba(255, 255, 255, .6),
		rgba(255, 255, 255, .6)),
		url("https://wallpaperaccess.com/full/4695651.jpg");
	background-color: #cccccc; /* Used if the image is unavailable */
	height: 500px; /* You must set a specified height */
	background-position: center; /* Center the image */
	background-repeat: no-repeat; /* Do not repeat the image */
	background-size: cover;
	background-color: #e1e6ed;
	height: 100%;
	width: 100%;
	border-radius: 15px;
	box-shadow: 10px 10px 5px #aaaaaa;
}

.about {
	margin-top: -17px;
	text-align: center;
	font-size: 25px;
	width: 17%;
	opacity: 0.5;
}

.rowDivs {
	display: flex;
	flex-direction: row;
	flex-start: center;
	justify-content: space-around;
	align-items: center;
}

.columnDivs {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-around;
}

.navList {
	width: 40%;
}

.backgroundGrey {
	background: #aaaaaa;
	border-radius: 30px;
}

.infoTable, .aboutMe {
	font-style: italic;
	opacity: 0.7;
}

.aboutContent {
	width: 80%;
	height: 360px;;
	padding: 5px;
	overflow: hidden;
}

.aboutYou {
	width: 50%;
}

.title {
	width: 100%;
	opacity: 0.8;
	color: #ed4c51;
	border-radius: 10px;
	padding: 6px;
	font-size: 25px;
	letter-spacing: 5px;
	font-family: "Inria Sans", sans-serif;
}

.profilePic {
	border-radius: 20px;
	background-color: #ed4c51;
}

.eduDet {
	background-color: #ed4c51;
	color: white;
	padding: 10px;
	height: 50px;
	width: 10%;
	margin-bottom: 3px;
	margin-right: 2px;
}

.eduFullDet {
	width: 89%;
	padding: 10px;
	height: 50px;
	margin-bottom: 3px;
	box-shadow: 2px 2px 5px #aaaaaa;
	font-style: italic;
	opacity: 0.7;
}

.skillsAndCert {
	width: 90%;
}

.skillsRow {
	width: 110%;
	justify-content: space-between;
	padding: 5px;
	box-shadow: 2px 2px 5px #aaaaaa;
	align-items: center;
}

.teal {
	width: 40%;
	background: rgba(237, 76, 81, 0.3);
	border-radius: 16px;
}

.tealFill {
	color: white;
	background-color: #ed4c51;
	width: 90%;
	border-radius: 16px;
	text-align: center;
}

.socialMedia {
	width: 100%;
	text-align: center;
}

.piData {
	font-family: "Metrophobic", sans-serif;
	letter-spacing: 2px;
}

.updated {
	width: 90%;
	font-size: 9px;
	text-align: right;
}
</style>

</head>

<body>
	<div class="container columnDivs">

		<div class="myDetails" data-aos="fade-in" data-aos-offset="50"
			data-aos-duration="1000">
			<div class="welcome-msg">Hi Everyone, Welcome to my Resume</div>
			<div class="myName">
				<b>I am ${resume.generalInfo.fullName}</b>
			</div>
			<div class="myNameLine">
				<i>"&nbsp I am an Techno Aspirant &nbsp"</i>
			</div>
		</div>

		<div class="about rowDivs">
			<div>
				<i title="Watch my Github" style="cursor: pointer"
					class="fa fa-github"></i>
			</div>
			<div>
				<i title="Watch my Linked in" style="cursor: pointer"
					class="fa fa-linkedin-square"></i>
			</div>
			<div>
				<i title="Mail me here.." style="cursor: pointer"
					class="fa fa-facebook-square"></i>
			</div>
			<div>
				<i title="My channel.." style="cursor: pointer"
					class="fa fa-youtube"></i>
			</div>
			<div>
				<i title="follow me in Twitter" style="cursor: pointer"
					class="fa fa-twitter"></i>
			</div>
		</div>
		<br>
		<div class="updated">
			<i>*Last Updated 21-JUN-2022</i>
		</div>


		<div class="aboutContent columnDivs boxShadow aos-init"
			data-aos="fade-right" data-aos-offset="50" data-aos-duration="1500">
			<div class="title">&nbsp&nbsp&nbspABOUT</div>
			<div class="content rowDivs">
				<div class="profilePic" data-aos="fade-right" data-aos-offset="50"
					data-aos-duration="1500">
					<img
						src="https://media.monolithicpower.com/wysiwyg/employee-img1.png"
						width="150" height="150" />
				</div>

				<div class="aboutYou columnDivs aos-init" data-aos="fade-right"
					data-aos-offset="50" data-aos-duration="1500">

					<p class="aboutMe">
						"${resume.othersInformation.about}"<br> <br> <span>My
							Hobbies are:&nbsp<span>${resume.othersInformation.hobbies}</span>
						</span><br> <span>I am proud to share that I am an </span> <span>
							${resume.othersInformation.acheivement1}&nbsp</span>and <span>
							${resume.othersInformation.acheivement2}</span>
					</p>


				</div>

				<div data-aos="fade-right" data-aos-offset="50"
					data-aos-duration="1500">
					<table class="infoTable">
						<tr>
							<th>Name&nbsp:</th>
							<td>${resume.generalInfo.title}
								${resume.generalInfo.fullName}</td>
						</tr>
						<tr>
							<th>Email&nbsp:</th>
							<td>${resume.othersInformation.email}</td>
						</tr>
						<tr>
							<th>Phone No.&nbsp:</th>
							<td>${resume.generalInfo.phoneNo}</td>
						</tr>
						<tr>
							<th>Place&nbsp:</th>
							<td>${resume.generalInfo.state},${resume.generalInfo.place}</td>
						</tr>
						<tr>
							<th>Country&nbsp:</th>
							<td>${resume.generalInfo.country}</td>
						</tr>

					</table>
				</div>
			</div>
			<br>
		</div>
		<br> <br> <br> <br>
		<div class="aboutContent boxShadow" data-aos="fade-left"
			data-aos-offset="50" data-aos-duration="3000">
			<div class="title">&nbsp&nbsp&nbspEducational Background</div>
			<br>
			<div class="content colDivs" style="padding: 8px;">
				<div class="rowDivs">
					<div class="eduDet" data-aos="fade-right" data-aos-offset="50"
						data-aos-duration="1500">10th Details</div>
					<div class="eduFullDet columnDivs" data-aos="fade-left"
						data-aos-offset="50" data-aos-duration="2000">
						<div>
							I pursued my 10th standard in the School named:&nbsp<b><i>${resume.generalInfo.schoolName}</i></b>
						</div>
						<div>
							I have passed with an outstanding of:&nbsp<b><i>${resume.generalInfo.schoolPercentile}</i></b>
						</div>
						<div>
							My year of Passing is :&nbsp<b><i>2015</i></b>
						</div>
					</div>
				</div>
				<div class="rowDivs">
					<div class="eduDet" data-aos="fade-right" data-aos-offset="50"
						data-aos-duration="1500">12th Details</div>
					<div class="eduFullDet columnDivs" data-aos="fade-left"
						data-aos-offset="50" data-aos-duration="2000">
						<div>
							Completed my intermediate in the college named:&nbsp<b><i>${resume.generalInfo.intermediateCollege}</i></b>
						</div>
						<div>
							Gained an overall score of :&nbsp<b><i>${resume.generalInfo.intermediateCollegePercentile}</i></b>
						</div>
						<div>
							My year of Passing is :&nbsp<b><i>2017</i></b>
						</div>
					</div>
				</div>
				<div class="rowDivs">
					<div class="eduDet" data-aos="fade-right" data-aos-offset="50"
						data-aos-duration="1500">UG Details</div>
					<div class="eduFullDet columnDivs" data-aos="fade-left"
						data-aos-offset="50" data-aos-duration="2000">
						<div>
							Studied and graduated my UG from :&nbsp<b><i>${resume.generalInfo.ugName}</i></b>&nbsp
							college
						</div>
						<div>
							My Overall score in UG is :&nbsp<b><i>${resume.generalInfo.ugScore}</i></b>
						</div>
						<div>
							My Year of Passing is :&nbsp<b><i>2021</i></b>
						</div>
					</div>
				</div>
				<div class="rowDivs">
					<div class="eduDet" data-aos="fade-right" data-aos-offset="50"
						data-aos-duration="1500">PG Details</div>
					<div class="eduFullDet columnDivs" data-aos="fade-left"
						data-aos-offset="50" data-aos-duration="2000">
						<div>
							Name:<span>${resume.generalInfo.pgName}</span>
						</div>
						<div>
							Score:<span>${resume.generalInfo.pgScore}</span>
						</div>
						<div>
							Year of Passing:<span>NA</span>
						</div>
					</div>
				</div>
				<br> <br> <br>
			</div>

		</div>
		<br> <br> <br> <br>

		<div class="aboutContent rowDivs skillsAndCert">
			<div class="aboutContent boxShadow" id="skills" data-aos="zoom-out"
				data-aos-offset="50" data-aos-duration="500">
				<div class="title">
					<span><i class="fa fa-cubes"
						style="color: #ed4c51; font-size: 30px;"></i></span>&nbsp&nbsp&nbspSkills
				</div>
				<table class="skillTable"
					style="width: 100%; border-collapse: separate; border-spacing: 0 2em;">

					<tr class="skillsRow">
						<td style="visibility: hidden">SpringBoot</td>
						<td style="visibility: hidden">9</td>
						<td style="text-align: center; color: #ed4c51">Hands-on</td>
						<td style="text-align: center; color: #ed4c51">Theoretical</td>
					</tr>
					<c:forEach items="${resume.skillsandCertification.skills}"
						var="skill">

						<tr class="skillsRow" data-aos="fade-in" data-aos-offset="50"
							data-aos-duration="2000">
							<td style="letter-spacing: 2px;">${skill.skillName }</td>
							<td class="teal"><div class="tealFill">${skill.proficiencyLevel}/10</div></td>
							<td style="text-align: center"><i class="fa fa-check-circle"
								style="color: #ed4c51; font-size: 20px;"></i></td>
							<td style="text-align: center"><i class="fa fa-check-circle"
								style="color: #ed4c51; font-size: 20px;"></i></td>
						</tr>

					</c:forEach>
				</table>
			</div>





			<div>&nbsp&nbsp&nbsp</div>
			<div class="aboutContent boxShadow" data-aos="fade-left"
				data-aos-offset="50" data-aos-duration="3500">
				<div class="title">
					<span><i class="fa fa-vcard"
						style="color: #ed4c51; font-size: 30px;"></i></span>&nbsp&nbsp&nbspCertifications
				</div>
				<table
					style="width: 100%; border-collapse: separate; border-spacing: 0 2em;">
					<tr data-aos="fade-in" data-aos-offset="50"
						data-aos-duration="2000">
						<td style="text-align: center; color: #ed4c51">Course Name</td>
						<td style="text-align: center; color: #ed4c51">Click on Show
							Credential</td>
					</tr>
					<c:forEach items="${resume.skillsandCertification.certifications}"
						var="certification">

						<tr>

							<td
								style="text-align: center; box-shadow: 2px 2px 5px #aaaaaa; letter-spacing: 2px;">${certification.certificateName}</td>
							<td style="text-align: center"><c:set var="credLink"
									value="${certification.certificationLink}" /><a
								href="${credLink}" target="_blank">Show Credential</a><span><i
									class="fa fa-location-arrow"
									style="color: #ed4c51; font-size: 15px;"></i></span></td>
						</tr>

					</c:forEach>
				</table>
			</div>
		</div>
		<br> <br> <br> <br>

		<div class="columnDivs piData" style="width: 100%">
			<div class="rowDivs" style="width: 80%">
				<img class="boxShadow"
					src="https://www.qmillwright.com/wp-content/uploads/2019/05/Project-Management-Post.jpg"
					width=260px height=200px data-aos="slide-up" data-aos-offset="50"
					data-aos-duration="2000" />
				<div class="projectData columnDivs boxShadow" style="padding: 20px;"
					data-aos="slide-up" data-aos-offset="50" data-aos-duration="2000">
					<div>
						Final Year Project Name:&nbsp<span><i>${resume.generalInfo.projectName}</i></span>
					</div>
					<div>
						Team Count:&nbsp<span>This Project is done by <b>${resume.generalInfo.ptimePeriod}</b>
							members
						</span>
					</div>
					<div>
						Duration:&nbsp<span>The total Duration took to complete the
							Project is <b>${resume.generalInfo.teamCount}</b> Months
						</span>
					</div>
				</div>
			</div>
			<br>
			<div class="rowDivs" style="width: 80%">
				<img class="boxShadow"
					src="https://images.shiksha.com/mediadata/images/articles/1585820234php7zvvEH.jpeg"
					width=260px height=200px data-aos="slide-up" data-aos-offset="50"
					data-aos-duration="2000" />
				<div class="projectData columnDivs boxShadow" style="padding: 20px;"
					data-aos="slide-up" data-aos-offset="50" data-aos-duration="2000">
					<div>
						Internsip Company:&nbsp<span><i>${resume.generalInfo.internshipCompanyName}</i></span>
					</div>
					<div>
						Skill Stack:&nbsp<span>Learnt and Worked as <i>${resume.generalInfo.internRole}</i></span>
					</div>
					<div>
						Duration:&nbsp<span>The total Duration took to complete the
							Project is <b>${resume.generalInfo.itimePeriod}</b> Months
						</span>
					</div>
				</div>
			</div>

		</div>
		<br> <br> <br> <br>







	</div>
</body>
<footer class="columnDivs" style="width: 100%">
	<div class="footer columnDivs" style="width: 25%">
		<div class="socialMedia rowDivs">
			<div>
				<i title="Watch my Github" style="cursor: pointer"
					class="fa fa-github"></i>
			</div>
			<div>
				<i title="Watch my Linked in" style="cursor: pointer"
					class="fa fa-linkedin-square"></i>
			</div>
			<div>
				<i title="Mail me here.." style="cursor: pointer"
					class="fa fa-facebook-square"></i>
			</div>
			<div>
				<i title="My channel.." style="cursor: pointer"
					class="fa fa-youtube"></i>
			</div>
			<div>
				<i title="follow me in Twitter" style="cursor: pointer"
					class="fa fa-twitter"></i>
			</div>
		</div>
		<div>
			<p style="opacity: 0.5; text-align: center">
				<i>© Copyright 2022 YB & Team. All rights reserved.</i>
			</p>
			<p style="opacity: 0.5; text-align: center">
				<i>For Queries & others Contact us technoybsofficial@gmail.com</i>
			</p>
			<p style="opacity: 0.5; text-align: center">
				<i>Resume Blog Version v1.0</i>
			</p>
		</div>
	</div>

</footer>


</html>