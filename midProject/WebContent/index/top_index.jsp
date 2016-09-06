<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">


function redirect(arg){
	//alert(arg.id);
	if(arg.id == "home"){
	location.href = "../index/index.jsp";
	}
}
</script>
</head>
<body>

    
      <ul class="tabs black text-white" style="font-size: 20px;">
      	<li class="tab col s1"><a class="active" href="#" id="home" onclick="redirect(this);">HOME</a></li>
        <li class="tab col s2"><a class="active" href="#" id="about" onclick="redirect();">ABOUT</a></li>
        <li class="tab col s2"><a class="active" href="#" id="vehicles" onclick="redirect();">VEHICLES</a></li>
        <li class="tab col s2"><a class="active" href="#" id="reservation" onclick="redirect();">RESERVATION</a></li>
        <li class="tab col s2"><a class="active" href="#" id="membership" onclick="redirect();">MEMBERSHIP</a></li>
        <li class="tab col s2"><a class="active" href="#" id="support" onclick="redirect();">SUPPORT</a></li>
      </ul>
    

</body>
</html>