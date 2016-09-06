<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"
	media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
<%@ include file="../index/top_index.jsp"%>


	<!--차량조회용 -->
		<div class="carousel">
			<a class="carousel-item" href="../vehicle/vehicle.jsp?v_num=1"><img src="../logoImage/Aston Martin.jpg"></a> 
			<a class="carousel-item" href="../vehicle/vehicle.jsp?v_num=2"><img src="../logoImage/Bentley.jpg"></a>
			<a class="carousel-item" href="../vehicle/vehicle.jsp?v_num=3"><img src="../logoImage/BMW.jpg"></a> 
			<a class="carousel-item" href="../vehicle/vehicle.jsp?v_num=4"><img src="../logoImage/Bugatti.jpg"></a> 
			<a class="carousel-item" href="../vehicle/vehicle.jsp?v_num=5"><img src="../logoImage/Cadillac.jpg"></a> 
			<a class="carousel-item" href="../vehicle/vehicle.jsp?v_num=6"><img src="../logoImage/Lamborghini.png"></a>
			<a class="carousel-item" href="../vehicle/vehicle.jsp?v_num=7"><img src="../logoImage/Maserati.jpg"></a> 
			<a class="carousel-item" href="../vehicle/vehicle.jsp?v_num=8"><img src="../logoImage/Porsche.jpg"></a> 
			<a class="carousel-item" href="../vehicle/vehicle.jsp?v_num=9"><img src="../logoImage/Tesla.jpg"></a>
		</div>
	
	
	<div class="container">
	<div class="row">
	<div class="card sticky-action col s3 offset-s1">
    	<div class="card-image waves-effect waves-block waves-light">
      		<img class="activator" src="../image/부가티.jpg">
    	</div>
    	<div class="card-action">
      		<span class="card-title activator grey-text text-darken-4">부가티1<i class="material-icons right">more_vert</i></span>
      		<p><a href="#">This is a link</a></p>
    	</div>
    	<div class="card-reveal">
      		<span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
      		<p>Here is some more information about this product that is only revealed once clicked on.</p>
    	</div>
  	</div>
  	
  	
  	
  	<div class="card sticky-actioncol col s3 offset-s1" >
    	<div class="card-image waves-effect waves-block waves-light">
      		<img class="activator" src="../image/부가티.jpg">
    	</div>
    	<div class="card-action">
      		<span class="card-title activator grey-text text-darken-4">부가티2<i class="material-icons right">more_vert</i></span>
      		<p><a href="#">This is a link</a></p>
    	</div>
    	<div class="card-reveal">
      		<span class="card-title grey-text text-darken-4">성능<i class="material-icons right">close</i></span>
      		<p>Here is some more information about this product that is only revealed once clicked on.</p>
    	</div>
  	</div>
  	
  	
  
  	<div class="card sticky-action col s3 offset-s1">
    	<div class="card-image waves-effect waves-block waves-light">
      		<img class="activator" src="../image/부가티.jpg">
    	</div>
    	<div class="card-action">
      		<span class="card-title activator grey-text text-darken-4">부가티3<i class="material-icons right">more_vert</i></span>
      		<p><a href="#">This is a link</a></p>
    	</div>
    	<div class="card-reveal">
      		<span class="card-title grey-text text-darken-4">성능<i class="material-icons right">close</i></span>
      		<p>Here is some more information about this product that is only revealed once clicked on.</p>
    	</div>
  	</div>
</div>
</div>


<%@ include file="../index/bottom_index.jsp"%>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="../js/materialize.min.js"></script>
</body>
</html>