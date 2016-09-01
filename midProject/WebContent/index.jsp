<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!--Import materialize.css-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">

<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body class="container row">
	<!-- Dropdown Structure -->
	<ul id="dropdown1" class="dropdown-content">
		<li><a href="#!">CEO인사</a></li>
		<li class="divider"></li>
		<li><a href="#!">소개</a></li>
		<li><a href="#!">비전</a></li>
		<li><a href="#!">STAFF</a></li>
	</ul>

	<nav>
		<div class="nav-wrapper #0097a7 cyan darken-2">
			<a href="#" class="brand-logo right"><img src="C:/Users/user/Desktop/logo.png">쉼(,)카</a>
			<ul id="nav-mobile" class="left hide-on-med-and-down">
				<li><a class="dropdown-button" href="#!"
					data-activates="dropdown1">쉼(,)카란?<i
						class="material-icons right">arrow_drop_down</i></a></li>
				<li><a href="vehicles.html">차량안내</a></li>
				<li><a href="reservation.html">예약관리</a></li>
				<li><a href="myinfo.html">회원정보</a></li>
				<li><a href="representative.html">고객센터</a></li>
			</ul>
		</div>
	</nav>

	<div class="col s6">
		<div class="collection">
			<a href="#!" class="collection-item">Alan<span class="badge">1</span></a>
			<a href="#!" class="collection-item">Alan<span class="new badge">4</span></a>
			<a href="#!" class="collection-item">Alan</a> <a href="#!"
				class="collection-item">Alan<span class="badge">14</span></a>
		</div>
	</div>

	<div class="col s6">
		<div class="collection">
			<a href="#!" class="collection-item teal lighten-2">Alan<span
				class="badge">1</span></a> <a href="#!"
				class="collection-item lime lighten-1">Alan<span
				class="new badge">4</span></a> <a href="#!" class="collection-item">Alan</a>
			<a href="#!" class="collection-item">Alan<span class="badge">14</span></a>
		</div>
	</div>

	<div class="col s6">
		<div class="collection">
			<a href="#!" class="collection-item">Alan<span class="badge">1</span></a>
			<a href="#!" class="collection-item">Alan<span class="new badge">4</span></a>
			<a href="#!" class="collection-item">Alan</a> <a href="#!"
				class="collection-item">Alan<span class="badge">14</span></a>
		</div>
	</div>


	<!--Import jQuery before materialize.js-->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
</body>
</html>
