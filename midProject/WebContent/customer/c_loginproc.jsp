<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>    

<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%
String c_id = request.getParameter("c_id");
String c_pw = request.getParameter("c_pw");
System.out.println(c_id + " " + c_pw);
request.setCharacterEncoding("utf-8");

HashMap<String, String> map = new HashMap<String,String>();
map.put("c_id",c_id);
map.put("c_pw",c_pw);
boolean b = processDao.c_login(map);
if(b){
   session.setAttribute("c_id", c_id);
   response.sendRedirect("c_index.jsp");
}else{
   %><script>alert("로그인 실패하셨습니다.")</script><%
   return;
   
}

%>
