<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>차량 조회</title>
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"
	media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('.carousel').carousel();
});

function func(arg){
	location.href = "vehicle2.jsp?v_name="+arg;
}
</script>
</head>
<body>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>
<%@ include file="../index/top_index.jsp"%>


	<!--차량조회용 -->
		<div class="carousel">
			<a class="carousel-item" href="javascript:func('Aston Martin')"><img class="responsive-img" src="../images/Aston Martin.png"></a> 
			<a class="carousel-item" href="javascript:func('Benz')"><img class="responsive-img" src="../images/Benz.png"></a>
			<a class="carousel-item" href="javascript:func('BMW')"><img class="responsive-img" src="../images/BMW.png"></a> 
			<a class="carousel-item" href="javascript:func('Bugatti')"><img class="responsive-img" src="../images/Bugatti.png"></a> 
			<a class="carousel-item" href="javascript:func('Lamborghini')"><img class="responsive-img" src="../images/Lamborghini.png"></a>
			<a class="carousel-item" href="javascript:func('Maserati')"><img class="responsive-img" src="../images/Maserati.png"></a> 
			<a class="carousel-item" href="javascript:func('Porsche')"><img class="responsive-img" src="../images/Porsche.png"></a> 
		</div>
	<%

	%>
	
	<div class="container">
	<div>
	</div>
	<div class="row">
	<div class="card sticky-action col s5 offset-s1" >
    	<div class="card-image waves-effect waves-block waves-light" >
      		<img class="activator" src="../image/부가티.jpg">
    	</div>
    	<div class="card-action">
      		<span class="card-title activator grey-text text-darken-4">추천차량1<i class="material-icons right">more_vert</i></span>
      		<p><a href="#">예약하러가기</a></p>
    	</div>
    	<div class="card-reveal">
      		<span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
      		<p>Here is some more information about this product that is only revealed once clicked on.</p>
    	</div>
  	</div>
  	
  	
  	
  	<div class="card sticky-action col s5 offset-s1" >
    	<div class="card-image waves-effect waves-block waves-light">
      		<img class="activator" src="../image/부가티.jpg">
    	</div>
    	<div class="card-action">
      		<span class="card-title activator grey-text text-darken-4">추천차량<i class="material-icons right">more_vert</i></span>
      		<p><a href="#">예약하기</a></p>
    	</div>
    	<div class="card-reveal">
      		<span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
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