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

<script>
	var unqid = "${uniqueId}";

	function changebloglink() {
		const alink = document.getElementById("bloglink")
		alink.href = "yb-resumeBlog/" + unqid;
	}

	function preventBack() {
		window.history.forward();
	}
	setTimeout("preventBack()", 0);
	window.onunload = function() {
		null
	};
</script>
<body class="conainer">
	<div class="title">
		RESUME CREATION Completed <a href="logout">LOGOUT</a>
	</div>
	
	<!-- http://localhost:8080/yb-resumeBlog/yb27zzA127qqN25.0D
http://localhost:8080/yb-resumeBlog/yb27zzA78qqN20.0T 
http://localhost:8080/yb-resumeBlog/yb24zzA167qqN18.0C-->
	<div class="pageInfo">Finalized...</div>
	<a href="" id="bloglink" target="_blank" onclick="changebloglink()">
		Your Resume Blog is ready!!!</a>
	<a href="#" id="pdflink" target="_blank">Choose Your Resume Pattern
		& Download</a>
	<c:if test="${editStatus}">
		<p>
			RESUME EDIT OPTION WILL BE COMING SOON!!!!!!!
		<p>
	</c:if>


</body>

</html>