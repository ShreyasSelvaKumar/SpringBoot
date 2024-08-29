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
body {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-around;
}

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

.certificateBorder {
	border: 5px solid red;
}

.container {
	width: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-around;
}

i {
	cursor: pointer;
}
</style>
<script type="text/javascript">
	var i=0;
	var j=0;

		function duplicate() {
			if(i<=2){
		    document.getElementById("skillcount").innerHTML=document.getElementById("skillcount").innerHTML-1;
		    var original = document.getElementById('skills' + i);
		    var clone = original.cloneNode(true); // "deep" clone
		    clone.id = "skills" + ++i; // there can only be one element with an ID
		    //clone.onclick = duplicate; // event handlers are not cloned
		    original.parentNode.appendChild(clone);
		    document.getElementById('skills'+i).getElementsByClassName("data")[0].getElementsByTagName("input")[0].value="";
		    document.getElementById('skills'+i).getElementsByClassName("data")[1].getElementsByTagName("input")[0].value="";
		    console.log(i);
			}
			else{
				alert("You Can Only Choose Upto 4 Major Skills");
			}
		}
		
		function duplicateCertificates() {
			if(j<=2){
		    document.getElementById("certificatecount").innerHTML=document.getElementById("certificatecount").innerHTML-1;
		    var original = document.getElementById('certificate' + j);
		    var clone = original.cloneNode(true); // "deep" clone
		    clone.id = "certificate" + ++j; // there can only be one element with an ID
		    //clone.onclick = duplicate; // event handlers are not cloned
		    original.parentNode.appendChild(clone);
		    document.getElementById('certificate'+j).getElementsByClassName("data")[0].getElementsByTagName("input")[0].value="";
		    document.getElementById('certificate'+j).getElementsByClassName("data")[1].getElementsByTagName("input")[0].value="";
		    document.getElementById('certificate'+j).getElementsByClassName("data")[2].getElementsByTagName("input")[0].value="";
			}
			else{
				alert("You Can Only Choose Upto 4 Major Certifications");
			}
		}
		
		function duplicateSkillDiv(){
			if(i<=2){
			document.getElementById("skillcount").innerHTML=document.getElementById("skillcount").innerHTML-1;
			const div = document.createElement('div');
            div.className = 'personalData-row';
            div.id="skills" + ++i;

			  div.innerHTML = `
				  <div class="data" >
					<label >Skill Name</label>
					<input type="text" id="skillname" />
			    </div>
				
				 <div class="data">
					<label >Proficiency Level</label>
					<input type="text" placeholder="1-10" id="level" /> 
				</div>
				
				 <div class="data">
					<label>Have you implemented any project</label>
					<select id="implemented" >
						<option value="YES">Yes,I have hands-on</option>
						<option value="NO">No,But I have theoretical knowledge</option>
					</select>
					
			    </div>
			    
			    <i class="fa fa-minus-circle" onclick ="deleteSkill(this)"></i>
			    
			  
			  `;

			  document.getElementById('skillsId').appendChild(div);
			  const skillnameinput= document.getElementById("skills"+i).getElementsByTagName("input")[0];
	           skillnameinput.name="skills[" +i+ "].skillName";
	           const levelinput= document.getElementById("skills"+i).getElementsByTagName("input")[1];
	           levelinput.name="skills[" +i+ "].proficiencyLevel";
	           const implementedinput= document.getElementById("skills"+i).getElementsByTagName("select")[0];
	           implementedinput.name="skills[" +i+ "].implemented";
			}
			else{
				alert("Exceeded Limit");
			}
		}
	 function deleteSkill(input){
		 document.getElementById("skillcount").innerHTML=1+parseInt(document.getElementById("skillcount").innerHTML);
		 document.getElementById('skillsId').removeChild(input.parentNode);
		 --i;
		 return true;
	 }
	 
	 function duplicateCertificateDiv(){
			if(j<=2){
			document.getElementById("certificatecount").innerHTML=document.getElementById("certificatecount").innerHTML-1;
			const div = document.createElement('div');
         div.className = 'personalData-column';
         div.id="certificates" + ++j;

			  div.innerHTML = `
				  <i class="fa fa-minus-circle" onclick ="deleteCertificate(this)"></i>
				  <div class="data">
					<label>Certificate Name</label>
					<input type="text" id="certificateName"/>
			    </div>
				
				 <div class="data">
					<label>Course Name &nbsp&nbsp&nbsp</label>
					<input type="text"  id="coursename"/> 
				</div>
				
				 <div class="data">
					<label>Completion link</label>
					<input type="text" id="courseLink">
			    </div>
			    
			  
			  `;

			  document.getElementById('certificateId').appendChild(div);
			  const cnameinput= document.getElementById("certificates"+j).getElementsByTagName("input")[0];
			  cnameinput.name="certifications[" +j+ "].certificateName";
	           const lcinput= document.getElementById("certificates"+j).getElementsByTagName("input")[1];
	           lcinput.name="certifications[" +j+ "].courseName";
	           const linkinput= document.getElementById("certificates"+j).getElementsByTagName("input")[2];
	           linkinput.name="certifications[" +j+ "].certificationLink";
			}
			else{
				alert("Exceeded Limit");
			}
		}
	 function deleteCertificate(input){
		 document.getElementById("certificatecount").innerHTML=1+parseInt(document.getElementById("certificatecount").innerHTML);
		 document.getElementById('certificateId').removeChild(input.parentNode);
		 --j;
		 return true;
	 }
	 
	
	</script>
</head>

<body>
	<form class="container" action="/resumeCreationthree" method="post">
		<div class="title">RESUME CREATION - 2 <a href="logout" >LOGOUT</a></div>
		<div class="pageInfo">Skills and Certifications</div>
		<div class="personalInfo">
			<div class="headings">Skills and Proficiency levels</div>
			<div class="data">
				<input type="button" onclick="duplicateSkillDiv()" value="Add">&nbsp
				ADD UPTO &nbsp<span id="skillcount">3</span>&nbspMajor Skills
			</div>
			<div class="personalData-column" id="skillsId">
				<div class="personalData-row" id="skills">
					<div class="data">
						<label>Skill Name</label> <input type="text" id="skillname"
							name="skills[0].skillName" />
					</div>

					<div class="data">
						<label>Proficiency Level</label> <input type="text"
							placeholder="1-10" name="skills[0].proficiencyLevel" id="level" />
					</div>

					<div class="data">
						<label>Have you implemented any project</label> <select
							id="handson" name="skills[0].implemented">
							<option value="YES">Yes,I have hands-on</option>
							<option value="NO">No,But I have theoretical
								knowledge</option>
						</select>

					</div>
					
						<i class="fa fa-minus-circle" onclick="deleteSkill(this)" style="visibility: hidden"></i>
					

				</div>
			</div>


			<div class="headings">Course or Exam Certification Details</div>
			<div class="data">
				<input type="button" onclick="duplicateCertificateDiv()" value="Add">&nbsp
				ADD UPTO &nbsp<span id="certificatecount">3</span>&nbspCERTIFICATIONS
			</div>
			<div class="personalData-row" id="certificateId">
				<div class="personalData-column" id="certificates">
					<i class="fa fa-minus-circle" onclick="deleteCertificate(this)" style="visibility: hidden"></i>
					<div class="data">
						<label>Certificate Name</label> 
						<input type="text" id="certificateName" name="certifications[0].certificateName" />
					</div>

					<div class="data">
						<label>Course Name &nbsp&nbsp&nbsp</label>
						 <input type="text" id="coursename" name="certifications[0].courseName" />
					</div>

					<div class="data">
						<label>Completion link</label> 
						<input type="text" name="certifications[0].certificationLink" />
					</div>

				</div>
			</div>
		</div>
		<div>
			<input type="submit" class="submitButton" value="Next" />
		</div>
	</form>

</body>

</html>