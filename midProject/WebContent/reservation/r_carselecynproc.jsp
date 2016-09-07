<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>    
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css" media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
<script type="text/javascript" src="../js/js.js"></script>
<script type="text/javascript">
$(document).ready(function() {
   $('#modalreserve').openModal();
})
</script>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String v_name = request.getParameter("v_name");
String rentday = request.getParameter("rday");
String hour = request.getParameter("hour");
String min = request.getParameter("min");
String backday = request.getParameter("bday");
String bhour = request.getParameter("bhour");
String bmin = request.getParameter("bmin");

HashMap<String, String> map = new HashMap<String,String>();

map.put("v_name", v_name);
if(hour.length() == 1){
hour = "0" + hour;
}
if(min.length() == 1){
min = "0" + min;   
}
if(bhour.length() == 1){
bhour = "0" + bhour;
}
if(bmin.length() == 1){
bmin = "0" + bmin;   
}


map.put("r_out", rentday + " " + hour + ":" + min);
map.put("r_in", backday + " " + bhour + ":" + bmin);
boolean b = processDao.selectCar(map);
if(b){
  %>
  <form action="r_payment.jsp" name = "frmpayment" method="post">
  <input type="hidden" name="v_brand" value="<%=request.getParameter("v_brand")%>">
  <input type="hidden" name="v_name" value="<%=v_name%>">
  <input type="hidden" name="rday" value="<%=rentday%>">
  <input type="hidden" name="hour" value="<%=hour%>">
  <input type="hidden" name="min" value="<%=min%>">
  <input type="hidden" name="bday" value="<%=backday%>">
  <input type="hidden" name="bhour" value="<%=bhour%>">
  <input type="hidden" name="bmin" value="<%=bmin%>">
  <input type="hidden" name="r_option" value="<%=request.getParameter("r_option")%>">
  <input type="hidden" name="r_opt" value="<%=request.getParameter("r_opt")%>">
  
  </form>
  <div id="modalreserve" class="modal bottom-sheet">
    <div class="modal-content">
      <h4>예약가능합니다</h4>
      <p>예약하시겠습니까?</p>
    </div>
    <div class="modal-footer">
       
      <a href="#" class=" modal-action modal-close waves-effect waves-green btn-flat" onclick = "frmpayment.submit()">예</a>
      <a href="#" class=" modal-action modal-close waves-effect waves-green btn-flat" onclick = "history.back()">다시 선택하겠습니다.</a>
    </div>
  </div><%
}else{%>
   <div id="modalreserve" class="modal bottom-sheet">
    <div class="modal-content">
      <h4>이미 예약된 차량입니다. </h4>
      <p>다시 시도해주세요.</p>
    </div>
    <div class="modal-footer">
      <a href="#" class=" modal-action modal-close waves-effect waves-green btn-flat" onclick = "history.back()">이전으로</a>
    </div>
  </div>
  <% 
}

%>

</body>
