<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Templage 페이지 연습</title>
</head>
<body>
	<%
		String contentpage = request.getParameter("CONTENTPAGE");
	%>

	<table width=500 border=1 cellpadding=2 cellspacing=0>
		<tr>
			<td colspan="2">
				<jsp:include page="top.jsp" flush="false"></jsp:include>
			</td>
		</tr>
		<tr>
			<td width=150 valign="top">
				<jsp:include page="left.jsp" flush="false"></jsp:include>
			</td>
			<td width=350 valign="top">
			<jsp:include page="<%= contentpage %>"></jsp:include>
			</td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="bottom.jsp" flush="false"></jsp:include></td>
		</tr>


	</table>

	<%=contentpage%>

	templateTest.jsp

</body>
</html>
