<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Love</title>

</head>
<body>
<h1>사랑은 무엇일까?</h1><br><br>

<%
String name = request.getParameter("nickName");
session.setAttribute("name", name);
%>

<b><%= name %></b>님이 생각하는 사랑은 무슨 색인가요?<br>
<form action="saveColor.jsp">
<input type="hidden" name="word" value="love">
<jsp:include page="colorForm.jsp" flush="false"/>
</form>
</body>
</html>
