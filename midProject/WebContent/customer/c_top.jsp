<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<nav>
   <div class="nav-wrapper teal blue darken-1">
      <a href="../customer/c_index.jsp" data-activates="slide-out" class="brand-logo">SimCar</a><!--심카 로고-->
      
         <!--창이 작아지면 side menu가 생성됨-->
         <ul id="slide-out" class="side-nav">      
            <li>
               <div class="userView">
                  <img class="background" src="../image/부가티.jpg"> 
                  <a href="#!user"><img class="circle" src="../image/부가티.jpg"></a>
                  <a href="#!이름">
                     <span class="white-text name">SIM!</span>
                  </a>
                  <a href="#!이메일">
                     <span class="white-text email">abc@gmail.com</span>
                  </a>
               </div>
            </li>
            <li><a href="#!"><i class="material-icons">contact_phone</i>아이콘과 함께 클릭가능</a></li>
            <li><a href="#">로그인</a></li>
            <li><a data-target="modal_Csearch" class="waves-effect waves-light modal-trigger">차량안내</a></li>
            <li><a href="#">예약</a></li>
            <li><a class="subheader">bottom Header(아래에 더 입력가능)</a></li>
         </ul>
         <a href="#" data-activates="slide-out" class="button-collapse">
            <i class="material-icons">menu</i>
         </a>
      
      <!--Top Menu....  -->
      <ul id="nav-mobile" class="right hide-on-med-and-down" >   
         <li>
            <a href="#modal_login" class="waves-effect waves-light modal-trigger tooltipped" 
            data-position="bottom" data-delay="50" data-tooltip="지금 바로해">로그인</a>
         </li>
         <li>
            <a href="" data-target="modal_Csearch" class="waves-effect waves-light modal-trigger tooltipped" 
            data-position="bottom" data-delay="50" data-tooltip="비싼것만 있다 기죽지 마라">차량안내 </a>
         </li>
         <li>
            <a href="../reservation/r_main.jsp" class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="돈은 냈지?">예약하기</a>
         </li>
         <li>
            <a href="">회사소개</a>
         </li>
         <li>
            <a href="">고객센터</a>
         </li>
      </ul>

   </div>
</nav>

<!-- Modal 로그인용 -->
<div class="container">
  <div class="row s12">
  <div id="modal_login" class="modal col s6 offset-s1">
  <form action="#">
    <div class="modal-content center-align">
      <h4>Login</h4>
      <input placeholder="I D" type="text" name="c_id" class="center-align">
      <input placeholder="Password" type="password" name="c_pw" class="center-align">
      <p/>
    </div>
    <div class="modal-footer center-align">
      <a href="#!" class="modal-action">로그인</a>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a class="waves-effect waves-light modal-trigger" href="#modal_register">회원가입</a>
    </div>
  </form>
  </div>
  </div>
  </div>


<!--회원가입 모달-->
   <div id="modal_register" class="row modal">
       <form class="col s12 l12" action="#">
          <div class="row">
               <div class="input-field col s4 offset-s3">
                   <input id="c_id" type="text" class="validate" name="c_id">
                   <label for="c_id">ID</label>
               </div>
               <div class="col s2">
                  <a class="waves-effect waves-light btn" style="margin-top: 15px; font-size: 10px">Check</a>
               </div>
           </div>
           <div class="row">
               <div class="input-field col s5 offset-s3 imsi30">
                   <input id="c_pw" type="password" class="validate" name="c_pw">
                   <label for="c_pw">Password</label>
               </div>
           </div>
          <div class="row">
              <div class="input-field col s5 offset-s3 imsi30" >
                  <input placeholder="Password" id="c_pw_check" type="password" class="validate" name="c_pw_check">
                   <label for="c_pw_check">Password Check</label>
               </div>
          </div>
          <div class="row">
              <div class="input-field col s5 offset-s3 imsi30" >
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
         <div class="input-field col s3 imsi30" >
          <input placeholder="ex) 23-123456-12" id="c_lic2" name="c_lic2" type="text" class="validate center-align">
         </div>
        </div>
        <div class="row">
        <div class="input-field col s5 offset-s3 imsi30" >
          <input id="c_tel" name="c_tel" type="text" class="validate">
          <label for="c_tel">Phone</label>
         </div>
       </div>
       <div class="row">
        <div class="input-field col s5 offset-s3 imsi30" >
          <input id="c_email" name="c_email" type="text" class="validate">
          <label for="c_email">E-Mail</label>
         </div>
       </div>
       <div class="row">
        <div class="input-field col s3 offset-s3 imsi20">
          <input placeholder="우편 번호" id="c_zip" name="c_zip" type="text" class="validate">
          <label for="c_zip">Address</label>
         </div>
         <div class="col s3 offset-s1 imsi20">
            <a class="waves-effect waves-light btn full" 
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
        <label class="col s6 offset-s3" style="margin-top: 30px; font-size: 15px">
          어떻게 오셧나요?
        </label>  
       </div>
        <div class="row">
          <div class="col s2 offset-s3">
            <input name="group1" type="radio" id="test1" class="with-gap"/>
            <label for="test1">Red</label>
         </div>
         <div class="col s2">
            <input name="group1" type="radio" id="test2" class="with-gap"/>
          <label for="test2">Yellow</label>
         </div>
         <div class="col s2">
          <input class="with-gap" name="group1" type="radio" id="test3"/>
          <label for="test3">Green</label>
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
            <a class="waves-effect waves-light btn" 
            style="margin-top: 15px; font-size: 10px">
            가입완료
            </a>
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













