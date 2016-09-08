<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String c_id = (String)request.getAttribute("c_id");%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css" media="screen,projection" />
<title>::MEMBER LOGIN::</title>
<script>

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
	}else if(arg.id == "support"){
	location.href = "../board/freq.jsp";
	}
}

function funcLogin(){
	   
	   if(loginFrm.c_id.value === ""){
	      alert("id 입력해주세요");
	      loginFrmid.focus();
	   }else if(loginFrm.c_pw.value === ""){
	      alert("비번 입력");
	      loginFrm.c_pw.focus();
	   }else{
	      loginFrm.action = "../customer/c_loginproc.jsp";      
	      loginFrm.method="post";
	      loginFrm.submit();
		  alert("넘어간다~~")
	   }   
	}


</script>
</head>
<body>   
<!----------------------------------------- 상단 메뉴 탭바 설정 ------------------------------------------> 
      <ul class="tabs black text-white" style="font-size: 20px;">
      	<li class="tab col s1"><a class="active" id="home" onclick="redirect(this);">HOME</a></li>
        <li class="tab col s2"><a class="" id="about" onclick="redirect(this);">ABOUT</a></li>
        <li class="tab col s2"><a class="" id="vehicle" onclick="redirect(this);">VEHICLES</a></li>
        <li class="tab col s2"><a class="" id="reservation" onclick="redirect(this);">RESERVATION</a></li>
        <li class="tab col s2"><a class="modal-trigger" href="#modal_login" id="membership" onclick="redirect(this);">MEMBERSHIP</a></li>
        <li class="tab col s2"><a class="" id="support" onclick="redirect(this);">SUPPORT</a></li>
      </ul>  

<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
 
</body>
</html>