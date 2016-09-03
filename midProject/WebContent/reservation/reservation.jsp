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
ArrayList<VehicleDto> list = (ArrayList)processDao.selectcustomerAll();	
	for(VehicleDto d:list){
%>
<table>
	<tr>
		<td>차명</td>
		<td>
			<select>			
				<option><%=d.getV_name() %></option>
			</select>
		</td>
	</tr>
</table>

		
	
	<%}
} %>
</body>
</html>