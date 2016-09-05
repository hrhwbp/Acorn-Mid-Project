
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="processDao" class="projectpack.business.ProcessDao"/>
<jsp:useBean id="qnaDto" class = "projectpack.business.QnaDto"/>

<%
int spage = 1;		//page는 키워드라 사용불가 하기때문에 spage로 사용함
int pageSu = 1;
%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<script type="text/javascript">
window.onload = function(){	
	document.getElementById("btnSearch").onclick = function(){
		if(frm.sword.value == ""){
			frm.sword.focus();
			alert("검색어를 넣어주세요!");
			return;
		}
		//alert(frm.sword.value);
		frm.submit();
	}
}
</script>
<body class="container row">

      <div class="col s12">[<a href="../guest/guest_index.jsp">메인으로</a>]&nbsp;
			[<a href="qna.jsp">최신목록</a>]&nbsp;
			[<a href="boardwrite.jsp">새글작성</a>]&nbsp;
			[<a href="#" onclick = "window.open('admin.jsp','','width=300, height =150, top=200, left=300')">관리자</a>]
			<span class="flow-text"></span></div>

<table style="text-align: center;" >
	<tr>
		<td>
			[<a href="../customer/c_index.jsp">메인으로</a>]&nbsp;
			[<a href="boardlist.jsp">최신목록</a>]&nbsp;
			[<a href="boardwrite.jsp">새글작성</a>]&nbsp;
			[<a href="#" onclick = "window.open('admin.jsp','','width=300, height =150, top=200, left=300')">관리자</a>]
		<br><br>
		<table style="width: 100%;">
			<tr style = "background-color: silver;">
				<th><input type="checkbox" id="chkAll"></th><th>번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>조회수</th>
			</tr>
		<%
		request.setCharacterEncoding("utf-8");
		try{			
			spage = Integer.parseInt(request.getParameter("page"));
		}catch(Exception e){
			spage = 1;
		}
		if(spage <= 0) spage = 1; 
		
		
		//검색이 있는 경우 
		String stype = request.getParameter("stype");
		String sword = request.getParameter("sword");
		
		boardMgr.totalList();
		pageSu = boardMgr.getPageSu();	//전체 페이지 수 얻기
		
		ArrayList<BoardDto> list = boardMgr.getDataAll(spage, stype, sword);	
		
		for(int i = 0; i < list.size(); i++){
			dto = (BoardDto)list.get(i);
		//댓글 들여쓰기 준비=============================
			int nst = dto.getNested();
			String tab = "";
			String icon = "";
			for(int k = 0; k < nst; k++){
				tab += "&nbsp;&nbsp;";
				icon = "<img src = '../image/re.gif'/>";
			}
		//=========================================
		%>
			<tr>
				<td style="width:10%"><input type="checkbox" id="chk"></td>
				<td style="width:10%"><%=dto.getNum()%></td>
				<td style="text-align: left; width:40%">
				<%=tab %><%=icon %><a href="boardcontent.jsp?num=<%=dto.getNum()%>&page=<%=spage%>"><%=dto.getTitle()%></a>
				</td>
				<td style="width:15%"><%=dto.getName()%></td>
				<td style="width:15%"><%=dto.getBdate()%></td>
				<td style="text-align: center; width:10%"><%=dto.getReadcnt()%></td>
			</tr>
		<%
		}
		%>		
		</table>
		<br/>
		<table style="width: 100%;" >
			<tr>
			<td style="text-align: center;">
			<%
			for(int i = 1; i <= pageSu; i++){
				if(i == spage){
					out.print("<b style = 'font-size:14pt; color:red;'>[" + i + "]</b>&nbsp");
			
				}else{
					out.print("<a href = 'boardlist.jsp?page=" + i + "'>[" + i + "]</a>&nbsp");
				}
			}
			%>
			<br/><br/>
			</td>
			</tr>
			<tr>
			<td>
			<form action ="qna.jsp" name = "frm" method = "post">
			 
			<select name="stype">
				<option value="title" selected = "selected">글제목</option>
				<option value="name">작성자</option>
				
			</select>
		
			
			<input type="text" name = "sword" style="height : 13px">
			<input type="button" value ="검색" id = "btnSearch" >
			</form>
			</td>
		</tr>			
	</table>
	</td>
	</tr>
</table>
</body>
</html>