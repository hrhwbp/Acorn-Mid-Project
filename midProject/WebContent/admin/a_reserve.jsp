<%@page import="java.text.SimpleDateFormat"%>
<%@page import="projectpack.business.ReservationDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="reservationDto" class="projectpack.business.ReservationDto" />
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao" />
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src = "../js/js.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	   $("#update").click(function(){
	      location.href="c_myinfoedit.jsp"
	   });
	   $(".modal-trigger").leanModal();
	   $('select').material_select();
	});
</script>
</head>
<body>
<%@ include file = "a_top.jsp" %>
<table border = "1">
   <tr><th>예약번호</th><th>차번호</th><th>차량명</th><th>출고일/입고일</th><th>고객번호</th><th>고객성함</th><th>예약메모</th><th>예약일시</th></tr>
<% 
ArrayList<ReservationDto> list = (ArrayList)processDao.selectReservationAll();
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분");

if(list == null){
   out.println("<tr><td colspan = '4'>자료 없음</td></tr>");
}else{
   for(ReservationDto d:list){
%>
   <tr>
      <td><%=d.getR_no() %></td><td><%=d.getR_vno() %></td><td><%=d.getV_brand() %> <%=d.getV_name() %></td><td><%=d.getR_out() %><br><%=d.getR_in() %></td>
      <td><%=d.getC_no() %></td><td><%=d.getC_name() %></td><td><%=d.getR_memo() %></td><td><%=d.getR_date() %></td>
      <td><a href="#modal_detail<%=d.getR_no()%>"  class= "modal-trigger">상세보기</a></td>
      <td>
      <div id="modal_detail<%=d.getR_no()%>" class="row modal">
      <form class="col s12 l12">
      <div class="row">
      </div>
      <div class="row">
         <div class="input-field col s2  offset-s3 imsi30">
                <input disabled id="r_no" type="text"  name="r_no" class="validate" value="<%=d.getR_no() %>">
              <label for="r_no">예약번호</label>
           </div>
           <div class="input-field col s4  imsi30">
                <input disabled id="r_date" name = "r_date" type="text"  value="<%=d.getR_date() %>">
              <label for="r_date">예약일시</label>
           </div>   
           
        </div>
        <div class="row">
        <div class="input-field col s1 offset-s3 imsi30">
                <input disabled id="r_vno" type="text"  name="r_vno" class="validate" value="<%=d.getR_vno() %>">
              <label for="r_vno">차번호</label>
           </div>
         <div class="input-field col s2 imsi30" >
             <input disabled id="v_brand" name="v_brand" type="text"  value="<%=d.getV_brand()%>"  >
             <label for="v_brand">차량명</label>
            </div>
            <div class="input-field col s3 imsi30" >
             <input disabled id="v_name" name="v_name" type="text"  value="<%=d.getV_name()%>" >
            </div>
        </div>
        <div class="row">
         <div class="input-field col s3 offset-s3 imsi30">
                <input disabled id="r_out" name = "r_out" type="text"  value="<%=d.getR_out() %>">
              <label for="r_out">출고일</label>
           </div>
           <div class="input-field col s3 imsi30" >
               <input disabled id="r_in" name = "r_in" type="text"  value="<%=d.getR_in() %>">
               <label for ="r_in">입고일</label>
             </div>
          </div>
          <div class="row">
         <div class="input-field col s3 offset-s3 imsi30">
                <input disabled id="c_no" type="text"  name="c_no" class="validate" value=<%=d.getC_no() %>>
              <label for="c_no">고객번호</label>
           </div>
          <div class="input-field col s3 imsi30">
                <input disabled id="c_name" type="text"  name="c_name" class="validate" value=<%=d.getC_name() %>>
              <label for="c_name">고객이름</label>
           </div>
        </div>
          <div class="row">
         <div class="input-field col s6 offset-s3 imsi30">
                <textarea disabled id="r_memo" name="r_memo" class="materialize-textarea"><%=d.getR_memo() %></textarea>
              <label for="r_memo">예약메모</label>
           </div>
        </div>
        
       
      </form>
      </div>
      </td>   

<%      
   }
}
%>
</tr>
</table>

</body>
</html>