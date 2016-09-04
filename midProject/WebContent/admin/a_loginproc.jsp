<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");


HashMap<String, String> map = new HashMap<String, String>();
map.put("a_pw", pw);
map.put("a_id", id);

boolean b = processDao.a_login(map);
if (b) {
	session.setAttribute("a_id", id);
	response.sendRedirect("a_index.jsp");
} else {
%><script>alert("로그인 실패하셨습니다.")</script><%
	response.sendRedirect("a_index.jsp");
	}
%>