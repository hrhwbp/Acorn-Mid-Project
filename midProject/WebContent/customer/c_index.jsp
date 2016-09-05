<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쉼(,)카</title>

<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css" media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<style type="text/css">
      .imsi30{
      height: 30px;
      }
      .imsi20{
      height: 20px;
      }

</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
		$('.parallax').parallax();

		//사이드 메뉴
		$('.button-collapse').sideNav('show');
		$('.button-collapse').sideNav('hide');
		$('.button-collapse').sideNav({
			menuWidth : 300, // Default is 240
			edge : 'left', // Choose the horizontal origin
			closeOnClick : true
		});

		//top menu 툴팁
		$('.tooltipped').tooltip({
			delay : 50
		});

		//css 충돌방지
		/* var bootstrapButton = $.fn.button.noConflict()
		$.fn.bootstrapBtn = bootstrapButton */

		//비디오 실행
		$("#video-1").on("ended", function() {
			var $video2 = $("#video-2");
			$(window).scrollTop($video2.offset().top);
			$video2[0].play();
		});

		//----------------비디오 사이즈 조정------------------------------------
		scaleVideoContainer();

		initBannerVideoSize('.video-container .poster img');
		initBannerVideoSize('.video-container .filter');
		initBannerVideoSize('.video-container video');

		$(window).on('resize', function() {
			scaleVideoContainer();
			scaleBannerVideoSize('.video-container .poster img');
			scaleBannerVideoSize('.video-container .filter');
			scaleBannerVideoSize('.video-container video');
		});

		//Modal&carousel 차량 조회용 
		$('.modal-trigger').leanModal();
		$('.carousel').carousel();
		
		// Next slide
		$('.carousel').carousel('next');
		$('.carousel').carousel('next', 3); // Move next n times.
		// Previous slide
		$('.carousel').carousel('prev');
		$('.carousel').carousel('prev', 4); // Move prev n times.
		// Set to nth slide
		$('.carousel').carousel('set', 4);

		
    	 $('select').material_select();
	     $('select').material_select('destroy');
	     

		
	});

	//----------------비디오 사이즈 조정------------------------------------
	function scaleVideoContainer() {
		var height = $(window).height();
		var unitHeight = parseInt(height) + 'px';
		$('.homepage-hero-module').css('height', unitHeight);
	}

	function initBannerVideoSize(element) {
		$(element).each(function() {
			$(this).data('height', $(this).height());
			$(this).data('width', $(this).width());
		});
		scaleBannerVideoSize(element);
	}

	function scaleBannerVideoSize(element) {
		var windowWidth = $(window).width(), windowHeight = $(window).height(), videoWidth, videoHeight;
		console.log(windowHeight);
		$(element).each(function(){
			var videoAspectRatio = $(this).data('height') / $(this).data('width'), 
			windowAspectRatio = windowHeight / windowWidth;
			
			if (videoAspectRatio > windowAspectRatio) {
				videoWidth = windowWidth;
				videoHeight = videoWidth * videoAspectRatio;
				$(this).css({'top' : -(videoHeight - windowHeight) / 2 + 'px','margin-left' : 0});
			} else {
				videoHeight = windowHeight;
				videoWidth = videoHeight / videoAspectRatio;
				$(this).css({'margin-top' : 0,'margin-left' : -(videoWidth - windowWidth) / 2 + 'px'});
			}
		
			$(this).width(videoWidth).height(videoHeight);
			$('.homepage-hero-module .video-container video').addClass('fadeIn animated');
		});
	}
	
	// volume buttons
   /*document.getElementById("mute").addEventListener("click", function (evt) {
		if (video.muted) {
			video.muted = false;
			evt.target.innerHTML = "<img alt='volume on button' src='volume.jpg' />"
		} else {
			video.muted = true;
			evt.target.innerHTML = "<img alt='volume off button' src='mute.png' />"
		}
	}, false);*/
	
</script>
</head>
<body>
	<%@ include file="c_top.jsp"%>

	<div class="homepage-hero-module">
		<div class="video-container">
			<div class="title-container">
				<div class="headline">
					<h1>지친 당신이 누려야 할 가장 멋진 쉼</h1>
				</div>
				<div class="description">
					<div class="inner">쉼(,)카</div>
				</div>
			</div>

			<!--동영상 입력  -->
			<div class="filter"></div>
			<video autoplay loop class="fillWidth">
				<source src="../video/S_class_2015.mp4" type="video/mp4" />
			</video>
		</div>
	</div>
<div id="buttonbar" style="display: none;">
	<button id="mute" title="Mute button" ><img alt="Volume on button" src = "../image/volume.jpg"/></button>
</div>

	<!-- Modal 차량조회용 -->
	
		<!--<div id="modal_Csearch" class="modal">
			<div class="modal-content">
				<div class="carousel">
					<a class="carousel-item" href="#1"><img src="../logoImage/Aston Martin.jpg"></a> 
					<a class="carousel-item" href="#2"><img src="../logoImage/Bentley.jpg"></a>
					<a class="carousel-item" href="#3"><img src="../logoImage/BMW.jpg"></a> 
					<a class="carousel-item" href="#4"><img src="../logoImage/Bugatti.jpg"></a> 
					<a class="carousel-item" href="#5"><img src="../logoImage/Cadillac.jpg"></a> 
					<a class="carousel-item" href="#6"><img src="../logoImage/Lamborghini.png"></a>
					<a class="carousel-item" href="#7"><img src="../logoImage/Maserati.jpg"></a> 
					<a class="carousel-item" href="#8"><img src="../logoImage/Porsche.jpg"></a> 
					<a class="carousel-item" href="#9"><img src="../logoImage/Tesla.jpg"></a>
				</div>
			</div>
			<div class="modal-footer">
				<a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Disagree</a>
				<a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
			</div>
		</div>-->
	
	<%@ include file="c_bottom.jsp"%>
</body>
</html>














