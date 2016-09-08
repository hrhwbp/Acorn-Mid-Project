<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>::MEMBER LOGIN::</title>
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"
	media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="../js/js.js"></script>
<script type="text/javascript">
	function funclogout() {
		location.href = "c_logout.jsp";
	}
	
	function funcLoginMain(){
		
		if(loginFrm.c_id.value === ""){
			$('#modal_check_id').openModal();			
		}else if(loginFrm.c_pw.value === ""){
			$('#modal_check_pw').openModal();			
		}else{
		      loginFrm.action = "../customer/c_loginproc.jsp";      
		      loginFrm.method="post";
		      loginFrm.submit();
		}   
	}
	
	function focusid(){
		loginFrm.c_id.focus();
	}
	
	function focuspw(){
		loginFrm.c_pw.focus();
	}
	
	
</script>
<style type="text/css">
.cardshape{
    background: rgba(0,0,0,1);
    color: white;
    border-radius: 3%;
    margin-top: 10%;
    margin-bottom: 10%;
    padding: 25%;
    padding-top: 5%;
    padding-bottom: 6%;	
}

.cardshapeinner{
	border-color: white;
    border-style: solid;
    padding: 20%;
    border-radius: 3%;
}

.cardimage{
	text-align: center;
    padding: 10%;
}

.cardtitle{
	color: white;
    text-align: center;
    text-decoration: overline;
    font-size: XX-LARGE;
    font-family: -webkit-body;
}

form#loginFrm {
    position: relative;
    margin-top: 10%;
}

div.login.btn{
	position: inherit;
    width: 100%;
    background: rebeccapurple;
    margin-top: -35%;
    margin-left: auto;
    margin-bottom: initial;
}

footer.black {
    background-color: #000 !important;
    border-top: 0px;
    padding-top: 0px !important;
}
</style>
</head>
<body>
	<%@ include file="../index/top_index.jsp"%>
	<%
		String id = (String) session.getAttribute("c_id");
		if (id != null) {
			System.out.println(request.getHeader("referer"));
	%>
	<b><%=id%>님 환영</b>
	<br>
	<a href="../index.jsp">홈페이지</a>
	<br>
	<a href="javascript:funclogout()">로그아웃</a>
	<%@ include file="../index/bottom_index.jsp"%>
	<%
		} else {
			String urladdr = request.getHeader("referer");
	%>
	
	<div class="container">
	<div class="cardshape">
	<div class="cardshapeinner">
		<div class="cardimage"><img src="../image/comma.png"></div>
		<div class="cardtitle col s12">THE SHUIME MOTORS</div>
		<form name="loginFrm" id="loginFrm" >
			 <div class="row">
        <div class="input-field col s12">
          <i class="material-icons prefix">account_circle</i>
          <input type="text" id="c_id" name="c_id" class="validate">
          <label for="icon_prefix">MEMBER ID</label>
        </div>
        </div>
        <div class="row">
        <div class="input-field col s12">
          <i class="material-icons prefix">vpn_key</i>
          <input type="password" id="c_pw" name="c_pw" class="validate">
          <label for="c_pw">PASSWORD</label>
        </div>
      </div>      
		</form>
	</div> 	
		<div class="row s12 login btn">
		<div class="col s12" onclick="funcLoginMain()"><i class="material-icons left ">power_settings_new</i>ENGINE START</div>		
		<div class="col s12"><i class="material-icons left ">assignment_ind</i>BE A MEMBER</div>
		</div>
	</div>
	</div>
	
	<!-------------- 아이디 비밀번호 검사때 사용될 모달창 ------------------>
	<!-- 아이디 입력확인 모달 -->
	<div id="modal_check_id" class="modal">
    <div class="modal-content">
      <h4 style="text-align: center;">ID를 확인해 주세요!</h4>
      <!-- <p style="text-align: center;">ID를 확인해 주세요!</p> -->
    </div>
    <div class="modal-footer" style="text-align: center;">
      <a onclick="focusid()" class=" modal-action modal-close waves-effect waves-green btn-flat">확인</a>
    </div>
  </div>

<div id="modal_check_pw" class="modal">
    <div class="modal-content">
      <h4 style="text-align: center;">비밀번호를 확인해 주세요!</h4>
    </div>
    <div class="modal-footer" style="text-align: center;">
      <a onclick="focuspw()" class=" modal-action modal-close waves-effect waves-green btn-flat">확인</a>
    </div>
  </div>

	<%
		}
	%>

<%@ include file="../index/bottom_index.jsp"%>
</body>
</html>
