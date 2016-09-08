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
<link href="../css/bootstrap.css" rel="stylesheet" />
<link href="../css/bootstrap-overrides.css" type="text/css" rel="stylesheet" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
<!--Let browser know website is optimized for mobile-->

<style type="text/css">
div.modal.modal_detail, div.modal.c_delno{
 margin-left: 20%;
}
</style>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src = "../js/js.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>

<script>
$(document).ready(function() {
	 /*   $("#update").click(function(){
	      location.href="c_myinfoedit.jsp"
	   }); */
	   $(".modal-trigger").leanModal({
		   dismissible: true, 
		    opacity: 0.8, 
		    in_duration: 400,
		    out_duration: 300,
	   });
	   $('select').material_select();
	});
</script>
</head>
<body>
<%@ include file = "a_top.jsp" %>

<div class="container">
<table class="responsive-table centered highlight bordered">
	<thead>
   		<tr><th>고객번호</th><th>성함</th><th>아이디</th><th>전화번호</th><th>고객주소</th><th>상세보기</th><th>delete</th></tr>
	</thead>
	<tbody>
<% 
ArrayList<CustomerDto> list = (ArrayList)processDao.selectcustomerAll();
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분");

if(list == null){
   out.println("<tr><td colspan = '4'>자료 없음</td></tr>");
}else{
   
   for(CustomerDto d:list){
%>

	<tr>
		<td><%=d.getC_no() %></td>
		<td><%=d.getC_name() %></td>
		<td><%=d.getC_id() %></td>
		<td><%=d.getC_tel() %></td>
		<!-- <td><%=d.getC_addr() %></td><td><a href="#modal_detail" class = "modal-trigger">상세보기</a></td> -->
		<!-- <td><%=d.getC_addr() %></td><td><a href="#modal_detail" onclick="a_memberEdit_modal(<%=d.getC_no()%>)" class = "modal-trigger">상세보기</a></td>-->
		<td><%=d.getC_addr() %></td>
		<td>
			<a href="#modal_detail<%=d.getC_no()%>" class= "modal-trigger">상세보기</a>
		</td> 
		<td>
			<!-- 차량 삭제 버튼 -->
			<a href="#c_delno<%=d.getC_no()%>" class="btn waves-effect waves-light red modal-trigger" style="margin-top: 15px; font-size: 10px">
			삭&nbsp;&nbsp;&nbsp;&nbsp;제</a>
			</td>	
	</tr>
	
	<div><!--삭제 확인 모달 -->
						<div id="c_delno<%=d.getC_no()%>" class="row modal modal-fixed-footer c_delno" style="height: 150px">
						<form action="../admin/a_customerproc.jsp?flag=delete" id="c_deleteFrm" method="post">
      							<h4>삭제하시겠습니까?</h4>
   							<div class="modal-footer">
								<a class="btn waves-effect waves-light red btn-floating modal-close">취소</a>
								<button id="btnDelete" class="btn-floating btn waves-effect waves-light red" 
										value=<%=d.getC_no()%> name="c_deleteno">삭제</button>
    						</div>
    					</form>		
  						</div>
						</div>
	
	
	<div>
		<!-- 회원 상세조회 모달 -->
		<div id="modal_detail<%=d.getC_no()%>" class="row modal modal_detail">
			<form class="col s12 l12" action="../admin/a_customerproc.jsp?flag=update" name="memberEditFrm" method="post">
				
				<blockquote>
					회원 상세조회입니다. 정보의 수정과 삭제가 가능합니다.
   				</blockquote>
   				
				<div class="row">
					<div class="input-field col s3 offset-s3">
						<input id="c_id" type="text" name="c_id" class="validate" value="<%=d.getC_id()%>" readonly>
						<label for="id">ID</label>
					</div>
					<div class="input-field col s3 imsi30" >
						<input id="c_name" name="c_name" type="text" class="validate" value="<%=d.getC_name()%>">
						<label for="name">이름</label>
					</div>
					<!-- <div class="col s2">
						<a class="waves-effect waves-light btn" style="margin-top: 15px; font-size: 10px">Check</a>
					</div> -->
				</div>
				
					<!--<div class="input-field col s5 offset-s3 imsi30">
						<input id="c_pw" type="password"  name="c_pw" class="validate">
						<label for="password">Password</label>
					</div>
				</div> -->
				<!--  <div class="row">
					<div class="input-field col s5 offset-s3 imsi30" >
						<input placeholder="Password" id="c_pw_check" type="password" class="validate">
						<label for="check">Password Check</label>
					</div>
				</div> -->
				<%--<div class="row">
					<div class="input-field col s5 offset-s3 imsi30" >
					<input id="c_name" name = "c_name" type="text" class="validate" value="<%=d.getC_name()%>">
					<label for="name">Name</label>
					</div>
				</div> --%>
				<div class="row">
					<div class="input-field col s3 offset-s3 imsi30" >
						<input placeholder="ex) 960101" id="c_jumin_first" name="c_jumin_first" type="text" value="<%=d.getC_jumin_first()%>" class="validate center-align">
						<label for="first">주민등록번호</label>
					</div>
					<div class="input-field col s3 imsi30" >
						<input placeholder="1234567" id="c_jumin_last" name="c_jumin_last" type="text" value="<%=d.getC_jumin_last()%>" class="validate center-align">
					</div>
				</div>
				<div class="row">
					<div class="input-field col s3 offset-s3 imsi30" >
						<input placeholder="면허종류" id="c_lic" name="c_lic" type="text"  value="<%=d.getC_lic()%>" class="validate center-align" >
						<label for="Lincense">면허정보</label>
					</div>
					<div class="input-field col s3 imsi30" >
						<input placeholder="ex) 23-123456-12" id="c_lic2" name="c_lics" type="text" value="<%=d.getC_lic2()%>" class="validate center-align">
					</div>
				</div>
				<div class="row">
					<div class="input-field col s3 offset-s3 imsi30" >
						<input id="c_tel" type="text" name="c_tel" value="<%=d.getC_tel()%>" class="validate" name="c_tel">
						<label for="Phone">전화번호</label>
					</div>
					<div class="input-field col s3 imsi30" >
						<input id="email" name="c_email" type="text" value="<%=d.getC_email()%>" class="validate" name="c_email">
						<label for="email">E-Mail</label>
					</div>
				</div>      
				<div class="row">
					<div class="input-field col s2 offset-s3 imsi20">
						<input placeholder="우편 번호" id="c_zip" name="c_zip" type="text"  value="<%=d.getC_zip()%>" class="validate" name="c_zip">
						<label for="addr">주소</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s6 offset-s3 imsi20">
						<input placeholder="주소" id="c_addr" name="c_addr" type="text"  value="<%=d.getC_addr()%>" class="validate" name="c_addr">
						<label>고객님 주소</label>
					</div>
				</div>
				<!-- <div class="row">
					<label class="col s6 offset-s3" style="margin-top: 30px; font-size: 15px">
					쉼카를 어떻게 알게 되셨나요?
					</label>  
				</div>
				<div class="row">
					<div class="col s3 offset-s3">
						<input name="group1" type="radio" id="test1" class="with-gap"/>
						<label for="test1">친구의 권유</label>
					</div>
					<div class="col s3">
						<input name="group1" type="radio" id="test2" class="with-gap"/>
						<label for="test2">가족의 권유</label>
					</div>
					<div class="col s3">
						<input class="with-gap" name="group1" type="radio" id="test3"/>
						<label for="test3">동료의 권유</label>
					</div>
				</div> -->
				<div class="row">
					<div class="input-field col s6 offset-s3 imsi20">
						<input placeholder="비밀번호 찾기 질문" id="c_ans" type="text" value="<%=d.getC_que()%>" class="validate" name="c_que">
						<label>비밀번호찾기에 대한 질문입니다</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s6 offset-s3 imsi20">
						<input placeholder="비밀번호 찾기 답변" id="c_ans" type="text" value="<%=d.getC_ans()%>" class="validate" name="c_ans">
						<label>비밀번호찾기에 대한 답변입니다</label>
					</div>
				</div>
				
				<div class="col s2 offset-s3">
					<button id="btnUpdate" class="waves-effect waves-light btn" style="margin-top: 15px; font-size: 10px">정보수정</button>
				</div>	
			</form>
				<div class="col s2 ">
					<a id="btnCancel" class="waves-effect waves-light btn modal-close" 
							style="margin-top: 15px; font-size: 10px">취&nbsp;&nbsp;&nbsp;&nbsp;소</a>
				</div>
		</div>
	</div>
	


  <%      
   }
}
%>
</tbody>
</table>
</div>

<%@ include file = "a_bottom.jsp" %>
</body>
</html>








