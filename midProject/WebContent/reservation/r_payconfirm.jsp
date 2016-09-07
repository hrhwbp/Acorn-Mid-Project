<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="bean" class="projectpack.business.ReservationDto"></jsp:useBean>
<jsp:setProperty property = "*" name="bean"/>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>    
<%
boolean b = processDao.insertReservation(bean);
if(b){
response.sendRedirect("../index/index.jsp");   
}else{
%>
<script>
alert("예약에 실패하였습니다. \n관리자에게 문의해주세요!")

history.back();
</script>
<%
}
%>