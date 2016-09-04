<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>

<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<body>
<%
if (session.getAttribute("a_id") == null) {
	response.sendRedirect("a_login.jsp");

}else{%>
<nav>
    <div class="nav-wrapper">
      <a href="#" class="brand-logo right">Logo</a>
      <ul id="nav-mobile" class="left hide-on-med-and-down">
        <li><a href="sass.html"><%=session.getAttribute("a_id")%>님 반갑습니다.</a></li>
        <li><a href="a_manage.jsp">경영관리</a></li>
        <li><a href="a_vMGT.jsp">차량관리</a></li>
        <li><a href="a_reserve.jsp">예약관리</a></li>
        <li><a href="a_memberMGT">회원관리</a></li>
        <li><a href="a_boardList">게시판관리</a></li>
        <li><a href="a_myInfo.jsp">관리자 정보수정</a></li>
        <li><a href="logout.jsp">로그아웃</a></li>
      </ul>
    </div>
  </nav>
	
<% }%>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
</body>
</html>