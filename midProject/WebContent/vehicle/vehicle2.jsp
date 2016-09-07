<%@page import="projectpack.business.VehicleDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%
request.setCharacterEncoding("utf-8");
String v_name = request.getParameter("v_name");
%>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao" />

<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>브랜드별 차량 조회</title>
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"
	media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
</head>
<body>
<%@ include file="../index/top_index.jsp"%>
<%
ArrayList<VehicleDto> list = (ArrayList)processDao.selectVehiclebyBrand(v_name);
%>

<div class="container">
	<div class="row s12">
		<div class="col s4 offset-s4 center-align" style="margin-top: 50px">
			<img class="responsive-img" src="../images/<%=v_name%>.png">
		</div>
	</div>
	
	<div class="row">
	<%
	for(VehicleDto s:list){
	%>
	<div class="card sticky-actioncal col s4" >
    	<div class="card-image waves-effect waves-block waves-light" style="height: 180px">
    	<%
    		if(v_name.equals("Lamborghini")){
    	%>
      		<img style="margin-top: 10%" class="activator responsive-img" src="../image/<%=s.getV_img()%>" >
      	<%
    		}else{
    	%>
    		<img class="activator responsive-img" src="../image/<%=s.getV_img()%>" >
    	<%		
    		}
    	int pri = Integer.parseInt(s.getV_price());
      	%>
    	</div>
    	<div class="card-action">
      		<span class="card-title activator grey-text text-darken-4"><%=s.getV_name()%><i class="material-icons right">more_vert</i></span>
      		<p><a href="#">예약</a></p>
    	</div>
    	<div class="card-reveal">
      		<span class="card-title grey-text text-darken-4"><%=s.getV_brand() %><i class="material-icons right">close</i></span>
      		
      		<p>Name : <%=s.getV_name() %></p>
      		<p>Type : <%=s.getV_type() %></p>
      		<p>Price : <%=s.getV_price()%></p>
      		
    	</div>
  	</div>
  	<%
  	}  	
  	%>
  	</div>
</div>

<%@ include file="../index/bottom_index.jsp"%>
</body>
</html>