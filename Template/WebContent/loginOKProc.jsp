<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
loginOK.jsp<br><br>

<b>LOGIN SUCCESS!!!!!</b><br>

<%
String id = request.getParameter("id");
%>

<b><%= id %></b>님의 방문을 환영해요~!<br>
</body>
</html>
