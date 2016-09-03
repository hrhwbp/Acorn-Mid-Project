<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>    

<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%
String id = request.getParameter("id");
String passwd = request.getParameter("passwd");
request.setCharacterEncoding("utf-8");

HashMap<String, String> map = new HashMap<String,String>();
map.put("c_id",id);
map.put("c_pw",passwd);
boolean b = processDao.c_login(map);
if(b){
	session.setAttribute("c_id", id);
	response.sendRedirect("c_center.jsp");
}else{
	%><script>alert("로그인 실패하셨습니다.")</script><%
}

%>