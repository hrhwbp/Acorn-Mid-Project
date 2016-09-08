<%@page import="projectpack.business.CustomerDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String c_id = (String)session.getAttribute("c_id");
%>
<jsp:useBean id="processDao2" class="projectpack.business.ProcessDao"/>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"
	media="screen,projection" />
<title>::MEMBER LOGIN::</title>
<script>
	//상단 메뉴 탭바를 통한 이동경로 및 액션 설정----------------------
	function redirect(arg) {
		if (arg.id == "home") {
			location.href = "../index/index.jsp";
		} else if (arg.id == "about") {
			location.href = "../about/about.jsp";
		} else if (arg.id == "vehicle") {
			location.href = "../vehicle/vehicle.jsp";
		} else if (arg.id == "reservation") {
			location.href = "../reservation/r_main.jsp";
		} else if (arg.id == "support") {
			location.href = "../board/freq.jsp";
		}
	}

	function mebership(c_id){
		if(c_id == "null"){
			location.href = "../customer/c_login.jsp";
		}else{
			$('#myinfo').openModal();
		}
	}
	
	function funcLogin() {

		if (loginFrm.c_id.value === "") {
			alert("id 입력해주세요");
			loginFrmid.focus();
		} else if (loginFrm.c_pw.value === "") {
			alert("비번 입력");
			loginFrm.c_pw.focus();
		} else {
			loginFrm.action = "../customer/c_loginproc.jsp";
			loginFrm.method = "post";
			loginFrm.submit();
			alert("넘어간다~~")
		}
	}
</script>
</head>
<body>
	<!----------------------------------------- 상단 메뉴 탭바 설정 ------------------------------------------>
	<div>
		<% 
		String currentPage = request.getRequestURL().toString(); String
		NewCurrentPage = currentPage.substring(28,currentPage.length());
		String[] directory = NewCurrentPage.split("/");
		//out.println(directory[0]);
		
		if(directory[0].equals("about")){ %>
		<ul class="tabs black text-white" style="font-size: 20px;">
			<li class="tab col s1"><a class="" id="home" onclick="redirect(this);">HOME</a></li>
			<li class="tab col s2"><a class="active" id="about"	onclick="redirect(this);">ABOUT</a></li>
			<li class="tab col s2"><a class="" id="vehicle"	onclick="redirect(this);">VEHICLES</a></li>
			<li class="tab col s2"><a class="" id="reservation"	onclick="redirect(this);">RESERVATION</a></li>
			<li class="tab col s2"><a class="" id="membership" href="#" onclick="mebership('<%=c_id%>')">MEMBERSHIP</a></li>  
			<li class="tab col s2"><a class="" id="support"	onclick="redirect(this);">SUPPORT</a></li>
		</ul>
		<%}else if(directory[0].equals("vehicle")){ %>
		<ul class="tabs black text-white" style="font-size: 20px;">
			<li class="tab col s1"><a class="" id="home" onclick="redirect(this);">HOME</a></li>
			<li class="tab col s2"><a class="" id="about"	onclick="redirect(this);">ABOUT</a></li>
			<li class="tab col s2"><a class="active" id="vehicle"	onclick="redirect(this);">VEHICLES</a></li>
			<li class="tab col s2"><a class="" id="reservation"	onclick="redirect(this);">RESERVATION</a></li>
			<li class="tab col s2"><a class="" id="membership" href="#" onclick="mebership('<%=c_id%>')">MEMBERSHIP</a></li>  
			<li class="tab col s2"><a class="" id="support"	onclick="redirect(this);">SUPPORT</a></li>
		</ul>
		<%}else if(directory[0].equals("reservation")){ %>
		<ul class="tabs black text-white" style="font-size: 20px;">
			<li class="tab col s1"><a class="" id="home" onclick="redirect(this);">HOME</a></li>
			<li class="tab col s2"><a class="" id="about"	onclick="redirect(this);">ABOUT</a></li>
			<li class="tab col s2"><a class="" id="vehicle"	onclick="redirect(this);">VEHICLES</a></li>
			<li class="tab col s2"><a class="active" id="reservation"	onclick="redirect(this);">RESERVATION</a></li>
			<li class="tab col s2"><a class="" id="membership" href="#" onclick="mebership('<%=c_id%>')">MEMBERSHIP</a></li>  
			<li class="tab col s2"><a class="" id="support"	onclick="redirect(this);">SUPPORT</a></li>
		</ul>
		<%}else if(directory[0].equals("membership")){ %>
		<ul class="tabs black text-white" style="font-size: 20px;">
			<li class="tab col s1"><a class="" id="home" onclick="redirect(this);">HOME</a></li>
			<li class="tab col s2"><a class="active" id="about"	onclick="redirect(this);">ABOUT</a></li>
			<li class="tab col s2"><a class="" id="vehicle"	onclick="redirect(this);">VEHICLES</a></li>
			<li class="tab col s2"><a class="" id="reservation"	onclick="redirect(this);">RESERVATION</a></li>
			<li class="tab col s2"><a class="" id="membership" href="#" onclick="mebership('<%=c_id%>')">MEMBERSHIP</a></li>  
			<li class="tab col s2"><a class="" id="support"	onclick="redirect(this);">SUPPORT</a></li>
		</ul>
		<%}else if(directory[0].equals("board")){ %>
		<ul class="tabs black text-white" style="font-size: 20px;">
			<li class="tab col s1"><a class="" id="home" onclick="redirect(this);">HOME</a></li>
			<li class="tab col s2"><a class="" id="about"	onclick="redirect(this);">ABOUT</a></li>
			<li class="tab col s2"><a class="" id="vehicle"	onclick="redirect(this);">VEHICLES</a></li>
			<li class="tab col s2"><a class="" id="reservation"	onclick="redirect(this);">RESERVATION</a></li>
			<li class="tab col s2"><a class="" id="membership" href="#" onclick="mebership('<%=c_id%>')">MEMBERSHIP</a></li>  
			<li class="tab col s2"><a class="active" id="support"	onclick="redirect(this);">SUPPORT</a></li>
		</ul>
		<%}else{ %>
		<ul class="tabs black text-white" style="font-size: 20px;">
			<li class="tab col s1"><a class="active" id="home" onclick="redirect(this);">HOME</a></li>
			<li class="tab col s2"><a class="" id="about"	onclick="redirect(this);">ABOUT</a></li>
			<li class="tab col s2"><a class="" id="vehicle"	onclick="redirect(this);">VEHICLES</a></li>
			<li class="tab col s2"><a class="" id="reservation"	onclick="redirect(this);">RESERVATION</a></li>
			<li class="tab col s2"><a class="" id="membership" href="#" onclick="mebership('<%=c_id%>')">MEMBERSHIP</a></li>  
			<li class="tab col s2"><a class="" id="support"	onclick="redirect(this);">SUPPORT</a></li>
		</ul>
		<%} %>
	</div>
	<%if(session.getAttribute("c_id") != null){ %>
	<div style="text-align: left;">
	<%String id = (String)session.getAttribute("c_id");%>
	<%=id %>님 환영합니다.
	<p style="text-align: right;"><a href="../customer/c_logout.jsp">로그아웃</a></p>
	</div>
	<%} %>
	
	<%
if(c_id == null){
   
}else{   
CustomerDto dto = processDao2.selectcustomerPartId(c_id);
%>   
    <!--회원 정보 수정 모달  -->
     <div id="myinfo" class="row modal">
       <form class="col s12 l12" action="../customer/c_myinfoeditproc.jsp" method="post" >
          <div class="row">
               <div class="input-field col s4 offset-s3">
                   <input readonly="readonly" id="c_id" type="text" class="validate" name="c_id" value="<%=dto.getC_id()%>">
                   <label for="c_id">ID</label>
               </div>
           </div>
           <div class="row">
               <div class="input-field col s6 offset-s3 imsi30">
                   <input id="c_pw" type="password" class="validate" name="c_pw" value="<%=dto.getC_pw()%>">
                   <label for="c_pw">Password</label>
               </div>
           </div>
          <div class="row">
              <div class="input-field col s6 offset-s3 imsi30" >
                   <input readonly="readonly" id="c_name" type="text" class="validate" name = "c_name" value="<%=dto.getC_name()%>">
                   <label for="c_name">Name</label>
               </div>
          </div>
          <div class="row">
        <div class="input-field col s3 offset-s3 imsi30" >
          <input readonly="readonly" placeholder="ex) 960101" id="c_jumin_first" name="c_jumin_first" type="text" value="<%=dto.getC_jumin_first()%>" class="validate center-align">
          <label for="c_jumin_first">주민등록번호</label>
         </div>
         <div class="input-field col s3 imsi30" >
          <input readonly="readonly" placeholder="1234567" id="c_jumin_last" name = "c_jumin_last" type="text" value="<%=dto.getC_jumin_last()%>" class="validate center-align">
         </div>
       </div>
       <div class="row">
        <div class="input-field col s2 offset-s3 imsi30" >
          <input placeholder="지역 또는 번호" id="c_lic" name="c_lic" value="<%=dto.getC_lic()%>" type="text" class="validate center-align">
          <label for="c_lic">면허정보</label>
         </div>
         <div class="input-field col s4 imsi30" >
          <input placeholder="ex) 23-123456-12" id="c_lic2" name="c_lic2" value="<%=dto.getC_lic2()%>" type="text" class="validate center-align">
         </div>
        </div>
        <div class="row">
        <div class="input-field col s6 offset-s3 imsi30" >
          <input id="c_tel" name="c_tel" type="text" class="validate" value="<%=dto.getC_tel()%>">
          <label for="c_tel">Phone</label>
         </div>
       </div>
       <div class="row">
        <div class="input-field col s6 offset-s3 imsi30" >
          <input id="c_email" name="c_email" type="text" class="validate" value="<%=dto.getC_email()%>">
          <label for="c_email">E-Mail</label>
         </div>
       </div>
        <div class="row">
        <div class="col s3 offset-s3 right-align">
             <button id="btnOk" style="margin-top: 15px; font-size: 10px" class="btn waves-effect waves-light" type="submit" name="action">
                수정완료
           </button>
         </div>
         <div class="col s3 left-align" >
            <a class="waves-effect waves-light btn modal-close" 
            style="margin-top: 15px; font-size: 10px">
            취&nbsp;&nbsp;&nbsp;&nbsp;소
            </a>
         </div>
        </div>
    </form>
  </div>
<%
}
%>
	
	<%@include file="../reservation/r_modal.jsp" %>

</body>
</html>