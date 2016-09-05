<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="customerDto" class="projectpack.business.CustomerDto"></jsp:useBean>
<jsp:setProperty property="*" name="customerDto" />
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao" />
<%
boolean b = processDao.insertCustomer(customerDto);
if(b){%>
	<script>alert("회원가입을 축하드립니다!")</script>
<%}else{%>
	<script>alert("다시 시도해주십시오.불편을 끼쳐드려 죄송합니다.")</script>
<%}%>