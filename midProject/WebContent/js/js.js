$(document).ready(function() {
   $("#update").click(function(){
      location.href="c_myinfoedit.jsp"
   });
   $(".modal-trigger").leanModal();
   $('select').material_select();
});


function funcLogin(){
   
   if(loginFrm.id.value === ""){
      alert("id 입력해주세요");
      loginFrmid.focus();
   }else if(loginFrm.passwd.value === ""){
      alert("비번 입력");
      loginFrm.passwd.focus();
   }else{
      loginFrm.action = "c_loginproc.jsp";      
      loginFrm.method="post";
      loginFrm.submit();
   }   
}
function funcAlogin(){
   
   if(loginFrm.id.value === ""){
      alert("id 입력해주세요");
      loginFrmid.focus();
   }else if(loginFrm.pw.value === ""){
      alert("비번 입력");
      loginFrm.pw.focus();
   }else{
      loginFrm.action = "a_loginproc.jsp";
      loginFrm.method="post";
      loginFrm.submit();
   }
}
function funcNew(){
   location.href="c_join.jsp";
}
function funchome(){
   location.href="../index.jsp";
}
function zipCheck(){
   url = "c_zipcheck.jsp?check=y"
   window.open(url,"zip","toolbar=no,width=450,height=300,top=200,left=300,status=yes,scrollbars=yes,menubar=no");
}

function a_memberEdit(C_no){   
      //alert(C_no);
      location.href="#modal_detail";
   }

function dongCheck(){
   alert("1");
   if(zipForm.area3.value === ""){
      alert("검색할 동이름을 입력하시오");
      zipForm.area3.focus();
      return;
   }
   zipForm.submit();
}
function send(zipcode, area1, area2, area3, area4){
//alert(zipcode + " " + area1);
opener.document.regForm.c_zip.value = zipcode;
var addr = area1 + " " + area2 + " "  + area3 + " " + area4;
opener.document.regForm.c_addr.value = addr;
window.close();
}
function rentday(){
   var rentDate = new Date((document.getElementById("out").value));
   var today = new Date();
   
   if(rentDate.getDate() < today.getDate()){
      document.getElementById("out").value ="";
      alert("오늘 이전 날짜는 선택하실 수 없습니다.");
      
   };
}