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
<title>::::::RESERVATION::::::</title>

<link href="http://fonts.googleapis.com/icon?family=Material+Icons"	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css" media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.js"></script>
<script type="text/javascript" src="../js/js.js"></script>
<script type="text/javascript">

$(document).ready(function() {
    $('select').material_select();
    $('#v_brand > div > input').attr("name","v_brand");
    $('#v_name > div > input').attr("name","v_name");
    $('#hour > div > input').attr("name","hour");
    $('#min > div > input').attr("name","min");
    $('#backhour > div > input').attr("name","bhour");
    $('#backmin > div > input').attr("name","bmin");
    $('#r_option > div > input').attr("name","r_option");
    $('#r_opt > div > input').attr("name","r_opt");    
    
  });
$('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
  });

function selectcar(){
   /* alert(document.getElementById("v_brand").value); */
   location.href="r_main.jsp";   
}  
</script>
<style type="text/css">

div.reservation {
    z-index: 2;
    position: relative;
    width: 100%;
    height: 100%;
    background: rgba(255, 255, 255, 0);
    /* margin-bottom: inherit; */
}

.slider .slides {
    background-color: #9e9e9e;
    margin: 0;
    height: 140% !important;
}

footer.page-footer.black {
	position: absolute;
	bottom: 0px;
	width: 100%;
	margin-top: 0px;
}

</style>
</head>

<body style="background-color: black;">
<%@include file="../index/top_index.jsp" %>
<%
String v_brand = (String)session.getAttribute("v_brand");

ArrayList<VehicleDto> list = (ArrayList)processDao.selectVehicleBrand();

%>

<div class="container">
  <form action="r_carselecynproc.jsp" name="frmcarsearch">
     <div class="row">
     <h4 class="col offset-s1">예약 차량 조회</h4>
     <p/>
     <br>
     </div>
   <div class="row s12">
      <div class="col s3 offset-s1">
       <div class="input-field" id="v_brand">
          <select name="v_brand"  onchange = "selectcar()" id="v_brand">
            <option value="" disabled selected><%=session.getAttribute("v_brand") %></option>
            <option value="">브랜드 재선택</option>
           
           </select>
           <label>차량 선택</label>
        </div>
      </div>
      <div class="col s7 ">
       <div class="input-field" id="v_name">
          <select name="v_no">
      <option value="" disabled selected>차량을 선택해주세요</option>
            <%
            ArrayList<VehicleDto> listName =(ArrayList)processDao.selectVehiclebyBrand(v_brand);
            if(listName == null){
            }else{
             for(VehicleDto d2:listName){ %>
            <option value="<%=d2.getV_no() %>"><%=d2.getV_name() %></option>
           <%}
            }
           %>
     </select>
          <label>차량 선택</label>
        </div>
      </div>
   </div>
   
   <div class="row">
      <div class="col s2 offset-s1">
         <label for="out">대여일시</label>
         <input id="out" type="date" class="datepicker" onchange = "rentday()" name="rday">
      </div>
      <div class="col s1">
      <div class="input-field center-align" id="hour">
          <select id="hour" onchange="renttime()">
             <option value="" disabled selected>시</option>
            <c:forEach begin="1" end ="24" var ="HH">
               <option>${HH}</option>
            </c:forEach>
          </select>
          <label>시</label>
      </div>
      </div>
      <div class="col s1">
      <div class="input-field center-align" id="min">
           <select id="min" onchange="rentmin()">
            <option value="" disabled selected>분</option>
            <c:forEach begin="00" end ="50" var ="MM" step="10">
               <option>${MM}</option>
            </c:forEach>
          </select>
          <label>분</label>
      </div>
      </div>
      <div class="col s2 offset-s2" >
         <label for="in">반납일시</label>
         <input id="in" type="date" class="datepicker" onchange="backday()" name="bday">
      </div>
      <div class="col s1">
      <div class="input-field center-align" id="backhour">
          <select>
            <option value="" disabled selected>시</option>
            <c:forEach begin="1" end ="24" var ="HH">
               <option>${HH}</option>
            </c:forEach>
          </select>
          <label>시</label>
      </div>
      </div>
      <div class="col s1">
      <div class="input-field center-align" id="backmin">
           <select>
            <option value="" disabled selected>분</option>
             <c:forEach begin="00" end ="50" var ="MM" step="10">
               <option>${MM}</option>
            </c:forEach>
          </select>
          <label>분</label>
      </div>
      </div>
   </div>
   <div class="row">
         <div class="col s10 offset-s1">
             <div class="input-field" id="r_option">
                <select name="">
                  <option value="" disabled selected>필수옵션</option>
                  <option>기본대물보상보험</option>
                  <option>기본자차보험</option>
                  <option>슈퍼자차보험</option>
                  <option>올커버보험</option>
                </select>
                <label>보험 선택</label>
              </div>
         </div>
      </div>
   <div class="row">
      <div class="col s10 offset-s1">
          <div class="input-field" id="r_opt">
             <select name="">
               <option value="" disabled selected>선택옵션</option>
               <option>없음</option>
               <option>네비게이션</option>
               <option>차일드시트</option>
               <option>USB</option>
             </select>
             <label>기타 옵션선택</label>
           </div>
      </div>
   </div>
   <div class="row">
   <div class="col s6 offset-s3 center-align ">
      <a class="waves-effect waves-light btn modal-trigger" href="#" onclick = "frmcarsearch.submit()"
            style="margin-top: 15px; font-size: 10px">예 약 가 능 조 회</a>
   </div>
   </div>
  </form>
</div>
	<!------------------------ slider DIV ----------------------->
	<div class="slider" style="height: 545px;">
		<ul class="slides" style="height: 120%;">
			<li><img src="../image/slider/amdb11.jpg"></li>
			<li><img src="../image/slider/benzs63amg.jpg"></li>
			<li><img src="../image/slider/bmwm6.jpg"></li>
			<li><img src="../image/slider/ferrarigtb.jpg"></li>
			<li><img src="../image/slider/lambor.jpg"></li>
		</ul>
	</div>
	<!---------------------- slider DIV끝 ------------------------>


<%@include file="../index/bottom_index.jsp"%>
</body>
</html>