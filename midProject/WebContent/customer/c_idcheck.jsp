<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>
<%
request.setCharacterEncoding("utf-8");
String userID = request.getParameter("userID");
System.out.println(userID);
String str ="";
try{
   boolean b = processDao.id_check(userID);
   if(b == false){
      str = "NO";
      out.print(str);
   }else{
      str = "YES";
      out.print(str);
   }
}catch(Exception e){
   System.out.println("idcheck err : " + e);
}
%>   