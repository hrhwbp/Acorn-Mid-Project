<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>    
<%
String v_brand = request.getParameter("v_brand");
session.setAttribute("v_brand", v_brand);

response.sendRedirect("r_main2.jsp");

%>