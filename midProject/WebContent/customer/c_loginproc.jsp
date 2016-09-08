<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>    
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("utf-8");

String c_id = request.getParameter("c_id");
String c_pw = request.getParameter("c_pw");
String urladdr = request.getParameter("urladdr");
System.out.println(urladdr);
System.out.println("index의 c_login에 " + c_id + " " + c_pw + "받았습니다");

HashMap<String, String> map = new HashMap<String,String>();
map.put("c_id",c_id);
map.put("c_pw",c_pw);

boolean b = processDao.c_login(map);
System.out.println(b);

if(b){
   session.setAttribute("c_id", c_id);   
    %><script>location.href = "<%=urladdr%>";</script><%
   
}else{   
   out.println("로그인 실패");
	return;
   
}

%>
