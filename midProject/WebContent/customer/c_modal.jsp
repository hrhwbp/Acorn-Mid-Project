<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div id="idisNull" class="modal">
    <div class="row">
    <div class="modal-content center-align">
      <h6>ID를 입력해주세요</h6>
    </div>
    </div>
    <div class="row s6">
    <div class="modal-footer">
      <a href="javascript:$('#c_id').focus();" class=" modal-action modal-close waves-effect waves-green btn-flat">확인</a>
    </div>
    </div>
  </div>
  
     <div id="passwdisNull" class="modal">
    <div class="row">
    <div class="modal-content center-align">
      <h6>Password를 입력해주세요</h6>
    </div>
    </div>
    <div class="row s6">
    <div class="modal-footer">
      <a href="javascript:$('#c_pw').focus();" class=" modal-action modal-close waves-effect waves-green btn-flat">확인</a>
    </div>
    </div>
  </div>
  
  
     <div id="pwcheck" class="modal">
    <div class="row">
    <div class="modal-content center-align">
      <h6>비밀번호가 일치하지 않습니다</h6>
    </div>
    </div>
    <div class="row s6">
    <div class="modal-footer">
      <a href="javascript:$('#c_pw_check').focus();" class=" modal-action modal-close waves-effect waves-green btn-flat">확인</a>
    </div>
    </div>
  </div>

 <div id="idCheckOk" class="modal">
    <div class="row">
    <div class="modal-content center-align">
      <h6>사용가능한 아이디입니다.</h6>
    </div>
    </div>
    <div class="row s6">
    <div class="modal-footer">
      <a href="#" class=" modal-action modal-close waves-effect waves-green btn-flat">확인</a>
    </div>
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
  
  
   <div id="zipcheck" class="modal">
    <div class="row" style="margin-top: 50px">
    <div class="col s4 offset-s3 center-align">
    <p>우편번호 검색</p>
    </div>
    </div>
    <form name="zipcheckFrm">
   <div class="row">
        <div class="input-field col s4 offset-s3">
            <input placeholder="ex) 대치동" id="address" type="text" class="validate" name="address">
            <label for="c_address">주소 검색</label>
        </div>
        <div class="col s2">
           <a class="waves-effect waves-light btn" id="addr_search" style="margin-top: 15px; font-size: 10px">search</a>
        </div>
        <div>
        </div>
    </div>
    </form>
  </div>