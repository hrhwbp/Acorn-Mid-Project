<%@page import="projectpack.business.ProcessDao"%>
<%@page import="projectpack.business.VehicleDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 차량 조회</title>
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
div.modal.v_nodelete,div.modal.modal_v_update {
 margin-left: 20%;
}
</style>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
<script type="text/javascript" src="../js/js.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//차량 수정용 모달
		$('.modal-trigger').leanModal({
			  dismissible: true,
		      opacity: 0.8, 
		      in_duration: 400, 
		      out_duration: 300,
		});
		
		$('#btnInsert').click(function(){
			$('#modal_v_insert').openModal({
				dismissible: true, 
			    opacity: 0.8, 
			    in_duration: 400,
			    out_duration: 300,
			});
		});
		
		$('#v_delete').click(function(){
			$('#v_nodelete').openModal({
				dismissible: true, 
			    opacity: 0.8, 
			    in_duration: 400,
			    out_duration: 300,
			});
			
			
		});
		
		/* $('.btnDelete').click(function(){
			alert(document.v_updateFrm.id.value+"");
			alert(document.v_deleteFrm.v_deleteno.value+"");
			if(confirm('Are you sure you want to do this?')) {
				$('#v_deleteFrm').submit();
			}else{
				return;
			}
		}); */
		
	});
</script>

</head>
<body>
	<%@ include file="a_top.jsp"%>
	<div class="container">
		<div><h4 style="text-align: center; font-weight: bold">차량 자료 목록</h4></div>
	<p />

				
				<button class="btn-floating btn-large waves-effect waves-light green" id="btnInsert"><!--새로운 차량 입력 -->
					<i class="material-icons">add</i>
				</button>
				
				<table class="centered highlight bordered ">
					<thead>
						<tr>
							<th>차량번호</th>
							<th>브랜드</th>
							<th>차량명</th>
							<th>가격</th>
							<th>차량타입</th>
							<th>렌트횟수</th>
							<th>대여가능</th>
							<th>차량상태</th>
							<th>차량삭제</th>
						</tr>
					</thead>
					<tbody>

						<%
							ArrayList<VehicleDto> list = (ArrayList) processDao.selectVehicleAll();
							int v_no = 0;
							if (list == null) {
								out.println("<tr><td colspan = '4'>자료 없음</td></tr>");
							} else {
								for (VehicleDto d : list) {
						%>
						
						<tr>
							<td>
								<a href="#modal_v_update<%=d.getV_no()%>" class="modal-trigger">[<%=d.getV_no()%>]</a>
							</td>
							<td><%=d.getV_brand()%></td>
							<td><%=d.getV_name()%></td>
							<td><%=d.getV_price()%></td>
							<td><%=d.getV_type()%></td>
							<td><%=d.getV_count()%></td>
							<% if(d.getV_avail().equals("0")){
								out.println("<td>대여가능</td>");
							}else if(d.getV_avail().equals("1")){
								out.println("<td style='color: red; font-weight: bold;'>대여불가</td>");
							}else{
								out.println("<td style='color: blue;'>기    타</td>");
							}%>
							<td><%=d.getV_status()%></td>
							<td>
								<!-- 차량 삭제 버튼 -->
								<a href="#v_nodelete<%=d.getV_no()%>" class="btn waves-effect waves-light red modal-trigger" style="margin-top: 15px; font-size: 10px">
								삭&nbsp;&nbsp;&nbsp;&nbsp;제</a>
							</td>	
						</tr>
						
						<div><!--삭제 확인 모달 -->
						<div id="v_nodelete<%=d.getV_no()%>" class="row modal modal-fixed-footer v_nodelete" style="height: 150px">
						<form action="../vehicle/v_proc.jsp?flag=delete" id="v_deleteFrm" method="post">
      							<br><h4 style="text-align: center">삭제하시겠습니까?</h4>
   							<div class="modal-footer">
								<a class="btn waves-effect waves-light red btn-floating modal-close">취소</a>
								<button id="btnDelete" class="btn-floating btn waves-effect waves-light red" 
										value=<%=d.getV_no()%> name="v_deleteno" >삭제</button>
    						</div>
    					</form>		
  						</div>
						</div>
						
						
						<!--차량 수정 모달  -->
						<div>
							<div id="modal_v_update<%=d.getV_no()%>" class="row modal modal_v_update">
							<form action="../vehicle/v_proc.jsp?flag=update" name="v_updateFrm" method="post">
								
								<blockquote>
      									차량수정과 삭제가 가능합니다. 차량의 대여가능여부와 차량상태는 숫자로 표기해 주세요.
   								 </blockquote>
									<div class="row">
										<div class="input-field col s3 offset-s1">
											<input id="" type="text" class="validate center-align" name="v_no" value=<%=d.getV_no()%> readonly>
											<label for="id">번호</label>
										</div>
										<div class="input-field col s5 offset-s1 imsi30">
											<input id="vbrand" type="text" class="validate center-align" name="v_brand" value=<%=d.getV_brand()%>>
											<label for="vbrand">브랜드</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s3 offset-s1 imsi30">
											<input id="vname" type="text" class="validate center-align" name="v_name" value=<%=d.getV_name()%>> 
											<label for="vname">차량 명</label>
										</div>
										<div class="input-field col s4 offset-s1 imsi30">
											<input id="vprice" type="text" class="validate center-align" name="v_price" value=<%=d.getV_price()%>> 
											<label for="vprice">차량 가격</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s3 offset-s1 imsi30">
											<input id="vtype" type="text" class="validate center-align" name="v_type" value=<%=d.getV_type()%>> 
											<label for="vtype">차량 종류</label>
										</div>
										<div class="input-field col s3 offset-s1 imsi30">
											<input id="vprice" type="text" class="validate center-align" name="v_count" value=<%=d.getV_count()%>> 
											<label for="vprice">차량 수</label>
										</div>									
										<div class="input-field col s3 offset-s1 imsi30">
											<input id="vavail" type="text" class="validate center-align" name="v_avail" value=<%=d.getV_avail()%>> 
											<label for="vavail">대여 가능여부</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s5 offset-s3 imsi30">
											<input id="vstatus" type="text" class="validate center-align" name="v_status" value=<%=d.getV_status()%>> 
											<label for="vstatus">차량 상태</label>
										</div>
									</div>
									
										<div class="col s2 offset-s3">
											<button id="btnOok" class="waves-effect waves-light btn"
												style="margin-top: 15px; font-size: 10px" value="수정완료">수정완료</button>
										</div>
										
										<div class="col s2">
											<a class="waves-effect waves-light btn modal-trigger"  id="v_delete" style="margin-top: 15px; font-size: 10px">
											삭&nbsp;&nbsp;&nbsp;&nbsp;제
											</a>
										</div>
										</form>
										
										<div class="col s3">
											<a class="waves-effect waves-light btn modal-close"
												style="margin-top: 15px; font-size: 10px">취&nbsp;&nbsp;&nbsp;&nbsp;소</a>
										</div>
									</div>

						</div>

						<%
						v_no = Integer.parseInt(d.getV_no()) + 1;
							}
						}
						%>
						
					</tbody>
				</table>
				</div>
			<!-- 새로운 차량 입력 모달 -->
						<div>
							<form action="../vehicle/v_proc.jsp?flag=insert" name="v_insertFrm" method="post">
								<div id="modal_v_insert" class="row modal ">
								<blockquote>
      									새로운 차량입력 입니다. 차량의 대여가능여부와 차량상태는 숫자로 표기해 주세요.
   								 </blockquote>
									<div class="row">
										<div class="input-field col s3 offset-s3">
											<input type="text" class="validate center-align" 
											value="<%=Integer.toString(v_no)%>" name="v_no" readonly>
											<label for="text">번호</label>
										</div>
										<div class="input-field col s3 offset-s1 imsi30">
											<input id="brand" type="text" class="validate center-align" name="v_brand">
											<label for="brand">브랜드</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s3 offset-s3 imsi30">
											<input id="name" type="text" class="validate center-align" name="v_name"> 
											<label for="name">차량 명</label>
										</div>
										<div class="input-field col s3 offset-s1 imsi30">
											<input id="price" type="text" class="validate center-align" name="v_price"> 
											<label for="price">차량 가격</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s3 offset-s3 imsi30">
											<input id="type" type="text" class="validate center-align" name="v_type"> 
											<label for="type">차량 종류</label>
										</div>
										<div class="input-field col s3 offset-s1 imsi30">
											<input id="number" type="text" class="validate center-align" name="v_count"> 
											<label for="number">차량 수</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s5 offset-s3 imsi30">
											<input id="avail" type="text" class="validate center-align" name="v_avail"> 
											<label for="avail">대여 가능여부</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s5 offset-s3 imsi30">
											<input id="status" type="text" class="validate center-align" name="v_status"> 
											<label for="status">차량 상태</label>
										</div>
									</div>
									<div class="row">
										<div class="col s3 offset-s3 right-align">
											<input class="waves-effect waves-light btn" type="submit"
												style="margin-top: 15px; font-size: 10px" value="차사기">
										</div>
										<div class="col s3 left-align">
											<a class="waves-effect waves-light btn modal-close"
												style="margin-top: 15px; font-size: 10px">취&nbsp;&nbsp;&nbsp;&nbsp;소</a>
										</div>
									</div>
								</div>
							</form>
						</div>
						
<%@ include file = "a_bottom.jsp" %>			
</body>
</html>






