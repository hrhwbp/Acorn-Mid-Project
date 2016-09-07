<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="dto" class="projectpack.business.VehicleDto"/>
<jsp:setProperty property="*" name="dto"/>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>

<% 
String flag = request.getParameter("flag");


System.out.println(dto.getV_no() + " " + dto.getV_brand() + " " +dto.getV_name() + " " +dto.getV_price() + " " +
dto.getV_type() + " " +dto.getV_count() + " " + dto.getV_avail() + " " + dto.getV_status());

boolean b = false;
if(flag.equals("insert")){
	b = processDao.insertVehicle(dto);
}else if(flag.equals("update")){
	b = processDao.updateVehicle(dto);
}else if(flag.equals("delete")){
			b = processDao.deleteVehicle(request.getParameter("v_no"));	
}else{
	response.sendRedirect("../admin/a_vMgt.jsp");
}
	
if(b){
%>	
	<script>
		//alert("된다")
		location.href="../admin/a_vMgt.jsp";
	</script>
<%
}else{ 
%>	
	<script>
		//alert("안된다")
		location.href="../admin/a_vMgt.jsp";
	</script>	
<%
}
%>


















