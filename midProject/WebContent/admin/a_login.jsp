<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<script type="text/javascript"	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="../js/js.js"></script>
</head>
<body>


<%
String id = (String)session.getAttribute("a_id");
if(id != null){
	%>
	<b><%=id %>님 환영</b>
	<a href="logout.jsp">로그아웃</a>
<%
}else{
%>
	<form name="loginFrm" id = "admin">
	<table>
		<tr>
			<td colspan="2">관리자 로그인</td>
		</tr>
		<tr>
			<td>아이디:</td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td>비밀번호:</td>
			<td><input type="text" name="pw"></td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="button" value="로그인" id = "btnLogin" onclick="funcAlogin()">
			<input type="button" value="홈페이지" id = "btnHome" onclick="funchome()">
			</td>
		</tr>
	</table>
	</form>
<%	
}
%>
</body>
</html>
