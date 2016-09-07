<%@page import="projectpack.business.InsuranceDto"%>
<%@page import="projectpack.business.CustomerDto"%>
<%@page import="projectpack.business.VehicleDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
    <%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
 
<jsp:useBean id="processDao" class = "projectpack.business.ProcessDao"/>
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
<script type="text/javascript" src="../js/js.js"></script>
<script type="text/javascript">

$(document).ready(function() {
    $('select').material_select();
   
  });
$('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
  });
$('[onclick]').on('click', function (e) {
    $( $(this).data('click') ).trigger('click');
});
</script>
</head>
<body>
<%@include file="../customer/c_top.jsp" %>

<div class="container">
  <form action="r_payconfirm.jsp" name="confirm">
  
      <ul class="collapsible" data-collapsible="expandable">
    <li>
      <div class="collapsible-header active">고객정보</div>
      
      <div class="collapsible-body">
      <% String c_id = (String)session.getAttribute("c_id");
  
      if(c_id == null){
         %>
         <script>alert("로그인해주세요");
         location.href("c_index.jsp");
         </script>
         <%
      }
    CustomerDto dto = processDao.selectcustomerPartId(c_id);
   
    %>
    <input type="hidden" name="r_cno" value="<%=dto.getC_no() %>">
    <div class="row"></div>
      <div class="row">
      <div class="col s3 offset-s2"><label>회원성명</label>
      <input disabled type="text" value="<%=dto.getC_name()%>" class="validate">
      </div>
      <div class="col s5 "><label>전화번호</label>
      <input disabled type="text" value="<%=dto.getC_tel()%>" class="validate">
      </div>
      </div>
      <div class="row">
      <div class="col s4 offset-s2"><label>운전면호정보</label>
      <input disabled id="in" type="text" value="<%=dto.getC_lic()%>" class="validate">
      </div>
      <div class="col s4">
      <input disabled id="in" type="text" value="<%=dto.getC_lic2() %>" class="validate">
      </div>
      </div>
      
      
      <div class="row">
      <div class="col s4 offset-s3">
               위의 고객 정보가 맞으십니까?
      </div>
        </div>
        </div>
    </li>
    <li>
    
    
      <div class="collapsible-header">
<div class="collapsible-header" id="custominfo">
<a class="waves-effect waves-light btn" style="margin-left: 85%; font-size: 10px">
            예
            </a></div>
</div>
<div class="collapsible-body">
      <div class="row"></div>
      <div class="row">
      <div class="col s3 offset-s2"><label>브랜드</label>
      <input disabled type="text" value="<%=request.getParameter("v_brand")%>" class="validate">
      </div>
      <div class="col s5 "><label>차이름</label>
      <input disabled type="text" value="<%=request.getParameter("v_name")%>" class="validate">
      </div>
      </div>
      <div class="row">
      <div class="col s4 offset-s2"><label>대여일시</label>
      <input disabled id="in" type="text" value="<%=request.getParameter("rday")%> <%=request.getParameter("hour") %>:<%=request.getParameter("min") %>" class="validate">
      <input type="hidden" name="r_in" value="<%=request.getParameter("rday")%> <%=request.getParameter("hour") %>:<%=request.getParameter("min") %>">
      </div>
      <div class="col s4"><label>반납일시</label>
      <input disabled id="in" type="text" value="<%=request.getParameter("bday")%> <%=request.getParameter("bhour") %>:<%=request.getParameter("bmin") %>" class="validate">
      <input name="r_out" type="hidden" value="<%=request.getParameter("bday")%> <%=request.getParameter("bhour") %>:<%=request.getParameter("bmin") %>">
      </div>
      </div>
       <div class="row">
      <div class="col s4 offset-s2"><label>보험종류</label>
      <input disabled id="in" type="text" value="<%=request.getParameter("r_option")%>" class="validate">
      <input type="hidden" name="r_option" value="<%=request.getParameter("r_option")%>">
      </div>
      <div class="col s4"><label>옵션종류</label>
      <input disabled id="in" type="text" value="<%=request.getParameter("r_opt")%>" class="validate" name="r_opt">
      <input type="hidden" name="r_opt" value="<%=request.getParameter("r_opt")%>">
      </div>
      </div>
      <div class="row">
      <div class="col s4 offset-s3">
               위의 예약 정보가 맞으십니까?
      </div>
      <div class="col s1">
      </div>
      </div>
      </div>
    </li>
    <li id="cusinfo">
      <div class="collapsible-header" id="custominfo">
      <a class="waves-effect waves-light btn" style="margin-left: 85%; font-size: 10px">
            예
            </a></div>
      <div class="collapsible-body">
      <div class="row"></div>
      <div class="row">
      <%VehicleDto vd = processDao.vehiclePrice(request.getParameter("v_name")); %>
      <div class="col s2 offset-s2">
      <label>렌트가격</label>
      <input disabled type="text" value="<%=vd.getV_price() %>" class="validate">
      </div>
      <input type="hidden" name= "r_vno" value="<%=vd.getV_no() %>">
      <div class="col s2 "><label>보험가격</label>
      <%InsuranceDto id = processDao.insurancePrice(request.getParameter("r_option")); %>
      <input disabled type="text" value="<%=id.getI_price()%>" class="validate">
      <input type="hidden" name= "r_ins" value="<%=id.getI_no() %>">
      </div>
      <div class="col s3 "><label>총가격</label>
      <%int total = (Integer.parseInt(id.getI_price()) + Integer.parseInt(vd.getV_price()));%>
      <input disabled type="text" value="<%=total %>" class="validate">
      <input type="hidden" name= "r_date" value="<%%>">
      <input type="hidden" name= "r_memo" value="">
      <input type="hidden" name= "r_total" value="<%=total%>">
      
      </div>
      </div>
      <div class="row">
      <div class="col s2 offset-s2">
      <input disabled type="text" value="결제선택" class="validate">
      </div>
      
      <div>
      <a class="waves-effect waves-light btn" onclick="confirm.submit()">카드</a>
      </div>
       <div class="col s2 ">
      <a class="waves-effect waves-light btn" onclick="confirm.submit()">무통장입금</a>
      </div>
       <div class="col s2 ">
      <a class="waves-effect waves-light btn" onclick="confirm.submit()">실시간 계좌이체</a>
      </div>
       <div class="col s2 ">
      <a class="waves-effect waves-light btn" onclick="confirm.submit()">휴대폰 결제</a>
      </div>
      </div>
      </div>
    </li>
  </ul>
  </form>
</div>
<% %>
<%@include file="../customer/c_bottom.jsp" %>
</body>
</html>
  