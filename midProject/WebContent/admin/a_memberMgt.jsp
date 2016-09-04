<%@page import="projectpack.business.CustomerDto"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="customerDto" class="projectpack.business.CustomerDto" />
<jsp:useBean id="processDao" class = "projectpack.business.ProcessDao"/>
<%
request.setCharacterEncoding("utf-8");
String C_no = request.getParameter("C_no"); 
%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>** 회원조회 **</title>
<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src = "../js/js.js"></script>
</head>
<body>
<%@ include file = "a_top.jsp" %>
** 회원자료 (MyBatis)**<p>
<table border = "1">
	<tr><th>고객번호</th><th>성함</th><th>아이디</th><th>전화번호</th><th>고객주소</th><th>상세보기</th></tr>
<% 
ArrayList<CustomerDto> list = (ArrayList)processDao.selectcustomerAll();
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분");

if(list == null){
	out.println("<tr><td colspan = '4'>자료 없음</td></tr>");
}else{
	for(CustomerDto d:list){
%>
	<tr>
		<td><%=d.getC_no() %></td><td><%=d.getC_name() %></td><td><%=d.getC_id() %></td><td><%=d.getC_tel() %></td>
		<!-- <td><%=d.getC_addr() %></td><td><a href="#modal_detail" class = "modal-trigger">상세보기</a></td> -->
		<!-- <td><%=d.getC_addr() %></td><td><a href="#modal_detail" onclick="a_memberEdit_modal(<%=d.getC_no()%>)" class = "modal-trigger">상세보기</a></td>-->
		<td><%=d.getC_addr() %></td><td><a href="#modal_detail" onclick="a_memberEdit_modal(<%=d.getC_no()%>)" class = "modal-trigger">상세보기</a></td>	
	</tr>
<%		
	}
}
%>
</table>

<%@ include file = "a_center.jsp" %>
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="../js/materialize.min.js"></script>

<%
CustomerDto dto = processDao.selectcustomerPartNo(C_no); 
if(request.getParameter("C_no") != null){ 
%>

<!--회원가입 모달-->
	<div id="modal_detail" class="row modal">
    	<form class="col s12 l12">
    		<div class="row">
         		<div class="input-field col s4 offset-s3">
          			<input id="c_id" type="text" name="c_id" class="validate" value="<%=dto.getC_id()%>">
          			<label for="id">ID</label>
         		</div>
         		<div class="col s2">
         			<a class="waves-effect waves-light btn" style="margin-top: 15px; font-size: 10px">Check</a>
         		</div>
        	</div>
        	<div class="row">
         		<div class="input-field col s5 offset-s3 imsi30">
          			<input id="c_pw" type="password"  name="c_pw" class="validate">
          			<label for="password">Password</label>
         		</div>
        	</div>
    		<div class="row">
    	 		<div class="input-field col s5 offset-s3 imsi30" >
         			<input placeholder="Password" id="c_pw_check" type="password" class="validate">
          			<label for="check">Password Check</label>
         		</div>
    		</div>
    		<div class="row">
    	 		<div class="input-field col s5 offset-s3 imsi30" >
          			<input id="c_name" name = "c_name" type="text" class="validate" value="<%=dto.getC_name()%>">
          			<label for="name">Name</label>
         		</div>
    		</div>
    		<div class="row">
    	 <div class="input-field col s3 offset-s3 imsi30" >
          <input placeholder="ex) 960101" id="c_jumin_first" name = "c_jumin_first" type="text" value="<%=dto.getC_jumin_first()%>" class="validate center-align">
          <label for="first">주민등록번호</label>
         </div>
         <div class="input-field col s3 imsi30" >
          <input placeholder="1234567" id="c_jumin_last" name = "c_jumin_last" type="text"  value="<%=dto.getC_jumin_last()%>" class="validate center-align">
         </div>
    	</div>
    	<div class="row">
    	 <div class="input-field col s2 offset-s3 imsi30" >
          <input placeholder="면허종류" id="c_lic" name="c_lic" type="text"  value="<%=dto.getC_lic()%>" class="validate center-align" >
          <label for="Lincense">면허정보</label>
         </div>
         <div class="input-field col s3 imsi30" >
          <input placeholder="ex) 23-123456-12" id="c_lic2" name="c_lics" type="text"  value="<%=dto.getC_lic2()%>" class="validate center-align">
         </div>
        </div>
        <div class="row">
    	 <div class="input-field col s5 offset-s3 imsi30" >
          <input id="c_tel" type="text" name="c_tel" value="<%=dto.getC_tel()%>" class="validate">
          <label for="Phone">Phone</label>
         </div>
    	</div>
    	<div class="row">
    	 <div class="input-field col s5 offset-s3 imsi30" >
          <input id="email" name="c_email" type="text" value="<%=dto.getC_email()%>" class="validate">
          <label for="email">E-Mail</label>
         </div>
    	</div>
    	<div class="row">
    	 <div class="input-field col s3 offset-s3 imsi20">
          <input placeholder="우편 번호" id="c_zip" name="c_zip" type="text"  value="<%=dto.getC_zip()%>" class="validate">
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
          <input placeholder="주소" id="c_addr" name="c_addr" type="text"  value="<%=dto.getC_addr()%>" class="validate">
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
		 <input placeholder="비밀번호 찾기 질문" id="c_ans"  type="text"  value="<%=dto.getC_que()%>" class="validate">
		  <label>비밀번호찾기에 대한 답변입니다</label>
		</div>
    	</div>
		<div class="row">
    	 <div class="input-field col s6 offset-s3 imsi20">
          <input placeholder="비밀번호 찾기 답변" id="c_ans"  type="text"  value="<%=dto.getC_ans()%>" class="validate">
         </div>
        </div>
        <div class="row">
        <div class="col s3 offset-s3 right-align">
         	<a id="btnSubmit" class="waves-effect waves-light btn" 
         	style="margin-top: 15px; font-size: 10px">
         	가입완료
         	</a>
         </div>
         <div class="col s3 left-align" >
         	<a id="btnCancel" class="waves-effect waves-light btn" 
         	style="margin-top: 15px; font-size: 10px">
         	취&nbsp;&nbsp;&nbsp;&nbsp;소
         	</a>
         </div>
        </div>
    </form>
  </div>
<% }else{ } %>
</body>
</html>