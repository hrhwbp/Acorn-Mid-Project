<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">

<title>쉼카</title>
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"
	media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

</head>

<body style="background-color: black;">
	<%@ include file="top_index.jsp"%>
	<div class="homepage-hero-module">
		<div class="video-container">
			<div class="title-container">
				<div class="headline">
					<div class="filter1">
						<div class="iconplace">
							<div class="row">
								<!-- 첫번째 카드 -->
								<div class="col s12 m6">
									<div class="card blue-grey darken-1 hoverable">
										<div class="card-content white-text">
											<span class="card-title">BROWSE A VEHICLE</span>
											<p></p>
										</div>
										<div class="card-action">
											<a href="../vehicle/vehicle.jsp">BROWSE A VEHICLE</a>
										</div>
									</div>
								</div>
								<!-- 두번째 카드 -->
								<div class="col s12 m6">
									<div class="card blue-grey darken-1 hoverable">
										<div class="card-content white-text">
											<span class="card-title">RESERVE A VEHICLE</span>
											<p></p>
										</div>
										<div class="card-action">
											<a href="../reservation/r_main.jsp">RESERVE A VEHICLE</a>
										</div>
										<!-- <div class="card-action">
											<a href="#">This is a link</a> <a href="#">This is a link</a>
										</div> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>				
			</div>

			<!--동영상 주소 설정 입력  -->
			<div class="filter1">
			<video autoplay loop class="fillWidth">
				<source src="../video/S_class_2015.mp4" type="video/mp4" />
			</video>
			</div>
		</div>
	</div>
	<%@ include file="bottom_index.jsp"%>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="../js/materialize.min.js"></script>
</body>
</html>
