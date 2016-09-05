<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>예약확인</title>
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css" media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
</head>
<body>
<%@include file="../customer/c_top.jsp" %>
<div class="container">
   <div class="row">
      <h4 class="col offset-s1">
      예약확인
      </h4>
   </div>
   <form>   
      <div class="row">
         <div class="input-field col s10 offset-s1">
               <input disabled value="선택된차량DB" id="disabled" type="text" class="validate">
               <label for="disabled">선택차량</label>
          </div>
      </div>
      <div class="row">
         <div class="input-field col s5 offset-s1">
               <input disabled value="대여일" id="disabled" type="text" class="validate">
               <label for="disabled">대여일</label>
          </div>
         <div class="input-field col s5 ">
               <input disabled value="반납일" id="disabled" type="text" class="validate">
               <label for="disabled">반납일</label>
          </div>
      </div>
      <div class="row">
         <div class="input-field col s10 offset-s1">
               <input disabled value="선택보험" id="disabled" type="text" class="validate">
               <label for="disabled">선택보험</label>
          </div>
      </div>
      <div class="row">
         <div class="input-field col s10 offset-s1">
               <input disabled value="기타옵션" id="disabled" type="text" class="validate">
               <label for="disabled">기타옵션</label>
          </div>
      </div>
     <div class="row">
           <div class="input-field col s10 offset-s1">
             <textarea id="textarea1" class="materialize-textarea"></textarea>
             <label for="textarea1">기타 요구사항</label>
           </div>
     </div>
     <div class="row">
        <div class="input-field col s10 offset-s1">
        <input disabled value="결제금액" id="disabled" type="text" class="validate">
               <label for="disabled">총 결제금액</label>
        </div>
     </div>
       <div class="row">
      <div class="col s3 offset-s3 right-align">
         <a class="waves-effect waves-light btn" 
               style="margin-top: 15px; font-size: 10px">
               이전
           </a>
      </div>
      <div class="col s3 left-align">
         <a class="waves-effect waves-light btn" 
               style="margin-top: 15px; font-size: 10px">
               다음
           </a>
      </div>
      </div>
   </form>
</div>
<%@include file="../customer/c_bottom.jsp" %>
</body>
</html>