<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 화면</title>
</head>
<body>
=========================================<br>
<%
if (session.getAttribute("a_id") == null) {
	response.sendRedirect("a_login.jsp");

}else{%>
	<%=session.getAttribute("a_id")%>님 반갑습니다.
	<a href="logout.jsp">로그아웃</a><br>
	
<% }%>

=========================================
</body>
</html>