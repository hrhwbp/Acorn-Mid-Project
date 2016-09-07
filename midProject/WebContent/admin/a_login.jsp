<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="login-bg">
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 여기서부터 new css... bootstrap -->
<link href="../css/bootstrap.css" rel="stylesheet" />
<link href="../css/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

<!-- libraries -->
<link href="../css/font-awesome.css" type="text/css" rel="stylesheet" />

<!-- global styles -->
<link rel="stylesheet" type="text/css" href="../css/layout.css" />
<link rel="stylesheet" type="text/css" href="../css/elements.css" />
<link rel="stylesheet" type="text/css" href="../css/icons.css" />

<!-- this page specific styles -->
<link rel="stylesheet" href="../css/signin.css" type="text/css" media="screen" />

<!-- open sans font -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
 rel='stylesheet' type='text/css' />

<!-- scripts -->
<script type="text/javascript"	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/theme.js"></script>
<script type="text/javascript" src="../js/js.js"></script>




<!-- 이미지 부르기 -->
<!-- <script type="text/javascript">
	$(document).ready(function () {
		// bg switcher
		//var $btns = 
		$(".bg-switch .bg").click(function (e) {
			e.preventDefault();
			$btns.removeClass("active");
			$(this).addClass("active");
			var bg = $(this).data("img");

			$("html").css("background-image", "url('img/bgs/" + bg + "')");
		});
	});
</script> -->

</head>
<body>


<%
String id = (String)session.getAttribute("a_id");
if(id != null){
%>
	<b><%=id %>님 환영</b><br>
	<a href="../index.jsp">홈페이지</a><br>
	<a href="logout.jsp">로그아웃</a>
<%
}else{
%>
<!--이미지 바꾸기 바 -->
<!-- <div class="bg-switch visible-desktop">
	<div class="bgs">
		<a href="#" data-img="parallax1.jpg" class="bg active">
			<img src="../image/parallax1.jpg" alt="background" />
		</a>
		<a href="#" data-img="부가티.jpg" class="bg">
			<img src="../image/부가티.jpg" alt="background" />
		</a>
	</div>
</div> -->

<form name="loginFrm" id ="loginFrm">
	<div class="login-wrapper">
		<div class="box">
			<div class="content-wrap">
                <h6>로그인</h6>
                <input class="form-control" type="text" name="id" placeholder=" Your ID">
                <input class="form-control" type="password" name="pw" placeholder="Your password">
                <input type="button" value="로그인" id = "btnLogin" onclick="funcAlogin()">
				<input type="button" value="홈페이지" id = "btnHome" onclick="funchome()">
                <div class="remember">
					<input id="remember-me" type="checkbox">
                   	<label for="remember-me">계정 저장</label>
               	</div>
           	</div>
       	</div>
	</div>
</form>
<%	
}
%>

</body>
</html>
