<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <jsp:useBean id="processDao" class="projectpack.business.ProcessDao"></jsp:useBean>
       
<%String r_no = (request.getParameter("r_no"));
boolean b = processDao.deleteReservation(r_no);
   if(b){
      response.sendRedirect("r_confirm.jsp");
   }else{
      %>
      <script>
      alert("삭제 실패");
      location.href="r_confirm.jsp"
      </script>
      
      <%
   }
%>