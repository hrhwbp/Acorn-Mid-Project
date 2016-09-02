$(document).ready(function() {
	$("#update").click(function(){
		location.href="c_myinfoedit.jsp"
	});
})

window.onload = function(){
	document.getElementById("btnLogin").addEventListener("click", funcLogin, false);
	document.getElementById("btnNewMember").addEventListener("click", funcNew, false);
	document.getElementById("btnHome").addEventListener("click", funchome, false);
}
function funcLogin(){
	if(loginFrm.id.value === ""){
		alert("id 입력삐용");
		loginFrmid.focus();
	}else if(loginFrm.passwd.value === ""){
		alert("비번 입력");
		loginFrm.passwd.focus();
	}else{
		loginFrm.action = "loginproc.jsp";
		loginFrm.method="post";
		loginFrm.submit();
	}
}
function funcNew(){
	location.href="../member/register.jsp";
}
function funchome(){
	location.href="../index.jsp";
}