<%@page import="projectpack.business.ProcessDao"%>
<%@page import="java.util.List"%>
<%@page import="projectpack.business.VehicleDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao" />
<jsp:useBean id="vehicleDto" class = "projectpack.business.VehicleDto"/>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>예약 페이지</title>
</head>
<body>
<%
if(session.getAttribute("c_id") == null){
%><script> window.open("../customer/c_login.jsp", "로그인", "width=400, height=300, toolbar=no, menubar=no, scrollbars=no, resizable=yes");</script>
로그인 해주십시오!
<%	
}else{
%>

반갑습니다 <%= session.getAttribute("c_id") %>님!<br>
예약을 받겠습니다.

<%
ArrayList<VehicleDto> list = (ArrayList)processDao.selectVehicleAll();	
%>
<form>
<table border = "1">
	<tr>
		<td>차명</td>
		<td>
			<select>			
	<%for(VehicleDto d:list){ %>
				<option><%=d.getV_brand() %> <%=d.getV_name() %></option>
	<%}
 %>
			</select>
		</td>
	</tr>
	<tr>
		<td>대여일</td>
		<td>
			<select>
				<c:forEach begin="2016" end ="2100" var ="YYYY">
					<option>${YYYY}</option>
				</c:forEach>
			</select>
			<select>
				<c:forEach begin="1" end ="12" var ="MM">
					<option>${MM}</option>
				</c:forEach>
			</select>
			<select>
				<c:forEach begin="1" end ="31" var ="DD">
					<option>${DD}</option>
				</c:forEach>
			</select>
		</td>
	</tr>
		<tr>
		<td>반납일</td>
		<td>
			<select>
				<c:forEach begin="2016" end ="2100" var ="YYYY">
					<option>${YYYY}</option>
				</c:forEach>
			</select>
			<select>
				<c:forEach begin="1" end ="12" var ="MM">
					<option>${MM}</option>
				</c:forEach>
			</select>
			<select>
				<c:forEach begin="1" end ="31" var ="DD">
					<option>${DD}</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td>대여일</td>
		
		<td>
		<input id="startDay" type="text" class="input calendar" style="width:103px;" value="" readonly />
			<select id="selbox_startTime"></select>
		</td>
	</tr>
</table>
</form>
<%} %>		
	
</body>
</html>