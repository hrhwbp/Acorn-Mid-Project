<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script type="text/javascript">
   $(document).ready(function() {
     $('.collapsible').collapsible({
         accordion : false,
     });
   });
      
</script>
<style type="text/css">
   html,body { 
   height: 100%; 
   margin: 0; 
   padding: 0;
   
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
   magin:3px;
   
}
 
#container #footer {
   height: 120px;  
   position: absolute;
   bottom: 0;
   width: 100%;
   

   background-color: silver;
}

.collapsible-body {
   background-color: white;
}

.collapsible-header{
   color: #9999ff;
}

.bim {
   font: bold; 
   color: #ccccff;
   

   

</style>
</head>
<body>
   <div id="container">
   <jsp:include page="../index/top_index.jsp" />
   <table width="100%" ><tr><td>
      
   <div class="row">
        <h3>자주 묻는 문의사항</h3>
      
      <div class="col s6 push-s6" style="width: 50%;"><span class="flow-text">
      
        <ul class="collapsible popout" data-collapsible="accordion">
    <li>
      <div class="collapsible-header"><i class="material-icons">credit_card</i>면책금이 무엇인가요?</div>
      <div class="collapsible-body"><p>면책금은 렌트 기간 동안 발생한 손상에 대하여 고객님이 지불하셔야 할 최대 금액입니다. 대부분의 경우 카운터 직원은 차량 인수시 이 면책금을 디포짓으로 가승인합니다.
‘손상 면책금’ (주로 '손상부담금'으로 불리움)은 차체 손상시 고객님께서 지불하여야 하는 최대 비용입니다
‘도난 면책금’ 은 차량 도난 ? 또는 도난 시도 과정에서 발생한 수리 또는 교체 비용으로 고객님께서 지불하여야 하는 최대 비용 입니다.
만약 손해 면책금이 ￡400이면, ￡1,000 상당의 차체 손상이 발생한 경우, 고객님은 ￡400를 지불하십니다? 차량 자기부담금 정책에 따라 ￡600는 처리됩니다.</p></div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons">whatshot</i>배흠이는 잘생겼나요?</div>
      <div class="collapsible-body"><p>글쎄요~ </p></div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons">input</i>내차에 갔을 때 무엇을 해야 하나요?</div>
      <div class="collapsible-body"><p>차량 픽업 장소를 떠나기 전에 차의 상태를 면밀하게 확인하시기 바랍니다 . 헤드라이트, 위험 요소, 앞유리 와이퍼, 도어 장금장치, 스페어 타이어 등을 현지 업체 직원과 함께 살펴보시기 바랍니다. 
기존에 있던 차량의 긁힌 부분이나 찌그러진 부분은 미리 기록해 두셔서, 차량 반납 시 혼선이 생기지 않도록 하시기 바랍니다. 차량 인수 전/ 반납 후에 사진을 찍어 두는 것이 도움이 될 수 있습니다.</p></div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons">input</i>어떻게 반납시 추가비용을 피할 수 있나요?</div>
      <div class="collapsible-body"><p>대여 차량은 반드시 바우처 상에 정해진 시간, 날짜에 반납 해 주시기 바랍니다. 그렇지 않을 경우, 현지에서 추가 금액이 발생 할 수 있습니다. 렌탈 동의서를 통해 추가 시간/요일에 대한 요율을 확인 할 수 있습니다.</p></div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons">input</i>결제방법 및 할인</div>
      <div class="collapsible-body"><p>그냥 주세요 ㅇㅇ</p></div>
    </li>
  </ul>
      
      </span>
      </div>
      <div class="col s6 pull-s6" style="width: 50%;"><span class="flow-text">
      
           <ul class="collapsible popout" data-collapsible="accordion">
    <li>
      <div class="collapsible-header"><i class="material-icons">today</i>차를 예약하기 위해 무엇이 필요하나요?</div>
      <div class="collapsible-body"><br>
      차를 예약하기 위해서, 고객님께서는 크레딧 혹은 데빗 카드가 필요합니다. 차를 픽업하는 현장에서 필요한 점을 알려드립니다:고객님의 voucher와 eVoucher에서 차량대여비가 선지불되었다는 것을 확인할 수 있습니다.
주운전자의 신용카드/체크카드는 차량의 보안보증금을 커버할 수 있는 충분한 한도로 준비하여야 합니다.
각 운전자의 결격사유가 없고, 발급받은지 12개월 (업체에 따라 24개월) 이상이거나, 갱신한 경우 픽업 날짜로 부터 1년 혹은 2년 이전에 한 운전 면허증.
고객님의 여권 또는 다른 신분을 보여줄 수 있는 아이디가 차량 픽업시에 필요 합니다.
차량 공급업체들은 각기 다른 조건사항들이 존재합니다, 차를 예약하기 전에 이용약관을 체크해 주시기 바랍니다.</pre>
      </div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons">today</i>차를 예약하기 위해서 필요한 연령대는 어떻게 되나요? </div>
      <div class="collapsible-body"><p>대부분의 자동차 공급업체들은 나이제한이 21살에서 70살 까지 입니다. 만약 25살 아래거나 70 살 이상일 경우, 고객님께는 추가 요금이 발생합니다.</p></div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons">today</i>다른 사람을 위해서 제가 차를 예약 할 수 있나요?</div>
      <div class="collapsible-body"><p>네, 맞습니다. 요구 조건이 충족되도록, 예약을 만드는 동안 빈칸을 채워 주시기 바랍니다.</p></div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons">credit_card</i>신용카드 없이 차를 렌트 할 수 있을까요?</div>
      <div class="collapsible-body"><p>차량을 인수할 때 보증금을 남기셔야 될 것입니다; 약관조항의 "보증금, 자기 부담금과 보호상품"란을 참조하세요. 이 보증금은 고객님께서 차량/혹은 장비의 손상을 보호한 다는 것을 확인합니다.
이는 모든 렌터카회사에서 표준사항이며 일반적으로 주 운전자분의 신용카드에서 그 금액을 막아둡니다. "결제 정보"란에 약관조항은 카드 종류를 알려드릴 것입니다</p></div>
    </li><li>
      <div class="collapsible-header"><i class="material-icons">credit_card</i>결제 방법이 어떻게 되나요?</div>
      <div class="collapsible-body"><p>Rentalcars.com에서는 인터넷 결제가 가능합니다만, 사용가능한 카드는 다음과 같이 한정되어 있습니다: 신용카드,직불카드, Virtual; Prepaid; Post-pay; Switch/Maestro; MasterCard; American Express and Bancomat. 계좌이체와 Direct Debit 가능합니다.</p></div>
    </li>
  </ul>
     
     </span>
      </div>
    </div> 
         
         
   </td></tr>
   
   
   </table>
   <h4>
 
  &nbsp;&nbsp; 어서오세요 ^^ 행복을 전하는 심카입니다. 추가 문의사항은 이메일<a href="">simcar82@simcompany.com</a>을 이용해주세요 </h4>
  &nbsp;&nbsp;&nbsp;&nbsp; 혹은 고객 콜센터로 연락주시면 감사하겠습니다.02-0000-0000 (콜센터 이용가능시간은 09:00 ~ 17:30 입니다.)
  <pre>
  
  
  
  
  
  
  
  
  
  
  
  
  
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