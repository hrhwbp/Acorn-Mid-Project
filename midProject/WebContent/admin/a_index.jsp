<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

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
  window.onload = function () {
    var chart1 = new CanvasJS.Chart("chartContainer",
    {      
        title:{text: "월매출"}, animationEnabled: true,
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
            name: "부가티",
            color: "rgba(54,158,173,.6)",
            dataPoints: [
            {x: new Date(2012, 1), y: 30000},
            {x: new Date(2012, 3), y: 35000},
            {x: new Date(2012, 4), y: 30000},
            {x: new Date(2012, 5), y: 30400},
            {x: new Date(2012, 6), y: 20900},
            {x: new Date(2012, 7), y: 31000},
            {x: new Date(2012, 8), y: 30200},
            {x: new Date(2012, 9), y: 30000},
            {x: new Date(2012, 10), y: 33000},
            {x: new Date(2012, 11), y: 38000},
            {x: new Date(2013, 0),  y: 38900},
            {x: new Date(2013, 1),  y: 39000}

            ]
        },
        {        
            type: "splineArea", 
            showInLegend: true,
            name: "마세라티",        
            color: "rgba(134,180,2,.7)",
            dataPoints: [
            {x: new Date(2012, 1), y: 20100},
            {x: new Date(2012, 3), y: 16000},
            {x: new Date(2012, 4), y: 14000},
            {x: new Date(2012, 5), y: 18000},
            {x: new Date(2012, 6), y: 18000},
            {x: new Date(2012, 7), y: 21000},
            {x: new Date(2012, 8), y: 22000},
            {x: new Date(2012, 9), y: 25000},
            {x: new Date(2012, 10), y: 23000},
            {x: new Date(2012, 11), y: 25000},
            {x: new Date(2013, 0), y: 26000},
            {x: new Date(2013, 1), y: 25000}

            ]
        },
        {        
            type: "splineArea", 
            showInLegend: true,
            name: "포르쉐",
            color: "rgba(194,70,66,.6)",        
            dataPoints: [
            {x: new Date(2012, 1), y: 10100},
            {x: new Date(2012, 3), y: 6000},
            {x: new Date(2012, 4), y: 3400},
            {x: new Date(2012, 5), y: 4000},
            {x: new Date(2012, 6), y: 9000},
            {x: new Date(2012, 7), y: 3900},
            {x: new Date(2012, 8), y: 4200},
            {x: new Date(2012, 9), y: 5000},
            {x: new Date(2012, 10), y: 14300},
            {x: new Date(2012, 11), y: 12300},
            {x: new Date(2013, 0), y: 8300},
            {x: new Date(2013, 1), y: 6300}

            ]
        },
        {        
            type: "splineArea", 
            showInLegend: true,
            name: "람보르기니",
            color: "rgba(127,96,132,.6)",        
            dataPoints: [
            {x: new Date(2012, 1), y: 1700},
            {x: new Date(2012, 3), y: 2600},
            {x: new Date(2012, 4), y: 1000},
            {x: new Date(2012, 5), y: 1400},
            {x: new Date(2012, 6), y: 900},
            {x: new Date(2012, 7), y: 1000},
            {x: new Date(2012, 8), y: 1200},
            {x: new Date(2012, 9), y: 5000},
            {x: new Date(2012, 10), y: 1300},
            {x: new Date(2012, 11), y: 2300},
            {x: new Date(2013, 0), y: 2800},
            {x: new Date(2013, 1), y: 1300}

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

<!-- 메인 현황(처음) -->
<div id="main-stats">
	<div class="row stats-row">
		<div class="col-md-4 col-sm-4 stat">
			<div class="data">
				<span class="number">3240</span>users
			</div>
			<span class="date">오늘날짜</span>
		</div>
		<div class="col-md-4 col-sm-4 stat">
			<div class="data">
				<span class="number">322</span>주문
			</div>
			<span class="date">주간 주문 현황</span>
		</div>
		<div class="col-md-4 col-sm-4 stat last">
			<div class="data">
				<span class="number">2,340,000</span>
			</div>
			<span class="date">한달간 매출현황</span>
		</div>
	</div>
</div>
<!-- 메인 현황(끝) -->



주문 현황**
<table class="bordered highlight">
	<thead><tr><th data-field="id">주문자 명</th><th data-field="name">주문 차량</th><th data-field="price">대여 가격</th></tr></thead>
	<tbody>
<% 

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
















