<%@page import="projectpack.business.AdminDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css" media="screen,projection" />
<!--Let browser know website is optimized for mobile-->
<link href="../css/bootstrap.css" rel="stylesheet" />
<link href="../css/bootstrap-overrides.css" type="text/css" rel="stylesheet" />


<style type="text/css">
div.modal.modal_edit, div.modal.a_insert{
 margin-left: 30%;
}
 div.modal.a_delno {
  margin-left: 20%;
 }

</style>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
<script type="text/javascript" src="../js/js.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//관리자 수정용 모달
		$('.modal-trigger').leanModal({
			  dismissible: true,
		      opacity: 0.8, 
		      in_duration: 400, 
		      out_duration: 300,
		});
		
		$('#btnInsert').click(function(){
			$('#a_insert').openModal({
				dismissible: true, 
			    opacity: 0.8, 
			    in_duration: 400,
			    out_duration: 300,
			});
		});
		
	});
</script>


</head>
<body>
<%@ include file = "a_top.jsp" %>

<div class="container">
<button class="btn-floating btn-large waves-effect waves-light green" id="btnInsert"><!--새로운 차량 입력 -->
	<i class="material-icons">add</i>
</button>


<table class="responsive-table centered highlight bordered">
	<thead>
   		<tr><th>Admin No</th><th>Admin Id</th><th>Admin Pwd</th><th>delete</th></tr>
	</thead>
	<tbody>
<% 
ArrayList<AdminDto> list = (ArrayList)processDao.selectadminAll();

if(list == null){
   out.println("<tr><td colspan = '4'>자료 없음</td></tr>");
}else{
   for(AdminDto d:list){
%>

	<tr>
		<td>
			<a href="#modal_edit<%=d.getA_no() %>" class= "modal-trigger">[<%=d.getA_no() %>]</a>
		</td> 
		<td><%=d.getA_id() %></td>
		<td><%=d.getA_pw() %></td>
	
		<td>
			<a href="#a_delno<%=d.getA_no()%>" class="btn waves-effect waves-light red modal-trigger" style="margin-top: 15px; font-size: 10px">
			삭&nbsp;&nbsp;&nbsp;&nbsp;제</a>
			</td>
	</tr>
	
	<div><!--삭제 확인 모달 -->
		<div id="a_delno<%=d.getA_no()%>" class="row modal modal-fixed-footer a_delno" style="height: 150px">
			<form action="../admin/a_adminproc.jsp?flag=delete" id="a_deleteFrm" method="post">
      			<h4>삭제하시겠습니까?</h4>
   				<div class="modal-footer">
					<a class="btn waves-effect waves-light red btn-floating modal-close">취소</a>
					<button id="btnDelete" class="btn-floating btn waves-effect waves-light red" 
						value=<%=d.getA_no()%> name="a_admindel">삭제</button>
    			</div>
    		</form>		
  		</div>
	</div>
	
	
	<div>
		<!-- 관리자 수정 모달 -->
		<div id="modal_edit<%=d.getA_no()%>" class="row modal modal_edit" style="width: 600px; height: 600px">
			<form class="col s12 l12" action="../admin/a_adminproc.jsp?flag=update" name="adminEditFrm" method="post">
				
				<blockquote>
					회원 상세조회입니다. 정보의 수정과 삭제가 가능합니다.
   				</blockquote>
   				
				<div class="row">
					<div class="input-field col s3 offset-s3">
						<input id="a_no" type="text" name="a_no" class="validate" value="<%=d.getA_no()%>" readonly>
						<label for="a_no">No</label>
					</div>
					<div class="input-field col s3 imsi30" >
						<input id="a_id" name="a_id" type="text" class="validate" value="<%=d.getA_id()%>">
						<label for="a_id">ID</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s6 offset-s3 imsi20">
						<input id="a_pwd" name="a_pw" type="text" value="<%=d.getA_pw()%>" class="validate" >
						<label>Password</label>
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

<div>
	<form action="../admin/a_adminproc.jsp?flag=insert" name="v_insertFrm" method="post">
		<div id="a_insert" class="row modal a_insert" style="width: 600px; height: 600px">
			<blockquote>
      			새로운 관리자등록 입니다.
   			</blockquote>
			<div class="row">
				<div class="input-field col s3 offset-s3">
					<input id="a_no" type="text" class="validate center-align" name="a_no">
					<label for="a_no">No</label>
				</div>
				<div class="input-field col s3 offset-s1 imsi30">
					<input id="a_id" type="text" class="validate center-align" name="a_id">
					<label for="a_id">ID</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s3 offset-s3 imsi30">
					<input id="a_pw" type="text" class="validate center-align" name="a_pw"> 
					<label for="a_pw">Password</label>
				</div>
			</div>
			<div class="row">
				<div class="col s3 offset-s3 right-align">
					<input class="waves-effect waves-light btn" type="submit"
					style="margin-top: 15px; font-size: 10px" value="관리자 등록">
				</div>
				<div class="col s3 left-align">
					<a class="waves-effect waves-light btn modal-close"
					style="margin-top: 15px; font-size: 10px">취&nbsp;&nbsp;&nbsp;&nbsp;소</a>
				</div>
			</div>
		</div>
	</form>
</div>


</div>
<%@include file = "a_bottom.jsp" %>
</body>
</html>