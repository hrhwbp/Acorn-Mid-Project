<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.removeAttribute("c_id");
response.sendRedirect("../index/index.jsp?out=logout");
%>
