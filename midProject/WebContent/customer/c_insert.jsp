<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="bean" class="projectpack.business.CustomerDto"></jsp:useBean>
<jsp:setProperty property = "*" name="bean"/>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>    
<%
boolean b = processDao.insertCustomer(bean);
if(b){
response.sendRedirect("c_index.jsp");   
}else{
%>
<script>
history.back();
</script>
<%
}
%>