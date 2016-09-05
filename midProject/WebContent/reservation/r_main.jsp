<%@page import="projectpack.business.ProcessDao"%>
<%@page import="projectpack.business.VehicleDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
    <%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao" />
<jsp:useBean id="vehicleDto" class = "projectpack.business.VehicleDto"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약하기</title>

<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css" media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('select').material_select();
  });
$('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
  });
</script>
</head>
<body>
<%@include file="../customer/c_top.jsp" %>

<%
ArrayList<VehicleDto> list = (ArrayList)processDao.selectVehicleAll();   
%>
<div class="container">
  <form action="#">
     <div class="row">
     <h4 class="col offset-s1">예약 차량 조회</h4>
     <p/>
     <br>
     </div>
   <div class="row s12">
      <div class="col s10 offset-s1">
       <div class="input-field">
          <select name="v_no">
            <option value="" disabled selected>차량을 선택해 주세요</option>
            <%for(VehicleDto d:list){ %>
            <option value="<%=d.getV_no()%>"><%=d.getV_brand() %> <%=d.getV_name() %></option>
           <%}%>
          </select>
          <label>차량 선택</label>
        </div>
      </div>
   </div>
   <div class="row">
      <div class="col s2 offset-s1">
         <label for="out">대여일시</label>
         <input id="out" type="date" class="datepicker">
      </div>
      <div class="col s1">
      <div class="input-field center-align">
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
      <div class="input-field center-align">
           <select>
            <option value="" disabled selected>분</option>
            <c:forEach begin="00" end ="50" var ="MM" step="10">
               <option>${MM}</option>
            </c:forEach>
          </select>
          <label>분</label>
      </div>
      </div>
      <div class="col s2 offset-s2">
         <label for="in">반납일시</label>
         <input id="in" type="date" class="datepicker">
      </div>
      <div class="col s1">
      <div class="input-field center-align">
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
      <div class="input-field center-align">
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
             <div class="input-field">
                <select name="">
                  <option value="" disabled selected>필수옵션</option>
                  <option>보험1</option>
                  <option>보험2</option>
                  <option>보험3</option>
                  <option>보험4</option>
                </select>
                <label>보험 선택</label>
              </div>
         </div>
      </div>
   <div class="row">
      <div class="col s10 offset-s1">
          <div class="input-field">
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
   <div class="col s6 offset-s3 center-align">
      <a class="waves-effect waves-light btn" 
            style="margin-top: 15px; font-size: 10px">
            조회
            </a>
   </div>
   </div>
   
  </form>
</div>

<%@include file="../customer/c_bottom.jsp" %>
</body>
</html>