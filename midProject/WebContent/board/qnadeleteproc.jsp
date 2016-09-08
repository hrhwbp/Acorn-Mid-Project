<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <jsp:useBean id="processDao" class="projectpack.business.ProcessDao"></jsp:useBean>
       
<%int b_no= Integer.parseInt(request.getParameter("b_no"));
   boolean b = processDao.deleteQna(b_no);
   if(b){
      response.sendRedirect("qna.jsp");
   }else{
      %>
      <script>
      alert("삭제 실패");
      location.href="qna.jsp"
      </script>
      
      <%
   }
%>