<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
**회원가입**<p>
<form action="c_joinproc.jsp" method="post">
<table>
<tr><td>아이디 :</td><td> <input type="text" name="c_id"></td></tr>
<tr><td>비밀번호 :</td><td> <input type="password" name="c_pw"></td></tr>
<tr><td>이름 : </td><td><input type="text" name="c_name"></td></tr>
<tr><td>주민번호 : </td><td><input type="text" name="c_jumin"></td></tr>
<tr><td>주소 : </td><td><input type="text" name="c_addr"></td></tr>
<tr><td>전화번호 : </td><td><input type="text" name="c_tel"></td></tr>
<tr><td>면허정보 : </td><td><input type="text" name="c_lic"></td></tr>
<tr><td>메일 : </td><td><input type="text" name="c_email"></td></tr>

<tr><td colspan = "2"><input type="submit" value="등록"></td></tr>
</table>
<input type="hidden" name="c_que" value="">
</form>

</body>
</html>