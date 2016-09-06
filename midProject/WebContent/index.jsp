<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">

<title>쉼(,)카</title>
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body style="background-color: black; ">
<%@ include file="index/top_index.jsp" %>
<div class="homepage-hero-module">
		<div class="video-container">
			<div class="title-container">
				<div class="headline">
					<div class="iconplace"><img src="image/steering.png" class = "icon"></div>
				</div>
				<div class="description">
					<!-- <div class="inner">blah~hlah~blah~blah~hlah~ㅅㅂblah</div> -->
				</div>
			</div>

			<!--동영상 입력  -->
			<div class="filter1"></div>
			<video autoplay loop class="fillWidth">
				<source src="video/S_class_2015.mp4" type="video/mp4" />
			</video>
		</div>
	</div>
<%@ include file="bottom_index.jsp" %>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>
