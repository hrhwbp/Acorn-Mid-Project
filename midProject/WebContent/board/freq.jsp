<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
   rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"
   media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript"
   src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script>
   $(document).ready(function() {
      $('.collapsible').collapsible({
         accordion : false      
      });
    $('ul.tabs').tabs('select_tab', 'support');
   });
</script>

<style type="text/css">
   html,body { 
   height: 100%; 
   margin: 0; 
   padding: 0;
   background-color: black; 
   }
 
#container {
	min-height: 100%; 
	position: relative;
	padding-bottom: 50px;
}
 
#container #header {
	height: 70px;
	background-color: white;
}
 
#container #content {
	
	
}
 
#container #footer {
	height: 50px;
	position: absolute;
	bottom: 0;
	width: 100%;

	background-color: silver;
}

.collapsible-body {
	background-color: white;
}
</style>
</head>
<body>
   <div id="container">
   <jsp:include page="../index/top_index.jsp" />
   <table width="100%" ><tr><td>
      
   <div class="row">
      <div class="col s12">This div is 12-columns wide</div>
      
      <div class="col s6 push-s6" style="width: 50%;"><span class="flow-text">
      
        <ul class="collapsible popout" data-collapsible="accordion">
    <li>
      <div class="collapsible-header"><i class="material-icons">filter_drama</i>First</div>
      <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons">place</i>Second</div>
      <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons">whatshot</i>Third</div>
      <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
    </li>
  </ul>
      
      </span>
      </div>
      <div class="col s6 pull-s6" style="width: 50%;"><span class="flow-text">
      
           <ul class="collapsible popout" data-collapsible="accordion">
    <li>
      <div class="collapsible-header"><i class="material-icons">filter_drama</i>First</div>
      <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons">place</i>Second</div>
      <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons">whatshot</i>Third</div>
      <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
    </li>
  </ul>
     
     </span>
      </div>
    </div> 
   <div class="row">
      <div class="col s7 push-s5"><span class="flow-text">This div is 7-columns wide on pushed to the right by 5-columns.</span></div>
      <div class="col s5 pull-s7"><span class="flow-text">5-columns wide pulled to the left by 7-columns.</span></div>
    </div>
         
         d
         d
         d
         d
         d
         
   </td></tr>
   
   
   </table>
   <pre>
   d
   d
   d
   d
   d
   d
   d
   d
   d
   
   d
   </pre>
   <div id="footer">
   <jsp:include page="../index/bottom_index.jsp" />
   </div>
   </div>
   <script type="text/javascript"
      src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
   <script type="text/javascript" src="../js/materialize.min.js"></script>
</body>
</html>