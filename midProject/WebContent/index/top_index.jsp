<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String c_id = (String)request.getAttribute("c_id");%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
<!-------------------------------------- 회원가입을 위한 모달 설정 ---------------------------------------->
<!-- Modal 로그인용 -->
<div class="container login">
  <div class="row s12">
  <div id="modal_login" class="modal col s4 offset-s3">
  <form method="post" name="loginFrm">
    <div class="modal-content center-align">
      <h4>Login</h4>
      <input placeholder="I D" type="text" name="c_id" class="center-align">
      <input placeholder="Password" type="password" name="c_pw" class="center-align">
      <p/>
    </div>
    <div class="modal-footer center-align">
      <a href="#" onclick = "funcLogin()" class="modal-action">로그인</a>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a class="waves-effect waves-light modal-trigger" href="#modal_register">회원가입</a>
    </div>
  </form>
  </div>
  </div>
  </div>

<!--회원가입 모달-->
   <div class="container register">
   <div id="modal_register" class="row modal">
       <form class="col s12 l12" action="c_insert.jsp" method="post" id="registerFrm" name="registerFrm">
          <div class="row">
               <div class="input-field col s4 offset-s3">
                   <input id="c_id" type="text" class="validate" name="c_id">
                   <label for="c_id">ID</label>
               </div>
               <div class="col s2">
                  <a class="waves-effect waves-light btn" id="id_check" style="margin-top: 15px; font-size: 10px">Check</a>
               </div>
           </div>
           <div class="row">
               <div class="input-field col s6 offset-s3 imsi30">
                   <input id="c_pw" type="password" class="validate" name="c_pw">
                   <label for="c_pw">Password</label>
               </div>
           </div>
          <div class="row">
              <div class="input-field col s6 offset-s3 imsi30" >
                  <input placeholder="Password" id="c_pw_check" type="password" class="validate" name="c_pw_check">
                   <label for="c_pw_check">Password Check</label>
               </div>
          </div>
          <div class="row">
              <div class="input-field col s6 offset-s3 imsi30" >
                   <input id="c_name" type="text" class="validate" name = "c_name">
                   <label for="c_name">Name</label>
               </div>
          </div>
          <div class="row">
        <div class="input-field col s3 offset-s3 imsi30" >
          <input placeholder="ex) 960101" id="c_jumin_first" name="c_jumin_first" type="text" class="validate center-align">
          <label for="c_jumin_first">주민등록번호</label>
         </div>
         <div class="input-field col s3 imsi30" >
          <input placeholder="1234567" id="c_jumin_last" name = "c_jumin_last" type="text" class="validate center-align">
         </div>
       </div>
       <div class="row">
        <div class="input-field col s2 offset-s3 imsi30" >
          <input placeholder="지역 또는 번호" id="c_lic" name="c_lic" type="text" class="validate center-align">
          <label for="c_lic">면허정보</label>
         </div>
         <div class="input-field col s4 imsi30" >
          <input placeholder="ex) 23-123456-12" id="c_lic2" name="c_lic2" type="text" class="validate center-align">
         </div>
        </div>
        <div class="row">
        <div class="input-field col s6 offset-s3 imsi30" >
          <input id="c_tel" name="c_tel" type="text" class="validate">
          <label for="c_tel">Phone</label>
         </div>
       </div>
       <div class="row">
        <div class="input-field col s6 offset-s3 imsi30" >
          <input id="c_email" name="c_email" type="text" class="validate">
          <label for="c_email">E-Mail</label>
         </div>
       </div>
       <div class="row">
        <div class="input-field col s4 offset-s3 imsi20">
          <input placeholder="우편 번호" id="c_zip" name="c_zip" type="text" class="validate">
          <label for="c_zip">Address</label>
         </div>
         <div class="col s3 imsi20">
            <a class="waves-effect waves-light btn full" id="btnSearch"
            style="margin-top: 15px; font-size: 10px">
            search
            </a>
         </div>
       </div>
       <div class="row">
        <div class="input-field col s6 offset-s3 imsi20">
          <input placeholder="주소" id="c_addr" name="c_addr" type="text" class="validate">
         </div>
        </div>
       <div class="row">
       <div class="input-field col s6 offset-s3 imsi20">
        <select>
          <option value="" disabled selected>선택해주세요.</option>
          <option value="1">Option 1</option>
          <option value="2">Option 2</option>
          <option value="3">Option 3</option>
        </select>
        <label>비밀번호찾기에 대한 답변입니다</label>
      </div>
       </div>
      <div class="row">
        <div class="input-field col s6 offset-s3 imsi20">
          <input placeholder="답변" id="c_ans" name="c_ans" type="text" class="validate">
         </div>
        </div>
        <div class="row">
        <div class="col s3 offset-s3 right-align">
             <button id="btnOk" style="margin-top: 15px; font-size: 10px" class="btn waves-effect waves-light" type="button" name="action">
                가입완료
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
 </div>
</body>
</html>