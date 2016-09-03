$(document).ready(function() {
   $("#update").click(function(){
      location.href="c_myinfoedit.jsp"
   });
})

/*window.onload = function(){
   
	//로그인
	document.getElementById("btnLogin").addEventListener("click", funcLogin, false);
	//새 고객등록
	document.getElementById("btnNewMember").addEventListener("click", funcNew, false);
    //메인으로
	document.getElementById("btnHome").addEventListener("click", funchome, false);
    //우편번호 및 주소 검색
	document.getElementById("btnZipFind").onclick = dongCheck;
    //우편번호 검색창 닫기
	document.getElementById("btnZipClose").onclick = function(){
      window.close();
   };
  document.getElementById("btnZip").onclick = zipCheck;
}*/
function funcLogin(){
	
   if(loginFrm.id.value === ""){
      alert("id 입력해주세요");
      loginFrmid.focus();
   }else if(loginFrm.passwd.value === ""){
      alert("비번 입력");
      loginFrm.passwd.focus();
   }else{
      if(loginFrm.id == "customer"){
    	  loginFrm.action = "c_loginproc.jsp";
      }else if(loginFrm.id == "admin"){
    	  loginFrm.action = "a_loginproc.jsp"
      }
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
   location.href="c_center.jsp";
}
function zipCheck(){
   url = "c_zipcheck.jsp?check=y"
   window.open(url,"zip","toolbar=no,width=450,height=300,top=200,left=300,status=yes,scrollbars=yes,menubar=no");
   
   
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