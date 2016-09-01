<%@page import="projectpack.business.CustomerDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>
<%
/* String id = session.getAttribute("cus_id"); */
CustomerDto dto = processDao.selectcustomerPart("bea");
%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src = "../js/js.js"></script>
</head>
<body>
내 정보
<table>
<tr><td>아이디 :</td><td><%=dto.getC_id() %></td></tr>
<tr><td>이름 : </td><td><%=dto.getC_name() %></td></tr>
<tr><td>주민번호 : </td><td><%=dto.getC_jumin() %></td></tr>
<tr><td>주소 : </td><td><%=dto.getC_addr() %></td></tr>
<tr><td>전화번호 : </td><td><%=dto.getC_tel() %></td></tr>
<tr><td>면허정보 : </td><td><%=dto.getC_lic() %></td></tr>
<tr><td>메일 : </td><td><%=dto.getC_email() %></td></tr>
<tr><td colspan="2"><button id="update">수정</button></td></tr>

</table>

</body>
</html>