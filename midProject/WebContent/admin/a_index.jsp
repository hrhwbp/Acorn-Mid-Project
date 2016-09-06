<%@page import="projectpack.business.IndexlistDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projectpack.business.GraphDto"%>
<%@page import="java.util.List"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
<!--Let browser know website is optimized for mobile-->

<!-- 여기서부터 new css... bootstrap -->
<link href="../css/bootstrap.css" rel="stylesheet" />
<link href="../css/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

<!-- libraries -->
<link href="../css/jquery-ui-1.10.2.custom.css" rel="stylesheet" type="text/css" />
<link href="../css/font-awesome.css" type="text/css" rel="stylesheet" />

<!-- global styles -->
<link rel="stylesheet" type="text/css" href="../css/layout.css" />
<link rel="stylesheet" type="text/css" href="../css/elements.css" />
<link rel="stylesheet" type="text/css" href="../css/icons.css" />

<!-- this page specific styles -->
<link rel="stylesheet" href="../css/index.css" type="text/css" media="screen" />

<!-- open sans font -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />

<!-- lato font -->
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css' />

<!-- scripts -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery-ui-1.10.2.custom.min.js"></script>
<!-- knob -->
<script src="../js/jquery.knob.js"></script>
<!-- flot charts -->
<script src="../js/jquery.flot.js"></script>
<script src="../js/jquery.flot.stack.js"></script>
<script src="../js/jquery.flot.resize.js"></script>
<script src="../js/theme.js"></script>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
<script type="text/javascript" src="../js/jquery.canvasjs.min.js"></script>

  <script type="text/javascript">
	  <%
	  ArrayList<GraphDto> martinlist = (ArrayList)processDao.selectMartin();
	  ArrayList<GraphDto> Lamborghinilist = (ArrayList)processDao.selectLamborghini();
	  ArrayList<GraphDto> Bugattilist = (ArrayList)processDao.selectBugatti();
	  ArrayList<GraphDto> Maseratilist = (ArrayList)processDao.selectMaserati();
	  ArrayList<GraphDto> BMWlist = (ArrayList)processDao.selectBMW();
	  %>
  window.onload = function () {
    var chart1 = new CanvasJS.Chart("chartContainer",
    {      
        title:{text: "브랜드별 매출"}, animationEnabled: true,
        axisY :{includeZero: false, prefix: "w"},
        toolTip: {shared: true,
        	content: "<span style='\"'color: {color};'\"'><strong>{name}</strong></span> <span style='\"'color: dimgrey;'\"'>${m}</span> "
        },
        legend: {
            fontSize: 13
        },
        data: [
        {        
            type: "splineArea", 
            showInLegend: true,
            name: "Aston Martin",
            color: "rgba(54,158,173,.6)",
            dataPoints: [
			{x: new Date(2016, 7, 20), y: 0},
            <%
            for(GraphDto s:martinlist){
            %>
            {x: new Date(<%=s.getOutdate()%>), y: <%=s.getR_total()%>},
            <%
            }
			%>
            ]
        },
        {        
            type: "splineArea", 
            showInLegend: true,
            name: "Lamborghini",        
            color: "rgba(134,180,2,.7)",
            dataPoints: [
			{x: new Date(2016, 7, 20), y: 0},
            <%
            for(GraphDto l:Lamborghinilist){
            %>
            {x: new Date(<%=l.getOutdate()%>), y: <%=l.getR_total()%>},
            <%
            }
			%>
            ]
        },
        {        
            type: "splineArea", 
            showInLegend: true,
            name: "Bugatti",
            color: "rgba(194,70,66,.6)",        
            dataPoints: [
			{x: new Date(2016, 7, 20), y: 0},
            <%
            for(GraphDto l:Bugattilist){
            %>
            {x: new Date(<%=l.getOutdate()%>), y: <%=l.getR_total()%>},
            <%
            }
			%>

            ]
        },
        {        
            type: "splineArea", 
            showInLegend: true,
            name: "Maserati",
            color: "rgba(127,96,132,.6)",        
            dataPoints: [
            {x: new Date(2016, 7, 20), y: 0},
            <%
            for(GraphDto l:Maseratilist){
            %>
            {x: new Date(<%=l.getOutdate()%>), y: <%=l.getR_total()%>},
            <%
            }
			%>
            ]
        },
        {        
            type: "splineArea", 
            showInLegend: true,
            name: "BMW",
            color: "rgba(127,96,132,.6)",        
            dataPoints: [
            {x: new Date(2016, 7, 20), y: 0},
            <%
            for(GraphDto l:BMWlist){
            %>
            {x: new Date(<%=l.getOutdate()%>), y: <%=l.getR_total()%>},
            <%
            }
			%>
            ]
        }    

        ]
    });

  
chart1.render();
}
</script>

</head>
<body>
<%@ include file = "a_top.jsp" %>
<%
int count = processDao.visitCount();
int reser = processDao.reserCount();
int total = processDao.monthTotal();
DecimalFormat df = new DecimalFormat("#,##0.0");
%>

<!-- 메인 현황(처음) -->
<div id="main-stats">
	<div class="row stats-row">
		<div class="col-md-4 col-sm-4 stat">
			<div class="data">
				<span class="number"><%=count%></span>users
			</div>
			<span class="date">오늘날짜</span>
			
		</div>
		<div class="col-md-4 col-sm-4 stat">
			<div class="data">
				<span class="number"><%=reser%></span>주문
			</div>
			<span class="date">주간 주문 현황</span>
		</div>
		<div class="col-md-4 col-sm-4 stat last">
			<div class="data">
				<span class="number">
				
				<fmt:formatNumber value="<%=total %>" pattern="#,##0"/>
				</span>
				원
			</div>
			<span class="date">최근 한달간 매출</span>
		</div>
	</div>
</div>
<!-- 메인 현황(끝) -->


<%
ArrayList<IndexlistDto> outlist = (ArrayList)processDao.selectOutlist();
%>
오늘 출고 차량
<table class="bordered highlight">
	<thead>
	<tr>
		<th data-field="id">주문자 명</th>
		<th data-field="name">주문 차량</th>
		<th data-field="out">출고시간</th>
		<th data-field="price">대여 가격</th>
	</tr>
	</thead>
	<tbody>
		<%
		for(IndexlistDto l:outlist){
		%>
		<tr>
			<td><%=l.getC_name()%></td>
			<td><%=l.getV_brand()%>-<%=l.getV_name()%></td>
			<td><%=l.getR_out()%></td>
			<td><fmt:formatNumber value="<%=l.getR_total()%>" pattern="#,##0"/></td>
		</tr>
		<%
		}
		%>
	</tbody>
</table>
<br>

<!-- 차트출력 -->
<div id="chartContainer" style="height: 300px; width: 100%;"></div>

<div class="container">
	<div class="row">
		<div class="col s4 offset-s2">
			
		</div>
		<div class="col s4 offset-s2">
			
		</div>
	</div>	
</div>

<%@ include file = "a_bottom.jsp" %>

</body>
</html>

