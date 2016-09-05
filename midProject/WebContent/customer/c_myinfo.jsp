<%@page import="projectpack.business.CustomerDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src = "../js/js.js"></script>
<%
 String c_id = (String)session.getAttribute("c_id");
if(c_id == null){
	  %>
	  <script>alert("로그인해주세요");
	  location.href("c_login.jsp");
	  </script>
	  <%
  }
CustomerDto dto = processDao.selectcustomerPartId(c_id);
%>        

<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css" media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<style type="text/css">
      .imsi30{
      height: 30px;
      }
      .imsi20{
      height: 20px;
      }

</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
		$('.parallax').parallax();

		//사이드 메뉴
		$('.button-collapse').sideNav('show');
		$('.button-collapse').sideNav('hide');
		$('.button-collapse').sideNav({
			menuWidth : 300, // Default is 240
			edge : 'left', // Choose the horizontal origin
			closeOnClick : true
		});

		//top menu 툴팁
		$('.tooltipped').tooltip({
			delay : 50
		});


</script>
</head>
<body>
	<%@ include file="c_top.jsp"%>
내 정보
<table>
<tr><td>아이디 :</td><td><%=dto.getC_id()%></td></tr>
<tr><td>이름 : </td><td><%=dto.getC_name() %></td></tr>
<tr><td>주민번호 : </td><td><%=dto.getC_jumin_first() %>-<%=dto.getC_jumin_last() %></td></tr>
<tr><td>우편번호 : </td><td><%=dto.getC_zip() %>
<tr><td>주소 : </td><td><%=dto.getC_addr() %></td></tr>
<tr><td>전화번호 : </td><td><%=dto.getC_tel() %></td></tr>
<tr><td>면허정보 : </td><td><%=dto.getC_lic() %><br><%=dto.getC_lic2() %></td></tr>
<tr><td>메일 : </td><td><%=dto.getC_email() %></td></tr>
<tr><td colspan="2"><button id="update">수정</button></td></tr>

</table>
	<%@ include file="c_bottom.jsp"%>
</body>
</html>