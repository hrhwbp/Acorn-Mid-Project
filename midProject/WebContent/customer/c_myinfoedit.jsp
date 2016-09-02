<%@page import="projectpack.business.CustomerDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>
  <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <%
  String id = (String)session.getAttribute("c_id");
  if(id == null){
  %>
  <script>alert("로그인해주세요");
  location.href("c_login.jsp");
  </script>
  <%
  }
CustomerDto dto = processDao.selectcustomerPart(id);
%>   

</head>
<body>
**회원가입**<p>
<form action="c_myinfoeditproc.jsp" method="post">
<table>
<tr><td>아이디 :</td><td><%=dto.getC_id() %></td></tr>
<tr><td>비밀번호 :</td><td> <input type="password" name="c_pw" value="<%=dto.getC_pw() %>"></td></tr>

<tr><td>이름 : </td><td><input type="text" name="c_name" value="<%=dto.getC_name() %>"></td></tr>
<tr><td>주민번호 : </td><td><input type="text" name="c_jumin" value="<%=dto.getC_jumin() %>"></td></tr>
<tr><td>주소 : </td><td><input type="text" name="c_addr" value="<%=dto.getC_addr() %>"></td></tr>
<tr><td>전화번호 : </td><td><input type="text" name="c_tel" value="<%=dto.getC_tel() %>"></td></tr>
<tr><td>면허정보 : </td><td><input type="text" name="c_lic" value="<%=dto.getC_lic() %>"></td></tr>
<tr><td>메일 : </td><td><input type="text" name="c_email" value="<%=dto.getC_email() %>"></td></tr>

<tr><td colspan = "2"><input type="submit" value="등록"></td></tr>
</table>
<input type="hidden" name="c_id" value="<%=dto.getC_id() %>">
<input type="hidden" name="c_que" value="">
</form>

</body>
</html>