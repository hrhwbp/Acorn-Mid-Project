<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>alert("로그아웃 되셨습니다")</script>
<%
session.removeAttribute("a_id");
response.sendRedirect("../index.jsp");
%>
