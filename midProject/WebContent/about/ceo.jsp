<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CEO 인사</title>
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css" media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<style type="text/css">
@font-face{
font-family: 'Roboto-Light'; src:url('../fonts/roboto/Roboto-Light.ttf')
}
body,#thinfont{
   font-family: Roboto-Light;
}
.section, #ceoimg{
   border-radius: 25px;
   
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
</head>
<body>
<%@include file="../index/top_index.jsp" %>
<div class="container">
   <div class="section">
   <div class="row">
      <h4 class="col offset-s1 offset-l1">
      <blockquote>
          CEO 인사말
      </blockquote>
      </h4>
   </div>
   </div>
   <div class="section" style="background-color: #ffebee;">
      <div class="row s12 l12" style="vertical-align: middle;">
         <div class="col s6 l7 offset-s1 offset-l1" >
            <p id="thinfont" style="font-size: 22px">숨가쁜 일상의 쉼표, 쉼카에 오신것을 환영합니다.</p>
            <p style="font-size: 18px">홈페이지를 방문해 주신 여러분, 진심으로 환영합니다.</p>
            사용자의 마음을 읽는 심카, 세상을 더욱 풍요롭게 만드는 감성 렌터카,
            세계를 향한 심카의 창의적인 도전은 계속됩니다.<br>
            쉼카는 2016년에 설립된
            렌터카 회사로서
            편리함, 즐거움, 안전함의 가치를
            담는 렌탈 시스템을 통해
            더욱 나은 삶의 가치를 창조하고자
            노력하고 있습니다.<br>
            심카는 모든 사용자에게
            편리함을 넘어선 혁신적인 효용을
            제공하는 렌탈 시스템과
            짧은 기간 축적된 서비스로
            사용자에게 여러분에게 허세와 과다한 요금을 제공하고 있습니다.<br>
            국내 국내 렌터카 시장에서 허세와
            럭셔리를 인정받아 0명의
            개인사용자와 정부기관, 교육기관,
            기업을 고객으로 확보하고 있으며,
            적극적인 해외진출을 통해 전 세계
            사용자들에게 풍요로운 허세를 제공하고자 합니다.
         </div>
         <div class="col s3 l2 offset-s1 offset-l1">
            <img id="ceoimg" src="../image/ceo.jpg" style="width: 100%; max-width: 760px; margin-top: 15%">
         </div>
         <div class="col s3 l2 offset-s1 offset-l1 right-align">
            CEO - Sim Jin Young
         </div>
      </div>
   </div>
   <div class="section">
    <ul class="collection with-header">
       <li class="collection-header"><h4>Team</h4></li>
      <li class="collection-item avatar">
         <img src="" alt="" class="circle">
         <span class="title">Team Leader</span>
         <p>Park<br>
            Bae Heum 
         </p>
         <a href="#!" class="secondary-content"><i class="material-icons">email</i></a>
       </li>
       <li class="collection-item avatar">
         <img src="" alt="" class="circle">
         <span class="title">Team Leader</span>
         <p>Park<br>
            Bae Heum 
         </p>
         <a href="#!" class="secondary-content"><i class="material-icons">email</i></a>
       </li>
       <li class="collection-item avatar">
         <img src="" alt="" class="circle">
         <span class="title">Team Leader</span>
         <p>Park<br>
            Bae Heum 
         </p>
         <a href="#!" class="secondary-content"><i class="material-icons">email</i></a>
       </li>
       <li class="collection-item avatar">
         <img src="" alt="" class="circle">
         <span class="title">Team Leader</span>
         <p>Park<br>
            Bae Heum 
         </p>
         <a href="#!" class="secondary-content"><i class="material-icons">email</i></a>
       </li>
     </ul>
     
   </div>
</div>
</body>
<%@ include file="../index/bottom_index.jsp" %>
</html>