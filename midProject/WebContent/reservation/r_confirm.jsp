<%@page import="projectpack.business.ReservationDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="reservationDto" class="projectpack.business.ReservationDto" />
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao" />
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>예약확인</title>
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css" media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal-trigger').leanModal();
  });
function modalclose(){
    $('#modaldelete').closeModal();
}
</script>
</head>
<body>
<%@include file="../customer/c_top.jsp" %>
<div class="container">
<table>
 <thead>
          <tr>
              <th data-field="">브랜드</th>
              <th data-field="">차종류</th>
              <th data-field="">보험</th>
              <th data-field="">옵션</th>
              <th data-field="">총액</th>
              <th data-field="">예약날짜</th>
              <th></th>
             </tr>
        </thead>
        <tbody>
<% 
String c_id = (String)session.getAttribute("c_id");
ArrayList<ReservationDto> list = (ArrayList)processDao.selectReservationById(c_id);
if(list == null){
   out.println("<tr><td colspan = '7'>자료 없음</td></tr>");
}else{
   for(ReservationDto d:list){
   %>
    <tr>
            <td><%=d.getV_brand() %></td>
            <td><%=d.getV_name() %></td>
            <td><%=d.getI_name() %></td>
            <td><%=d.getR_opt() %></td>
            <td><%=d.getR_total() %></td>
            <td><%=d.getR_date() %></td>
            <td><a class="modal-trigger" href="#modaldelete<%=d.getR_no() %>">삭제</a></td>
            </tr>
      <tr>
      <td>
       <div id="modaldelete<%=d.getR_no() %>" class="modal">
    <div class="modal-content">
      <h4>삭제하시겠습니까?</h4>
    </div>
    <div class="modal-footer">
      <a href="r_delete.jsp?r_no=<%=d.getR_no() %>" class=" modal-action modal-close waves-effect waves-green btn-flat" >삭제</a>
      <a href="#" class=" modal-action modal-close waves-effect waves-green btn-flat" onclick="modalclose()">취소</a>
    </div>
  </div>
      </td>
      </tr>      
<%}
}
%>
        </tbody>
      </table>
</div>

<%@include file="../customer/c_bottom.jsp" %>
</body>
</html>