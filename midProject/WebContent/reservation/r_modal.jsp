<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.icon-color{
	color: red;
}
</style>
<script type="text/javascript">
</script>
</head>
<body>
  <!-- Modal Structure -->
  <div id="date-err1" class="modal">
    <div class="modal-content  center-align">
      <i class="medium material-icons icon-color">error_outline</i>
      <p>오늘보다 이전 날짜에는 예약할 수 없습니다.</p>
    </div>
    <div class="modal-footer center-align">
      <a href="#!" class=" modal-action modal-close waves-effect waves-green">확인</a>
    </div>
  </div>
  
  
  <div id="date-err2" class="modal">
    <div class="modal-content  center-align">
      <i class="medium material-icons icon-color">error_outline</i>
      <p>예약한 날짜보다 이전날짜에 반납할 수 없습니다.</p>
    </div>
    <div class="modal-footer center-align">
      <a href="#!" class=" modal-action modal-close waves-effect waves-green">확인</a>
    </div>
  </div>
  
  <div id="date-err3" class="modal">
    <div class="modal-content  center-align">
      <i class="medium material-icons icon-color">error_outline</i>
      <p>지금보다 이전 시간은 선택할 수 없습니다. 시간을 다시 선택해주세요</p>
    </div>
    <div class="modal-footer center-align">
      <a href="#!" class=" modal-action modal-close waves-effect waves-green">확인</a>
    </div>
  </div>
  
  <div id="date-err4" class="modal">
    <div class="modal-content  center-align">
      <i class="medium material-icons icon-color">error_outline</i>
      <p>지금시간보다 늦게 예약하여 주십시오.</p>
    </div>
    <div class="modal-footer center-align">
      <a href="#!" class=" modal-action modal-close waves-effect waves-green">확인</a>
    </div>
  </div>
  
  
  <div id="re-err" class="modal">
    <div class="modal-content  center-align">
      <i class="medium material-icons icon-color">error_outline</i>
      <p>필수정보를 선택해주세요.</p>
    </div>
    <div class="modal-footer center-align">
      <a href="#!" class=" modal-action modal-close waves-effect waves-green">확인</a>
    </div>
  </div>
  
  <!--회원가입 모달-->
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
  
    <div id="idisNull" class="modal">
    <div class="modal-content  center-align">
      <i class="medium material-icons icon-color">error_outline</i>
      <p>ID를 입력해주세요</p>
    </div>
    <div class="modal-footer center-align">
      <a href="#" class=" modal-action modal-close waves-effect waves-green">확인</a>
    </div>
  </div>
  
  
    <div id="passwdisNull" class="modal">
    <div class="modal-content  center-align">
      <i class="medium material-icons icon-color">error_outline</i>
      <p>Password를 입력해주세요</p>
    </div>
    <div class="modal-footer center-align">
      <a href="#" class=" modal-action modal-close waves-effect waves-green">확인</a>
    </div>
  </div>
  
     <div id="pwcheck" class="modal">
    <div class="modal-content  center-align">
      <i class="medium material-icons icon-color">error_outline</i>
      <p>비밀번호가 일치하지 않습니다</p>
    </div>
    <div class="modal-footer center-align">
      <a href="#" class=" modal-action modal-close waves-effect waves-green">확인</a>
    </div>
  </div>

done
     <div id="idCheckOk" class="modal">
    <div class="modal-content  center-align">
      <i class="medium material-icons icon-color">done</i>
      <p>사용가능한 아이디입니다.</p>
    </div>
    <div class="modal-footer center-align">
      <a href="#" class=" modal-action modal-close waves-effect waves-green">확인</a>
    </div>
  </div>
  

  
   <div id="idCheckNo" class="modal">
    <div class="row">
    <div class="modal-content center-align">
      <h6>이미 사용중인 아이디입니다.</h6>
    </div>
    </div>
    <div class="row s6">
    <div class="modal-footer">
      <a href="javascript:$('#c_id').focus();" class=" modal-action modal-close waves-effect waves-green btn-flat">확인</a>
    </div>
    </div>
  </div>
  
  <div id="noCheck" class="modal">
    <div class="row">
    <div class="modal-content center-align">
      <h6>ID중복체크를 실시해주세요.</h6>
    </div>
    </div>
    <div class="row s6">
    <div class="modal-footer">
      <a href="#" class=" modal-action modal-close waves-effect waves-green btn-flat">확인</a>
    </div>
    </div>
  </div>
  
  
  
     <div id="notNull" class="modal">
    <div class="row">
    <div class="modal-content center-align">
      <h6>필수정보를 입력하지 않으셧습니다.</h6>
    </div>
    </div>
    <div class="row s6">
    <div class="modal-footer">
      <a href="#" class=" modal-action modal-close waves-effect waves-green btn-flat">확인</a>
    </div>
    </div>
  </div>
  
       <div id="selectcar" class="modal">
    <div class="row">
    <div class="modal-content center-align">
      <h6>차량을 먼저 선택해주세요.</h6>
    </div>
    </div>
    <div class="row s6">
    <div class="modal-footer">
      <a href="#" class=" modal-action modal-close waves-effect waves-green btn-flat">확인</a>
    </div>
    </div>
  </div>
  
  

  
</body>
</html>