<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String c_id = (String)request.getAttribute("c_id");%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

//상단 메뉴 탭바를 통한 이동경로 및 액션 설정----------------------
function redirect(arg){	
	if(arg.id == "home"){
	location.href = "../index/index.jsp";
	}else if(arg.id == "about"){
	location.href = "../about/about.jsp";
	}else if(arg.id == "vehicle"){
	location.href = "../vehicle/vehicle.jsp";
	}else if(arg.id == "reservation"){
	location.href = "../reservation/r_main.jsp";
	}else if(arg.id == "membership"){
	//모달을 통한 로그인
	alert("login");
	}else if(arg.id == "support"){
	location.href = "../board/freq.jsp";
	}
}

</script>
</head>
<body>   
<!----------------------------------------- 상단 메뉴 탭바 설정 ------------------------------------------> 
      <ul class="tabs black text-white" style="font-size: 20px;">
      	<li class="tab col s1"><a class="active" id="home" onclick="redirect(this);">HOME</a></li>
        <li class="tab col s2"><a class="active" id="about" onclick="redirect(this);">ABOUT</a></li>
        <li class="tab col s2"><a class="active" id="vehicle" onclick="redirect(this);">VEHICLES</a></li>
        <li class="tab col s2"><a class="active" id="reservation" onclick="redirect(this);">RESERVATION</a></li>
        <li class="tab col s2"><a class="active" id="membership" onclick="redirect(this);">MEMBERSHIP</a></li>
        <li class="tab col s2"><a class="active" id="support" onclick="redirect(this);">SUPPORT</a></li>
      </ul>  

</body>
</html>