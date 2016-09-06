<%@page import="projectpack.business.VehicleDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("utf-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="processDao" class="projectpack.business.ProcessDao" />
<jsp:useBean id="vehicleDto" class="projectpack.business.VehicleDto" />

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>::RESERVATION::</title>

<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"
	media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('select').material_select();
		//$('.slider').slider({full_width:false});
		$('.slider').slider({Height: 600});
		//$('.slider').slider({Indicators: false});
	});
	$('.datepicker').pickadate({
		selectMonths : true, // Creates a dropdown to control month
		selectYears : 15
	// Creates a dropdown of 15 years to control year
	});

	function selectcar() {
		/* $.ajax({
		     type:"POST",
		     url:"carselectproc.jsp",
		     data:({
		        v_brand : $("#v_brand").val()
		     }),
		     success:function (data){
		           
		     }
		  }); */
		frmcarsearch.submit();

	}
	function renew() {
		alert("차종을 먼저 선택해주세요");
		$("#out").val("");

	}
</script>
</head>
<body>
	<%@include file="../index/top_index.jsp"%>
	<div class="slider" style="height: 545px;">
    <ul class="slides" style="height: 570px;">
      <li>
        <img src="../image/slider/amdb11.jpg"> 
      </li>
      <li>
        <img src="../image/slider/benzs63amg.jpg">
      </li>
      <li>
        <img src="../image/slider/bmwm6.jpg">
      </li>
      <li>
        <img src="../image/slider/ferrarigtb.jpg">
      </li>
      <li>
        <img src="../image/slider/lambor.jpg">
      </li>
    </ul>
    
  
	<%ArrayList<VehicleDto> list = (ArrayList) processDao.selectVehicleBrand();%>
	<div class="contain reservation main">			
		<form action="carselectproc.jsp" name="frmcarsearch" method="post">
		<div class="reservation">
			<div class="row">
				<h4 class="col offset-s1 deep-orange-text text-lighten-1">예약 차량 조회</h4>
				<p />
				<br>
			</div>

			<div class="row s12">
				<div class="col s3 offset-s1">
					<div class="input-field">
						<select name="v_brand" onchange="selectcar()" id="v_brand">
							<option value="" disabled selected>브랜드 선택</option>
							<%
								for (VehicleDto d : list) {
							%>
							<option value="<%=d.getV_brand()%>"><%=d.getV_brand()%><%--  <%=d.getV_name() %> --%></option>
							<%
								}
							%>
						</select> <label>차량 선택</label>
					</div>
				</div>
				<div class="col s7 ">
					<div class="input-field">
						<select name="v_no">
							<option value="" disabled selected>차량 선택</option>
							<%-- <%
         ArrayList<VehicleDto> listName = (ArrayList)processDao.selectVehiclebyBrand();
             for(VehicleDto d2:listName){ %>
            <option value="<%=d2.getV_no() %>"><%=d2.getV_name() %></option>
           <%}%> --%>
						</select> <label>차량 선택</label>
					</div>
				</div>
			</div>
		  

			<div class="row">
				<div class="col s2 offset-s1">
					<label for="out">대여일시</label> <input id="out" type="date"
						class="datepicker" onchange="renew()">
				</div>
				<div class="col s1">
					<div class="input-field center-align">
						<select onchange="renew()">
							<option value="" disabled selected>시</option>
							<c:forEach begin="1" end="24" var="HH">
								<option>${HH}</option>
							</c:forEach>
						</select> <label>시</label>
					</div>
				</div>
				<div class="col s1">
					<div class="input-field center-align">
						<select onchange="renew()">
							<option value="" disabled selected>분</option>
							<c:forEach begin="00" end="50" var="MM" step="10">
								<option>${MM}</option>
							</c:forEach>
						</select> <label>분</label>
					</div>
				</div>
				<div class="col s2 offset-s2">
					<label for="in">반납일시</label> <input id="in" type="date"
						class="datepicker" onchange="renew()">
				</div>
				<div class="col s1">
					<div class="input-field center-align">
						<select onchange="renew()">
							<option value="" disabled selected>시</option>
							<c:forEach begin="1" end="24" var="HH">
								<option>${HH}</option>
							</c:forEach>
						</select> <label>시</label>
					</div>
				</div>
				<div class="col s1">
					<div class="input-field center-align">
						<select onchange="renew()">
							<option value="" disabled selected>분</option>
							<c:forEach begin="00" end="50" var="MM" step="10">
								<option>${MM}</option>
							</c:forEach>
						</select> <label>분</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col s10 offset-s1">
					<div class="input-field">
						<select name="" onchange="renew()">
							<option value="" disabled selected>필수옵션</option>
							<option>보험1</option>
							<option>보험2</option>
							<option>보험3</option>
							<option>보험4</option>
						</select> <label>보험 선택</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col s10 offset-s1">
					<div class="input-field">
						<select name="" onchange="renew()">
							<option value="" disabled selected>선택옵션</option>
							<option>없음</option>
							<option>네비게이션</option>
							<option>차일드시트</option>
							<option>USB</option>
						</select> <label>기타 옵션선택</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col s6 offset-s3 center-align">
					<a class="waves-effect waves-light btn black deep-orange-text text-lighten-1"
						style="margin-top: 15px; font-size: 15px">조 회</a>
				</div>
			</div>
		</div>
		</form>	

	<%@include file="../index/bottom_index.jsp"%>
</body>
</html>