<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객님 로그인</title>
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"
	media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="../js/js.js"></script>
<script type="text/javascript">
	function funclogout() {
		location.href = "c_logout.jsp";
	}
</script>
</head>
<body>
	<%@ include file="../index/top_index.jsp"%>
	<%
		String id = (String) session.getAttribute("c_id");
		if (id != null) {
			System.out.println(request.getHeader("referer"));
	%>
	<b><%=id%>님 환영</b>
	<br>
	<a href="../index.jsp">홈페이지</a>
	<br>
	<a href="javascript:funclogout()">로그아웃</a>
	<%
		} else {
			String urladdr = request.getHeader("referer");
	%>
	<div class="container">
		<form name="loginFrm" id="customer">
			<div class="row">
				<div class="col s6">
				 <i class="material-icons prefix">account_circle</i><input placeholder="MEMBER ID" type="text" id="c_id" name="c_id" >
				 <i class="material-icons prefix">account_circle</i><input placeholder="PASSWORD" type="password"	id="c_pw" name="c_pw" >
				<input type="hidden" name="urladdr" value="<%=urladdr%>">
				</div>
			</div>
		</form>
	</div>

	<%
		}
	%>
	<%@ include file="../index/bottom_index.jsp"%>
</body>
</html>
