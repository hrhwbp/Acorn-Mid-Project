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
		<td><%=d.getC_no() %></td><td><%=d.getC_name() %></td><td><%=d.getR_memo() %></td><td><%=d.getR_date() %></td><td><a href="#">상세보기</a></td>	
	</tr>
<%		
	}
}
%>
</table>

</body>
</html>