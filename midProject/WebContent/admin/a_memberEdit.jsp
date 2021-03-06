<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="customerDto" class="projectpack.business.CustomerDto" />
<%
request.setCharacterEncoding("utf-8");
String C_no = request.getParameter("C_no"); 
%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--회원가입 모달-->
	<div id="modal_register" class="row modal">
    	<form class="col s12 l12">
    		<div class="row">
         		<div class="input-field col s4 offset-s3">
          			<input id="id" type="text" class="validate">
          			<label for="id">ID</label>
         		</div>
         		<div class="col s2">
         			<a class="waves-effect waves-light btn" style="margin-top: 15px; font-size: 10px">Check</a>
         		</div>
        	</div>
        	<div class="row">
         		<div class="input-field col s5 offset-s3 imsi30">
          			<input id="password" type="password" class="validate">
          			<label for="password">Password</label>
         		</div>
        	</div>
    		<div class="row">
    	 		<div class="input-field col s5 offset-s3 imsi30" >
         			<input placeholder="Password" id="check" type="password" class="validate">
          			<label for="check">Password Check</label>
         		</div>
    		</div>
    		<div class="row">
    	 		<div class="input-field col s5 offset-s3 imsi30" >
          			<input id="name" type="text" class="validate">
          			<label for="name">Name</label>
         		</div>
    		</div>
    		<div class="row">
    	 <div class="input-field col s3 offset-s3 imsi30" >
          <input placeholder="ex) 960101" id="first" type="text" class="validate center-align">
          <label for="first">주민등록번호</label>
         </div>
         <div class="input-field col s3 imsi30" >
          <input placeholder="1234567" id="last" type="text" class="validate center-align">
         </div>
    	</div>
    	<div class="row">
    	 <div class="input-field col s2 offset-s3 imsi30" >
          <input placeholder="지역 또는 번호" id="ric" type="text" class="validate center-align">
          <label for="ric">면허정보</label>
         </div>
         <div class="input-field col s3 imsi30" >
          <input placeholder="ex) 23-123456-12" id="ric2" type="text" class="validate center-align">
         </div>
        </div>
        <div class="row">
    	 <div class="input-field col s5 offset-s3 imsi30" >
          <input id="tel" type="text" class="validate">
          <label for="tel">Phone</label>
         </div>
    	</div>
    	<div class="row">
    	 <div class="input-field col s5 offset-s3 imsi30" >
          <input id="email" type="text" class="validate">
          <label for="email">E-Mail</label>
         </div>
    	</div>
    	<div class="row">
    	 <div class="input-field col s3 offset-s3 imsi20">
          <input placeholder="우편 번호" id="addr" type="text" class="validate">
          <label for="addr">Address</label>
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
          <input placeholder="주소" id="address" type="text" class="validate">
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
          <input placeholder="답변" id="que" type="text" class="validate">
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
         	<a class="waves-effect waves-light btn" 
         	style="margin-top: 15px; font-size: 10px">
         	취&nbsp;&nbsp;&nbsp;&nbsp;소
         	</a>
         </div>
        </div>
    </form>
  </div>

</body>
</html>