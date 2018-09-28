<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAD</title>

</head>
<body>
<h1>희망은 무엇일까?</h1><br><br>

<%
String name = (String)session.getAttribute("name");
%>

<b><%= name %></b>님이 생각하는 증오는 무슨 색인가요?<br>
<form action="saveColor.jsp">
<input type="hidden" name="word" value="hate">
<jsp:include page="colorForm.jsp" flush="false"/>
</form>
</body>
</html>
