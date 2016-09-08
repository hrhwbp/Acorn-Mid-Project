<%@page import="java.util.HashMap"%>
<%@page import="projectpack.business.QnaDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="qnaDto" class="projectpack.business.QnaDto" />
<jsp:useBean id="processDao" class = "projectpack.business.ProcessDao"/>
<% 
int spage = 1;
int pageSu = 1;
request.setCharacterEncoding("utf-8"); %>
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

$(document).ready(function(){
    
    $('.modal-trigger').leanModal();
  });
          </script>
<style type="text/css">
   html,body { 
   height: 100%; 
   margin: 0; 
   padding: 0;
   background-color: gray; 
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
   <table style=" width:60%; margin-top : 3%; margin-left : 70%">
  <%if(session.getAttribute("c_id") != null){ %>
   <tr><td><a href="#" style="color:white">새글작성</a></td></tr></table>
    <%} %>
   <table class ="bordered" style="width:60%; margin-left : 20%; color:white">
        <thead>
          <tr>
              <th style="width:5%; text-align: center">no</th>
              <th style="width:60%; ">제목</th>
              <th style="text-align: center">글쓴이</th>
              <th style="text-align: center">등록일</th>
              <th style="width:6%; text-align: center">조회</th>
          </tr>
        </thead>
      <tbody>
      <% 
       try{
         spage = Integer.parseInt(request.getParameter("page"));
         
         }catch(Exception e){
            spage=1;
         }
        if(spage <= 0) spage = 1;
      ArrayList<QnaDto> list = (ArrayList)processDao.selectQnaAll();
      
      pageSu = (list.size() / 8 ) + 1;
      try{   
      for(int i = 0 + (spage-1)*8; i <8 + (spage-1)*8 ; i++){
         
         
         
      %>
      
          <tr>
           <td style="text-align: center"><%=list.get(i).getB_no() %></td>
           <%
           if(list.get(i).getB_ans() != null){%>
           <td><i class="tiny material-icons" style="color:white">question_answer</i><a href="#qna_detail<%=list.get(i).getB_no() %>" class= "modal-trigger" style="color:white"><%=list.get(i).getB_title() %></a></td>
           <%}else{%>
           <td><a href="#qna_detail<%=list.get(i).getB_no() %>" class= "modal-trigger" style="color:white"><%=list.get(i).getB_title() %></a></td>
           <%}%>
           <td  style="text-align: center"><%=list.get(i).getC_name() %></td>
           <td  style="text-align: center"><%=list.get(i).getB_date() %></td>
           <td  style="text-align: center"><%=list.get(i).getB_rcount() %></td>
          </tr>
      
         <div id="qna_detail<%=list.get(i).getB_no()%>" class="row modal">
         <div class="modal-content">
         <div class="row">
         </div>
         <div class="row">
         <div class="input-field col s2 offset-s1">
         <input disabled value="<%=list.get(i).getB_no() %>" id="disabled" type="text" class="validate">
         <label for="disabled" style="color:black">글번호</label>
         </div>
         <div class="input-field col s3 offset-s1 ">
         <input disabled value="<%=list.get(i).getC_name() %>" id="disabled" type="text" class="validate">
         <label for="disabled" style="color:black">글쓴이</label>
         </div>
         <div class="input-field col s3 offset-s1">
         <input disabled value="<%=list.get(i).getB_date() %>" id="disabled" type="text" class="validate">
         <label for="disabled" style="color:black">등록일</label>
         </div>
        </div>
        <div class="row">
         <div class="input-field col s1  offset-s1">
         <input disabled value="글제목" id="disabled" type="text" class="validate">
         </div>
         <div class="input-field col s9">
         <input disabled value="<%=list.get(i).getB_title() %>" id="disabled" type="text" class="validate">
         </div>
         </div>
        <div class="row">
         <div class="input-field col s1  offset-s1">
         <input disabled value="글내용" id="disabled" type="text" class="validate">
         </div>
         <div class="input-field col s9">
         <input disabled value="<%=list.get(i).getB_content() %>" id="disabled" type="text" class="validate">
         </div>
        </div>
        <%if(list.get(i).getB_ans() != null){%>
        <div class="row">
         <div class="input-field col s1  offset-s1">
         <input disabled value="답변" id="disabled" type="text" class="validate">
         </div>
         <div class="input-field col s9">
         <input disabled value="<%=list.get(i).getB_ans() %>" id="disabled" type="text" class="validate">
         </div>
        </div>
        </div>
        <%} %>
        <div class="modal-footer">
         <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">닫기</a>
         <%
         if(session.getAttribute("c_id") != null){
            HashMap<String, String> map = new HashMap<String,String>();
            map.put("c_name",list.get(i).getC_name());
            map.put("c_id",list.get(i).getC_id());
            boolean b = processDao.selectQnaupdateyn(map);
            
            if(b){ %>
           
            <a href="#qnadelete<%=list.get(i).getB_no() %>" class="modal-trigger">삭제</a>
            
            <%}} %>
    </div>
     <div id="qnadelete<%=list.get(i).getB_no() %>" class="modal">
    <div class="modal-content">
      <h4>정말 삭제하시겠습니까?</h4>
      
    </div>
    <div class="modal-footer">
      <a href="qnadeleteproc.jsp?b_no=<%=list.get(i).getB_no() %>" class=" modal-action modal-close waves-effect waves-green btn-flat">예</a>
      <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">아니오</a>
      
    </div>
  </div>
      </div>
      
         <%}
      }
      catch(Exception e){
      %>
      
      <%
      }
         %> 
        </tbody>
      </table>
         
     <table style=" width:100%; margin-top : 2%">
     <tr >
     <td style="text-align:center">
     <%
            for(int i = 1; i <= pageSu ; i++){
               if(i == spage){
            out.print("<b style='font-size : 12pt; color:red;'>" + i + "</b>" );   
               }
               else{
                  out.print("<a href = 'qna.jsp?page="+ i +"'  style='color:white'>[" + i + "]</a>" );
               }
            }
            %>
     </td>
     </tr>
     
     </table>
   <div id="footer">
   <jsp:include page="../index/bottom_index.jsp" />
   </div>
   </div>
   <script type="text/javascript"
      src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
   <script type="text/javascript" src="../js/materialize.min.js"></script>
</body>
</html>