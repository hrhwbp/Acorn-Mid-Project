<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>

<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<style>
#colornav {width: auto;display: block;height: 65px;background: url(https://lh3.googleusercontent.com/-dKlirHGyVZw/UproL42RSWI/AAAAAAAAJv0/ZyUiIih9E7U/s65/MenuBar.png);-webkit-box-shadow: 0px 6px 10px #282c2e;-moz-box-shadow: 0px 6px 10px #282c2e;box-shadow: 0px 6px 10px #282c2e;}
#colornav li {list-style: none;height: 44px;float:left;padding:10px 5px;margin-left: -10px;}
#colornav li a {color: #fff;width: 170px;height: 40px;line-height: 53px;border-top: 4px solid #636393;padding:0px;font-size:18px;font-weight:lighter;text-align:center;text-decoration: none;display: block;-webkit-transition: .3s all linear;-moz-transition: .3s all linear;-o-transition: .3s all linear;transition: .3s all linear;}
#colornav li:nth-child(1) a {border-color: #636393;}
#colornav li:nth-child(2) a {border-color: #B5222D;}
#colornav li:nth-child(3) a {border-color: #D4953C;}
#colornav li:nth-child(4) a {border-color: #609491;}
#colornav li:nth-child(5) a {border-color: #87A248;}
#colornav li:nth-child(6) a {border-color: #4099FF;}
#colornav li:nth-child(7) a {border-color: #5bc0de;}
#colornav li:nth-child(8) a {border-color: #d9534f;}
#colornav li:nth-child(1) a:hover {border-bottom: 35px solid #636393;height: 9px;}
#colornav li:nth-child(2) a:hover {border-bottom: 35px solid #B5222D;height: 9px;}
#colornav li:nth-child(3) a:hover {border-bottom: 35px solid #D4953C;height: 9px;}
#colornav li:nth-child(4) a:hover {border-bottom: 35px solid #609491;height: 9px;}
#colornav li:nth-child(5) a:hover {border-bottom: 35px solid #87A248;height: 9px;}
#colornav li:nth-child(6) a:hover {border-bottom: 35px solid #4099FF;height: 9px;}
#colornav li:nth-child(7) a:hover {border-bottom: 35px solid #5bc0de;height: 9px;}
#colornav li:nth-child(8) a:hover {border-bottom: 35px solid #d9534f;height: 9px;}
</style>

<body>
<%
if (session.getAttribute("a_id") == null) {
	response.sendRedirect("a_login.jsp");

}else{%>
<%-- <nav>
    <div class="nav-wrapper">
      <a href="#" class="brand-logo right">Logo</a>
      <ul id="nav-mobile" class="left hide-on-med-and-down">
        <li><a href="#"><%=session.getAttribute("a_id")%>님 반갑습니다.</a></li>
        <li><a href="a_index.jsp">관리메인</a></li>
        <li><a href="a_vMgt.jsp">차량관리</a></li>
        <li><a href="a_reserve.jsp">예약관리</a></li>
        <li><a href="a_memberMgt.jsp">회원관리</a></li>
        <li><a href="a_boardList.jsp">게시판관리</a></li>
        <li><a href="a_myInfo.jsp">관리자 정보수정</a></li>
        <li><a href="logout.jsp">로그아웃</a></li>
      </ul>
    </div>
  </nav> --%>

<ul id="colornav">
<li><a href="#"><%=session.getAttribute("a_id")%>님 반갑습니다.</a></li>
<li><a href="a_index.jsp">관리메인</a></li>
<li><a href="a_vMgt.jsp">차량관리</a></li>
<li><a href="a_reserve.jsp">예약관리</a></li>
<li><a href="a_memberMgt.jsp">회원관리</a></li>
<li><a href="a_boardList.jsp">게시판관리</a></li>
<li><a href="a_myInfo.jsp">관리자 정보수정</a></li>
<li><a href="logout.jsp">로그아웃</a></li>
</ul>

	
	
<% }%>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
</body>
</html>