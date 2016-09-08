<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="bean" class="projectpack.business.CustomerDto"></jsp:useBean>
<jsp:setProperty property = "*" name="bean"/>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>   
<% 
String imsi = request.getParameter("c_id");
System.out.print(bean.getC_id() + " " + imsi);
boolean b = processDao.updateCustomer(bean);
if(b){
	%>
	<script>
	history.back();
	</script>
	<%
}
else{
	%>
	<script>
	history.back();
	</script>
	<%
}
%>